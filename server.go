package main

import (
  "fmt"
  "flag"
  "time"
  "os"
  "os/signal"
  "os/exec"
  "regexp"
  "syscall"
  "crypto/md5"
  "encoding/hex"
  "path/filepath"
  "gopkg.in/ryankurte/go-async-cmd.v1"
)

func check(e error) {
  if e != nil {
    panic(e)
  }
}

func reSubMatchMap(r *regexp.Regexp, str string) (map[string]string) {
  match := r.FindStringSubmatch(str)
  subMatchMap := make(map[string]string)
  for i, name := range r.SubexpNames() {
    if i != 0 {
      subMatchMap[name] = match[i]
    }
  }

  return subMatchMap
}


func MD5(text string) string {
  hasher := md5.New()
  hasher.Write([]byte(text))
  return hex.EncodeToString(hasher.Sum(nil))
}

func fileExists(filename string) bool {
  info, err := os.Stat(filename)
  if os.IsNotExist(err) {
    return false
  }
  return !info.IsDir()
}

func fileDoesNotExist(filename string) bool {
  return !fileExists(filename)
}

func latexFromSnippet(snippet string) string {
  preamble :=
`\documentclass[crop,tikz,dvisvgm]{standalone}
\usepackage{preamble}
\usepackage{topos}
\begin{document}`
  postamble := `\end{document}`
  return preamble + snippet + postamble;
}

func processMarkdown(force bool, markdown string) bool {
  changed := false

  left := "{{<latex>}}"
  right := "{{</latex>}}"
  rx := regexp.MustCompile(`(?s)` + regexp.QuoteMeta(left) + `(.*?)` + regexp.QuoteMeta(right))
  allSubmatches := rx.FindAllStringSubmatch(markdown, -1)

  for _, res := range allSubmatches {
    body := res[1]
    hash := MD5(body)

    dir := "assets/latex/"
    relTeXFileName := hash + ".tex"
    relDviFileName := hash + ".dvi"
    relSvgFileName := hash + ".svg"

    if force || fileDoesNotExist(dir + relTeXFileName) {
      texFile, err := os.Create(dir + relTeXFileName)
      defer texFile.Close()
      check(err)

      tex := latexFromSnippet(body)
      texFile.WriteString(tex)
      texFile.Sync()
      changed = true
    }

    if force || fileDoesNotExist(dir + relDviFileName) {
      fmt.Printf("- compiling %v.dvi\n", hash)
      latexCmd := exec.Command("latex", relTeXFileName)
      latexCmd.Dir = dir
      latexCmd.Run()
      changed = true
    }

    if force || fileDoesNotExist(dir + relSvgFileName) {
      fmt.Printf("- compiling %v.svg\n", hash)
      dvisvgmCmd := exec.Command("dvisvgm", "--exact", "--clipjoin", "--bbox=papersize", "--zoom=1.75", relDviFileName)
      dvisvgmCmd.Dir = dir
      dvisvgmCmd.Run()
      changed = true
    }
  }

  return changed
}

func makeHugoCmd() *gocmd.Cmd {
  cmd := gocmd.Command("hugo", "server", "-D", "--ignoreCache", "--disableFastRender")
  cmd.OutputChan = make(chan string)

  go func() {
    line, _ := <-cmd.OutputChan
    fmt.Printf("[hugo] %s", line)
  }()

  return cmd
}


func main() {
  dirPtr := flag.String("dir", "content/lectures", "a directory")
  forceFlagPtr := flag.Bool("force", false, "a bool")
  flag.Parse()

  dir := *dirPtr
  force := *forceFlagPtr;

  hugoCmd := makeHugoCmd()
  channel := make(chan os.Signal, 2)
  signal.Notify(channel, os.Interrupt, syscall.SIGTERM)
  go func() {
    <-channel
    fmt.Println("cleaning up");
    check(hugoCmd.Exit())
    os.Exit(1)
  }()


  check(hugoCmd.Start())
  fmt.Println("started hugo")

  for true {
    files, err := os.ReadDir(dir)
    check(err)

    changed := false
    for _, file := range files {
      path := filepath.Join(dir, file.Name())
      data, err := os.ReadFile(path)
      check(err)
      changed = processMarkdown(force, string(data)) || changed
    }

    force = false

    time.Sleep(time.Second / 4)

    if changed {
      hugoCmd.Exit()
      hugoCmd = makeHugoCmd()
      fmt.Println("killed hugo")
      check(hugoCmd.Start())
      fmt.Println("revived hugo")
    }
  }
}


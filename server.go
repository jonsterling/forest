package main

import (
	"brain/sheafy/hugoserver"
	"crypto/md5"
	"encoding/hex"
	"flag"
	"fmt"
	"os"
	"os/exec"
	"os/signal"
	"path/filepath"

	"strings"
	"syscall"
	"time"

	"github.com/yuin/goldmark"
	meta "github.com/yuin/goldmark-meta"
	"github.com/yuin/goldmark/ast"
	"github.com/yuin/goldmark/text"
)

func check(e error) {
	if e != nil {
		panic(e)
	}
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

func latexFromSnippet(snippet string, macroPackages []string) string {
	latex := `\documentclass[crop,tikz,dvisvgm]{standalone}`
	latex += `\usepackage{preamble}`
	for _, pkg := range macroPackages {
		latex += `\usepackage{` + pkg + `}`
	}
	latex += `\begin{document}`
	latex += snippet
	latex += `\end{document}`
	return latex
}

func processSource(source []byte, handleTeX func(metadata map[string]interface{}, code string)) {
	markdown := goldmark.New(
		goldmark.WithExtensions(
			meta.New(
				meta.WithStoresInDocument(),
			),
		),
	)

	document := markdown.Parser().Parse(text.NewReader(source))
	metadata := document.OwnerDocument().Meta()

	ast.Walk(document, func(n ast.Node, entering bool) (ast.WalkStatus, error) {
		if entering {
			return ast.WalkContinue, nil
		}

		if n.Kind() == ast.KindFencedCodeBlock {
			strs := []string{}
			lines := n.Lines()
			for i := 0; i < lines.Len(); i++ {
				seg := lines.At(i)
				strs = append(strs, string(seg.Value(source)))
			}
			code := strings.Join(strs, "")
			handleTeX(metadata, code)
		}
		return ast.WalkContinue, nil
	})
}

func extractAndWriteImages(force bool, source []byte) bool {
	changed := false

	processSource(source, func(metadata map[string]interface{}, code string) {
		hash := MD5(strings.TrimSuffix(code, "\n"))
		dir := "assets/latex/"
		relTeXFileName := hash + ".tex"
		relDviFileName := hash + ".dvi"
		relSvgFileName := hash + ".svg"

		if force || fileDoesNotExist(dir+relTeXFileName) {
			fmt.Printf("- emitting %v.tex\n", hash)
			texFile, err := os.Create(dir + relTeXFileName)
			check(err)
			defer texFile.Close()

			packages := []string{}
			packagesData, packagesPresent := metadata["packages"]
			if packagesPresent {
				packagesArray, packagesArrayOk := packagesData.([]interface{})
				if packagesArrayOk {
					for _, datum := range packagesArray {
						packages = append(packages, datum.(string))
					}
				} else {
					packageString, packageStringOk := packagesData.(string)
					if packageStringOk {
						packages = append(packages, packageString)
					} else {
						panic("packages field malformed")
					}
				}

			}

			macrolib, macrolibPresent := metadata["macrolib"]
			if macrolibPresent {
				packages = append(packages, macrolib.(string))
			}

			tex := latexFromSnippet(code, packages)
			texFile.WriteString(tex)
			texFile.Sync()
			changed = true
		}

		if force || fileDoesNotExist(dir+relDviFileName) {
			fmt.Printf("- compiling %v.dvi\n", hash)
			latexCmd := exec.Command("latex", relTeXFileName)
			latexCmd.Dir = dir
			err := latexCmd.Run()
			check(err)
			changed = true
		}

		if force || fileDoesNotExist(dir+relSvgFileName) {
			fmt.Printf("- compiling %v.svg\n", hash)
			dvisvgmCmd := exec.Command("dvisvgm", "--exact", "--clipjoin", "--bbox=papersize", "--zoom=1.75", relDviFileName)
			dvisvgmCmd.Dir = dir
			err := dvisvgmCmd.Run()
			check(err)
			changed = true
		}
	})

	return changed
}

func main() {
	hugo := hugoserver.Server()
	channel := make(chan os.Signal, 2)
	signal.Notify(channel, os.Interrupt, syscall.SIGTERM)
	go func() {
		<-channel
		fmt.Println("cleaning up")
		hugo.Exit()
		os.Exit(1)
	}()

	dirPtr := flag.String("dir", "content/notes", "a directory")
	forceFlagPtr := flag.Bool("force", false, "a bool")
	flag.Parse()

	dir := *dirPtr
	force := *forceFlagPtr

	hugo.Restart()

	for {
		files, err := os.ReadDir(dir)
		check(err)

		changed := false
		for _, file := range files {
			path := filepath.Join(dir, file.Name())
			data, err := os.ReadFile(path)
			check(err)
			changed = extractAndWriteImages(force, data) || changed
		}

		force = false

		time.Sleep(time.Second)

		if changed {
			hugo.Restart()
		}
	}
}

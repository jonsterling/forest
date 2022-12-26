package hugoserver

import (
	"fmt"

	gocmd "gopkg.in/ryankurte/go-async-cmd.v1"
)

type server interface {
	Restart()
	Exit()
}

type impl struct {
	cmd *gocmd.Cmd
}

func (impl *impl) Exit() {
	impl.cmd.Exit()
	fmt.Println("stopped hugo")
}

func (impl *impl) init() {
	impl.cmd = gocmd.Command("hugo", "server", "-D", "--ignoreCache", "--disableFastRender")
	impl.cmd.OutputPrefix = "hugo"
	impl.cmd.ShowOutput = true
	impl.cmd.OutputChan = make(chan string)

	go func() {
		line := <-impl.cmd.OutputChan
		fmt.Printf("%s", line)
	}()
}

func (impl *impl) Restart() {
	if impl.cmd != nil {
		impl.Exit()
	}

	impl.init()
	impl.cmd.Start()
	fmt.Println("started hugo")
}

func Server() server {
	return new(impl)
}

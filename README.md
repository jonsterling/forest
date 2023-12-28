To build this forest, you need to have a working installation of the following software:

- LaTeX, preferably the *full* [TeXLive distribution](https://tug.org/texlive/)

- `forester`, which you can install using `opam install forester`; at times, you may need to build from [source](https://github.com/jonsterling/ocaml-forester) if I haven't released the latest version to opam

Once you have ensured that these programs are installed and in your `PATH`, simply run `./build.sh`. To view the forest, you can open `output/index.xml` in your favorite browser: for Firefox, you may need to set `security.fileuri.strict_origin_policy` to `false` in `about:config`. Alternatively, you can serve the `output` directory from a local webserver to avoid this. If you have a working `python3` installation, you can run `./server.sh` to continuously build and serve the forest from port `1313`.

Alternatively, if you have [`fswatch`](https://github.com/emcrisostomo/fswatch) installed, you can run `./watch.sh` to watch for changes to the `trees` directory and rebuild accordingly.

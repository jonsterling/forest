To build this forest, you need to have a working installation of the following software:

- LaTeX, preferably the *full* [TeXLive distribution]A(https://tug.org/texlive/)

- `forester`, which you can install using `opam install forester`; at times, you may need to build from [source](https://github.com/jonsterling/ocaml-forester) if I haven't released the latest version to opam

Once you have ensured that these programs are installed and in your `PATH`, simply run `./build.sh`. If you have a working `python3` installation, you can run `./build.sh` to continuously build and serve the forest from port `1313`.

### JavaScript dependencies

My forest has a small JavaScript component (`javascript/forester.js`), which creates a keyboard command palette. There is no need to have any of the JavaScript or Node ecosystem installed on your machine; all JavaScript dependencies are kept bundled in source control. If you wish to *upgrade* this bundle, you will need to have a working installation of `npm`, and then run `./bundle-js.sh` and commit the resulting changes. It is not ordinarily necessary to do this.


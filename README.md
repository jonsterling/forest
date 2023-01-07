Requirements:

- [Hugo](https://gohugo.io/installation/)
- [forester](https://sr.ht/~jonsterling/forester/)
- A LaTeX distribution such as [TeX Live](https://www.tug.org/texlive/)

Building:

```bash
# Convert LaTeX blocks to SVG and compute dependency graph
forester -active-fence render-latex -input content/trees/

# Run Hugo to build and serve the static site
hugo server
```

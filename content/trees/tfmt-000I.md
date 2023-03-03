---
title: the quiver interactive diagramming tool
author:
- Jonathan Sterling
date: 2023-01-07T13:15:11+01:00
---

The [quiver](https://q.uiver.app/) application is an excellent graphical interface for interactively constructing commutative diagrams, with very high-quality rendering.

One positive aspect of quiver is that it is possible to load it with [your own macro library](tfmt-000F), so that diagrams involving custom notations render correctly in the graphical interface. The downside of the approach here is that the macro library must be located on a publicly accessible URL that can be pasted into the quiver interface.

Quiver also offers excellent support for embedding the resulting diagrams in existing {#\LaTeX#} documents: after creating your diagram, you can request a {#\LaTeX#} snippet that includes a URL which allows you to resume editing your diagram. For example:

```latex
% https://q.uiver.app/?q=WzAsMixbMCwwLCJBIl0sWzEsMCwiQiJdLFswLDFdXQ==
\[
  \begin{tikzcd}
    A & B
    \arrow[from=1-1, to=1-2]
  \end{tikzcd}
\]
```

**Unfortunately, the support for embedding quiver diagrams in HTML documents is currently inadequate for professional use.** The HTML embed code provided simply produces an `<iframe>` with a very large watermark, and it is not possible to style the interior of the embedded frame (e.g. to change the background color, or decrease the margins):
```html
<!-- https://q.uiver.app/?q=WzAsMixbMCwwLCJBIl0sWzEsMCwiQiJdLFswLDFdXQ== -->
<iframe class="quiver-embed" src="https://q.uiver.app/?q=WzAsMixbMCwwLCJBIl0sWzEsMCwiQiJdLFswLDFdXQ==&embed" width="304" height="176" style="border-radius: 8px; border: none;"></iframe>
```

Therefore, we must conclude that although quiver is an excellent tool for authors of traditional {#\LaTeX#} documents, it is not currently a candidate for inclusion in tools for hypertext mathematical authoring.

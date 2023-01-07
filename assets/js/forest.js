function awaitVisibility(element, callback) {
  var options = {
    root: document.documentElement,
  };

  var observer = new IntersectionObserver((entries, observer) => {
    for (const entry of entries) {
      if (entry.intersectionRatio > 0) {
        callback()
        observer.disconnect()
        break
      }
    }
  }, options);

  observer.observe(element);
}

function renderMathWithMacrosInElement(macros, element) {
  renderMathInElement(element, {
    delimiters: [
      { left: '$$', right: '$$', display: true },
      { left: '$', right: '$', display: false },
      { left: '\\(', right: '\\)', display: false },
      { left: '\\[', right: '\\]', display: true }
    ],
    ignoredClasses: ["math-barrier"],
    throwOnError: false,
    macros: macros
  })
}

function renderMathContentForSlug(macros, slug) {
  // render math in the content element only once it is visible; this is
  // necessary in order to support very large documents.
  const contentElements = document.querySelectorAll(`.post-content[data-slug="${slug}"]`)
  contentElements.forEach((contentElement) => {
    awaitVisibility(contentElement, () => {
      renderMathWithMacrosInElement(macros, contentElement)
    })
  })
}

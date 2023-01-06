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
    throwOnError: false,
    macros: macros
  })
}

function elementContainsMathBarrier(element) {
  if (element.classList.contains('math-barrier')) {
    return true
  }

  for (const child of element.children) {
    if (elementContainsMathBarrier(child)) {
      return true
    }
  }

  return false
}

function renderMathContentForSlug(macros, slug) {
  // render math in the content element only once it is visible; this is
  // necessary in order to support very large documents.
  const contentElements = document.querySelectorAll(`.post-content[data-slug="${slug}"]`)
  contentElements.forEach((contentElement) => {
    awaitVisibility(contentElement, () => {
      const childElements = contentElement.children

      for (const childElement of childElements) {
        if (elementContainsMathBarrier(childElement)) {
          continue
        }

        renderMathWithMacrosInElement(macros, childElement)
      }
    })
  })
}

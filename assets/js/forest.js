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

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
    trust: true,
    strict: false,
    macros: macros
  })
}

function compileKaTeXMacros(macros) {
  const result = {}
  for (const macro of macros) {
    result[`\\${macro.name}`] =
      `\\htmlClass{macro-scope}{\\htmlData{name=${macro.name},origin=${macro.origin || ''}}{${macro.body}}}`
  }
  return result
}



function renderForesterMath(siteData, permalinks, katexMacros, displayMode, code, outer) {
  const inner = outer.querySelector('.forester-math-inner')
  katex.render(code, inner, {
    throwOnError: false,
    macros: katexMacros,
    trust: true,
    strict: false,
    displayMode: displayMode
  })

  const macrosUsed = new Set()
  inner.querySelectorAll('.macro-scope > .enclosing').forEach((span) => {
    const name = span.getAttribute('data-name')
    const origin = span.getAttribute('data-origin')
    const info = siteData[`${origin}.macros`].find((e) => e.name == name)
    macrosUsed.add(info)
  })

  const macroInspector = outer.querySelector('.tooltiptext')
  const macrosUl = document.createElement('ul')
  console.log(macrosUsed)

  if (macrosUsed.size == 0) {
    macroInspector.remove()
  }

  for (const info of macrosUsed) {
    const macroLi = document.createElement('li')

    var demoTeX = `\\${info.name}`
    for (i = 0; i < info.args; i++) {
      demoTeX += `{\\square}`
    }

    const demoHTML = katex.renderToString(demoTeX, {
      throwOnFalse: false,
      macros: katexMacros,
      trust: true,
      strict: false
    })

    const demoSpan = document.createElement('span')
    demoSpan.innerHTML = demoHTML

    const refLink = document.createElement('a')
    refLink.appendChild(document.createTextNode(info.origin))
    refLink.setAttribute('href', permalinks[info.origin])
    refLink.classList.add('slug')

    const macroNamePara = document.createElement('p')
    const macroDocPara = document.createElement('p')
    macroDocPara.classList.add('macro-doc')

    const macroNameSpan = document.createElement('span')
    macroNameSpan.classList.add('macro-name')
    macroNameSpan.appendChild(document.createTextNode(`\\${info.name}`))
    macroNamePara.appendChild(refLink)
    macroNamePara.appendChild(document.createTextNode(' defines '))
    macroNamePara.appendChild(demoSpan.firstChild)
    macroNamePara.appendChild(document.createTextNode(' via '))
    macroNamePara.appendChild(macroNameSpan)
    macroDocPara.appendChild(document.createTextNode(info.doc))

    macroLi.append(macroNamePara)
    if (info.doc) {
      macroLi.append(macroDocPara)
    }
    macrosUl.appendChild(macroLi)
  }

  macroInspector.appendChild(macrosUl)
}

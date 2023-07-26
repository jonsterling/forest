require('ninja-keys');
require('katex');

const autoRenderMath = require('katex/contrib/auto-render');

window.addEventListener("load", (event) => {
  autoRenderMath(document.body)

  const openAllDetailsAbove = elt => {
    while (elt != null) {
      if (elt.nodeName == 'DETAILS') {
        elt.open = true
      }

      elt = elt.parentNode;
    }
  }

  const openDetailsIfAnchorHidden = evt => {
    const link = evt.target.closest('a')
    const selector = link.getAttribute('href')
    const target = document.querySelector(selector)
    openAllDetailsAbove(target)
  }


  [...document.querySelectorAll("[href^='#']")].forEach(
    el => el.addEventListener("click", openDetailsIfAnchorHidden)
  );
});

const ninja = document.querySelector('ninja-keys');

fetch("./forest.json")
  .then((res) => res.json())
  .then((data) => {
    const items = []

    if (window.sourcePath) {
      items.push({
        id: 'edit',
        title: 'Edit current tree in Visual Studio Code',
        section: 'Commands',
        hotkey: "cmd+e",
        handler: () => {
          window.location.href = `vscode://file/${window.sourcePath}`
        }
      })
    }

    for (const addr in data) {
      const item = data[addr]
      const title =
        item.taxon
          ? (item.title ? `${item.taxon} (${item.title})` : item.taxon)
          : (item.title ? item.title : "Untitled")
      const fullTitle = `${title} [${addr}]`
      items.push({
        id: addr,
        title: fullTitle,
        section: 'All Trees',
        handler: () => {
          window.location.href = item.route
        }
      })
    }

    ninja.data = items
  });



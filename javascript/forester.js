import 'ninja-keys';
import 'katex';

import autoRenderMath from 'katex/contrib/auto-render';

function partition(array, isValid) {
  return array.reduce(([pass, fail], elem) => {
    return isValid(elem) ? [[...pass, elem], fail] : [pass, [...fail, elem]];
  }, [[], []]);
}

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

    const editIcon = '<svg xmlns="http://www.w3.org/2000/svg" height="20" viewBox="0 -960 960 960" width="20"><path d="M480-120v-71l216-216 71 71-216 216h-71ZM120-330v-60h300v60H120Zm690-49-71-71 29-29q8-8 21-8t21 8l29 29q8 8 8 21t-8 21l-29 29ZM120-495v-60h470v60H120Zm0-165v-60h470v60H120Z"/></svg>'
    const bookmarkIcon = '<svg xmlns="http://www.w3.org/2000/svg" height="20" viewBox="0 -960 960 960" width="20"><path d="M120-40v-700q0-24 18-42t42-18h480q24 0 42.5 18t18.5 42v700L420-167 120-40Zm60-91 240-103 240 103v-609H180v609Zm600 1v-730H233v-60h547q24 0 42 18t18 42v730h-60ZM180-740h480-480Z"/></svg>'

    if (window.sourcePath) {
      items.push({
        id: 'edit',
        title: 'Edit current tree in Visual Studio Code',
        section: 'Commands',
        hotkey: 'cmd+e',
        icon: editIcon,
        handler: () => {
          window.location.href = `vscode://file/${window.sourcePath}`
        }
      })
    }

    const isTopTree = (addr) => {
      const item = data[addr]
      return item.tags ? item.tags.includes('top') : false
    }

    const addItemToSection = (addr, section, icon) => {
      const item = data[addr]
      const title =
        item.taxon
          ? (item.title ? `${item.taxon}. ${item.title}` : item.taxon)
          : (item.title ? item.title : "Untitled")
      const fullTitle = `${title} [${addr}]`
      items.push({
        id: addr,
        title: fullTitle,
        section: section,
        icon: icon,
        handler: () => {
          window.location.href = item.route
        }
      })
    }

    const [top, rest] = partition(Object.keys(data), isTopTree)
    top.forEach((addr) => addItemToSection(addr, "Top Trees", bookmarkIcon))
    rest.forEach((addr) => addItemToSection(addr, "All Trees", null))

    ninja.data = items
  });



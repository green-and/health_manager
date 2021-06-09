window.addEventListener('load', () => {
  const mouseOver = document.getElementById("user")
  const pullDown = document.getElementById("hidden-list")
  const pullDownList = document.querySelectorAll(".pull-down-list")

  mouseOver.addEventListener('mouseover', () => {
    mouseOver.setAttribute("style", "color:#808080;")
      if (pullDown.getAttribute("style") == "display:block;") {
        pullDown.removeAttribute("style", "display:block;")
      } else {
        pullDown.setAttribute("style", "display:block;")
      }
  })

  mouseOver.addEventListener('mouseout', () => {
    mouseOver.removeAttribute("style", "color:#808080;")
      if (pullDown.getAttribute("style") == "display:block;") {
        pullDown.removeAttribute("style", "display:block;")
      } else {
        pullDown.setAttribute("style", "display:block;")
      }
  })

})
init = ->
  img = document.createElement 'img'
  img.src = "data:image/png;base64,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"
  img.style.position = 'absolute'
  img.style.top = '-1000px'
  img.style.left = '-1000px'
  document.body.appendChild img

  window.onmousemove = (e) ->
    img.style.left = "#{e.clientX + 10}px"
    img.style.top  = "#{document.body.scrollTop + e.clientY + 10}px"

init()

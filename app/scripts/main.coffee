window.onload = -> 
  testMe = -> console.log('TEST: \'Allo \'Allo!')

  # get correct requestAnimationFrame invocation
  window.animate = window.requestAnimationFrame or window.webkitRequestAnimationFrame or wondow.mozRequestAnimationFrame or 
    (callback) -> window.setTimeout callback, 1000/60

  # set up canvas and grab its 2d context
  canvas = document.createElement('canvas')
  document.body.appendChild canvas
  window.keysDown = {}
  width = 400
  height = 600
  canvas.width = width
  canvas.height = height
  window.context = canvas.getContext('2d')
  window.player = new Player(175, 580, 50, 10)
  window.computer = new Player(175, 10, 50, 10)
  window.ball = new Ball(200,300)
  window.addEventListener "keydown", (event) ->
    console.log('Keycode = ' + event.keyCode)
    window.keysDown[event.keyCode] = true
  window.addEventListener "keyup", (event) ->
    delete window.keysDown[event.keyCode]
  testMe() 
  animate(step)

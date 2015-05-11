window.PONG = {}

window.onload = -> 
  startButton = document.getElementById('start-button')
  # get correct requestAnimationFrame invocation
  window.animate = window.requestAnimationFrame or window.webkitRequestAnimationFrame or window.mozRequestAnimationFrame or 
    (callback) -> window.setTimeout callback, 1000/60

  # set up canvas and grab its 2d context
  canvas = document.createElement('canvas')
  document.body.appendChild canvas
  PONG.keysDown = {}
  width = 400
  height = 600
  canvas.width = width
  canvas.height = height
  PONG.context = canvas.getContext('2d')
  PONG.player = new PONG.Player(175, 580, 50, 10)
  PONG.computer = new PONG.Computer(175, 10, 50, 10)
  PONG.ball = new PONG.Ball(200,300)
  window.addEventListener "keydown", (event) ->
    PONG.keysDown[event.keyCode] = true
  window.addEventListener "keyup", (event) ->
    delete PONG.keysDown[event.keyCode]
  startButton.addEventListener "click", (event) ->
    window.animate(PONG.step)

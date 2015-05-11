# Updates all of our objects: the player’s paddle, the computer’s paddle, and the ball. 
# Next it will render those objects. 
# And lastly, it will use requestAnimationFrame to call the step function again:
PONG.step = ->
  PONG.update()
  PONG.render()
  if PONG.computer.score is 21 
    alert "Game Over - Computer Won!"
    PONG.player.score = 0
    PONG.computer.score = 0
  if PONG.player.score is 21 
    alert "Game Over - You Won!"
    PONG.player.score = 0
    PONG.computer.score = 0
  window.animate(PONG.step) unless PONG.computer.score is 21 or PONG.player.score is 21 #play unless someone

PONG.update = ->
  PONG.player.update()
  PONG.computer.update(PONG.ball)
  PONG.ball.update(PONG.player.paddle, PONG.computer.paddle)

# Set background and rectangle size
PONG.render = ->
  PONG.context.fillStyle = "#0074D9"
  PONG.context.fillRect 0,0,400,600
  PONG.player.render()
  PONG.computer.render()
  PONG.ball.render()

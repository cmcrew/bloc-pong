# Updates all of our objects: the player’s paddle, the computer’s paddle, and the ball. 
# Next it will render those objects. 
# And lastly, it will use requestAnimationFrame to call the step function again:
window.step = ->
  update()
  render()
  if computer.score is 21 
    alert "Game Over - Computer Won!"
    player.score = 0
    computer.score = 0
  if player.score is 21 
    alert "Game Over - You Won!"
    player.score = 0
    computer.score = 0
  animate(step) unless computer.score is 21 or player.score is 21 #play unless someone

window.update = ->
  player.update()
  computer.update(ball)
  ball.update(player.paddle, computer.paddle)

# Set background and rectangle size
window.render = ->
  context.fillStyle = "#0074D9"
  context.fillRect 0,0,400,600
  player.render()
  computer.render()
  ball.render()

# Updates all of our objects: the player’s paddle, the computer’s paddle, and the ball. 
# Next it will render those objects. 
# And lastly, it will use requestAnimationFrame to call the step function again:
window.step = ->
  update()
  render()
  animate(step)

window.update = ->
  player.update()
  computer.update(ball)
  ball.update(player.paddle, computer.paddle)

# Set background and rectangle size
window.render = ->
  context.fillStyle = "#FF00FF"
  context.fillRect 0,0,400,600
  player.render()
  computer.render()
  ball.render()

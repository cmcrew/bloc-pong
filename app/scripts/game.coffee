# Updates all of our objects: the player’s paddle, the computer’s paddle, and the ball. 
# Next it will render those objects. 
# And lastly, it will use requestAnimationFrame to call the step function again:
step = ->
  update()
  render()
  animate(step)

update = ->

# Set background and rectangle size
render = ->
  context.fillStyle = "#FF00FF"
  context.fillRect 0,0,width,height
  player.render()
  computer.render()
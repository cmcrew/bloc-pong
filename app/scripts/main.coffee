testMe = -> console.log('TEST: \'Allo \'Allo!')

# get correct requestAnimationFrame invocation
animate = window.requestAnimationFrame or window.webkitRequestAnimationFrame or wondow.mozRequestAnimationFrame or 
  (callback) -> window.setTimeout callback, 1000/60

# set up canvas and grab its 2d context
canvas = document.createElement('canvas')
width = 400
height = 600
canvas.width = width
canvas.height = height
context = canvas.getContext('2d')

# Updates all of our objects: the player’s paddle, the computer’s paddle, and the ball. 
# Next it will render those objects. 
# And lastly, it will use requestAnimationFrame to call the step function again:
step = ->
  update
  render
  animate(step)

update = ->

# Set background and rectangle size
render = ->
  context.fillStyle = "#FF00FF"
  context.fillRect 0,0,width,height

window.onload = -> 
  $(testMe)
  document.body.appendChild canvas
  animate step


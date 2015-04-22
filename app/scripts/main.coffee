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

class Paddle
  constructor: (x,y,width,height) ->
    [@x, @y, @width, @height, @x_speed, @y_speed] = [x, y, width, height, 0, 0]

  render: ->
    context.fillStyle = "#0000ff"
    context.fillRect @x, @y, @width, @height

# Updates all of our objects: the player’s paddle, the computer’s paddle, and the ball. 
# Next it will render those objects. 
# And lastly, it will use requestAnimationFrame to call the step function again:
step = ->
  update()
  render()
  animate(step)

update = ->
  p.x += 5

# Set background and rectangle size
render = ->
  context.fillStyle = "#FF00FF"
  context.fillRect 0,0,width,height
  p.render()

window.onload = -> 
  testMe() # $(document).ready(fn)
  document.body.appendChild canvas
  window.p = new Paddle(2,3,4,5)
  animate(step)

# paddle, player, ball, - define those classes
# game.coffee - step, update, render functions
# create canvas, wire everything together in main.coffee

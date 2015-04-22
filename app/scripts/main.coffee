##-------------------------------------------PADDLE--------------------------------------------##

# class Paddle
#   constructor: (x,y,width,height) ->
#     [@x, @y, @width, @height, @x_speed, @y_speed] = [x, y, width, height, 0, 0]

#   render: ->
#     context.fillStyle = "#0000ff"
#     context.fillRect @x, @y, @width, @height

# ##-------------------------------------------PLAYER--------------------------------------------##

# class Player
#   constructor: (x,y,width,height) ->
#     @paddle = new Paddle(x,y,width,height,0,0)
#     @score = 0

#   render: ->
#     @paddle.render()

# ##-------------------------------------------BALL--------------------------------------------##

# class Ball
#   constructor: (x,y) ->
#     [@x, @y, @x_speed, @y_speed, @radius] = [x,y,0,3,5]

#   render: ->
#     context.beginPath()
#     context.arc(@x, @y, @radius, 2*Math.PI, false)
#     context.fillStyle = "#000"
#     context.fill()

# ##-------------------------------------------GAME--------------------------------------------##

# # Updates all of our objects: the player’s paddle, the computer’s paddle, and the ball. 
# # Next it will render those objects. 
# # And lastly, it will use requestAnimationFrame to call the step function again:
# step = ->
#   update()
#   render()
#   animate(step)

# update = ->

# # Set background and rectangle size
# render = ->
#   context.fillStyle = "#FF00FF"
#   context.fillRect 0,0,width,height
#   player.render()
#   computer.render()
#   ball.render()

##-------------------------------------------MAIN--------------------------------------------##

window.onload = -> 
  testMe = -> console.log('TEST: \'Allo \'Allo!')

  # get correct requestAnimationFrame invocation
  window.animate = window.requestAnimationFrame or window.webkitRequestAnimationFrame or wondow.mozRequestAnimationFrame or 
    (callback) -> window.setTimeout callback, 1000/60

  # set up canvas and grab its 2d context
  canvas = document.createElement('canvas')
  document.body.appendChild canvas
  width = 400
  height = 600
  canvas.width = width
  canvas.height = height
  window.context = canvas.getContext('2d')
  window.player = new Player(175, 580, 50, 10)
  window.computer = new Player(175, 10, 50, 10)
  window.ball = new Ball(200,300)

  testMe() # $(document).ready(fn)
  # document.body.appendChild canvas
  # window.player = new Player(175, 580, 50, 10)
  # window.computer = new Player(175, 10, 50, 10)
  # window.ball = new Ball(200,300)
  animate(step)

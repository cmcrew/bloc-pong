class window.Paddle
  constructor: (x,y,width,height) ->
    [@x, @y, @width, @height, @x_speed, @y_speed] = [x, y, width, height, 0, 0]

  render: ->
    context.fillStyle = "#0000ff"
    context.fillRect @x, @y, @width, @height

  move: (x,y) ->
    @x += x
    @y += y
    @x_speed = x
    @y_speed = y
    if @x < 0 #all the way left
      @x = 0
      @x_speed = 0
    else if @x + @width > 400 #all the way right
      @x = 400 - @width
      @x_speed = 0


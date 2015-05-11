class PONG.Paddle
  constructor: (x,y,width,height) ->
    [@x, @y, @width, @height, @x_speed] = [x, y, width, height, 0]

  render: ->
    PONG.context.fillStyle = "#001f3f"
    PONG.context.fillRect @x, @y, @width, @height

  move: (x) ->
    @x += x
    @x_speed = x
    if @x < 0 #all the way left
      @x = 0
      @x_speed = 0
    else if @x + @width > 400 #all the way right
      @x = 400 - @width
      @x_speed = 0


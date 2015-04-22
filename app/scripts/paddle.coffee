class window.Paddle
  constructor: (x,y,width,height) ->
    [@x, @y, @width, @height, @x_speed, @y_speed] = [x, y, width, height, 0, 0]

  render: ->
    context.fillStyle = "#0000ff"
    context.fillRect @x, @y, @width, @height

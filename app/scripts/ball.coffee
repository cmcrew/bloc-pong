class window.Ball
  constructor: (x,y) ->
    [@x, @y, @x_speed, @y_speed, @radius] = [x,y,0,3,5]

  render: ->
    context.beginPath()
    context.arc(@x, @y, @radius, 2*Math.PI, false)
    context.fillStyle = "#000"
    context.fill()

  update: ->
    @x += @x_speed
    @y += @y_speed

class window.Computer extends Player
  render: ->
    @paddle.render()
    context.font = "16px Avenir"
    context.fillStyle = "#fff"
    context.fillText('Computer: ' + @score, 10, 20)

  update: (ball) ->
    x_pos = ball.x
    diff = -((@paddle.x + (@paddle.width / 2)) - x_pos)
    if diff < -4 then diff = -5
    else if diff > 4 then diff = 5
    @paddle.move(diff, 0)
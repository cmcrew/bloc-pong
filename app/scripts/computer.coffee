class PONG.Computer extends PONG.Player
  render: ->
    @paddle.render()
    PONG.context.font = "16px Avenir"
    PONG.context.fillStyle = "#fff"
    PONG.context.fillText('Computer: ' + @score, 10, 20)

  update: (ball) ->
    x_pos = ball.x
    diff = -((@paddle.x + (@paddle.width / 2)) - x_pos)
    if diff < -4 then diff = -5
    else if diff > 4 then diff = 5
    @paddle.move(diff, 0)
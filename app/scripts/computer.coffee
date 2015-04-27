class window.Computer extends Player
  update: (ball) ->
    x_pos = ball.x
    diff = -((@paddle.x + (@paddle.width / 2)) - x_pos)
    if (diff < 0 and diff < -4) then diff = -5
    else if (diff > 0 and diff > 4) then diff = 5
    @paddle.move(diff, 0)
    # if @paddle.x < 0
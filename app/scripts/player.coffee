class PONG.Player
  constructor: (x,y,width,height) ->
    @paddle = new PONG.Paddle(x,y,width,height,0)
    @score = 0

  render: ->
    @paddle.render()
    PONG.context.font = "16px Avenir"
    PONG.context.fillStyle = "#fff"
    PONG.context.fillText("Player: " + @score, 10, 590)

  update: ->
    for key of PONG.keysDown
      value = Number(key)
      if value == 37 #left arrow
        @paddle.move -4
      else if value == 39 #right arrow
        @paddle.move 4
      else
        @paddle.move 0

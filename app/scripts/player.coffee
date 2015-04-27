class window.Player
  constructor: (x,y,width,height) ->
    @paddle = new Paddle(x,y,width,height,0,0)
    @score = 0

  render: ->
    @paddle.render()

  update: ->
    for key of keysDown
      value = Number(key)
      if value == 37
        @paddle.move -4, 0 #left arrow
      else if value == 39
        @paddle.move 4, 0 #right arrow
      else
        @paddle.move 0,0

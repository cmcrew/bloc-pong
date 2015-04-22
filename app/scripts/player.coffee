class Player
  constructor: (x,y,width,height) ->
    @paddle = new Paddle(x,y,width,height,0,0)
    @score = 0

  render: ->
    @paddle.render()
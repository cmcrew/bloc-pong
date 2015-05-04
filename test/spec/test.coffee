(->
  describe 'Paddle', ->
    describe '#move', ->
      it 'moves right when x speed is positive', ->
        paddle = new Paddle(0,0,10,10)
        paddle.move(5,5)
        expect(paddle.x).to.equal(5)
        expect(paddle.y).to.equal(5)
)()

# grunt config - make grunt serve not have to run simultaneously
# run grunt test - see results in terminal
# make sure the test target runs the coffee target

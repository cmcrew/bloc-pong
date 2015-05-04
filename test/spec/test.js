/* global describe, it */

(function () {
  'use strict';

  describe('Paddle', function () {
    describe('#move', function () {
      it('moves right when x speed is positive', function () {
        var paddle = new Paddle(0,0,10,10);
        paddle.move(5,5);
        expect(paddle.x).to.equal(5);
        expect(paddle.y).to.equal(5);
      });
    });
  });
})();

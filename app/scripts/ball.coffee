class window.Ball
  constructor: (x,y) ->
    [@x, @y, @x_speed, @y_speed, @radius] = [x,y,0,3,5]

  render: ->
    context.beginPath()
    context.arc(@x, @y, @radius, 2*Math.PI, false)
    context.fillStyle = "#000"
    context.fill()

  update: (paddle1, paddle2) ->
    @x += @x_speed
    @y += @y_speed
    [top_x, top_y, bottom_x, bottom_y] = [@x-5, @y-5, @x+5, @y+5]

    if @x - 5 < 0 then [@x, @x_speed] = [5, -@x_speed] #hitting left wall
    else if @x+5 > 400 then [@x, @x_speed] = [395, -@x_speed] #hitting right wall

    if @y < 0 
      #a point was scored by player
      [@x, @y, @x_speed, @y_speed] = [200,300,0,3]
      player.score += 1
      console.log("Player score is: " + player.score)
    else if @y > 600
     #a point was scored by computer
     [@x, @y, @x_speed, @y_speed] = [200,300,0,3]
     computer.score += 1
     console.log("Computer score is: " + computer.score)

    if top_y > 300
      if top_y < (paddle1.y + paddle1.height) and bottom_y > paddle1.y and top_x < (paddle1.x + paddle1.width) and bottom_x > paddle1.x
        #hit the player's paddle
        @y_speed = -3
        @x_speed += (paddle1.x_speed / 2)
        @y += @y_speed
    else
      if(top_y < (paddle2.y + paddle2.height) and bottom_y > paddle2.y and top_x < (paddle2.x + paddle2.width) and bottom_x > paddle2.x)
        #hit the computer's paddle
        @y_speed = 3
        @x_speed += (paddle2.x_speed / 2)
        @y += @y_speed

function InitColors()
  player_color = {}
  RandomizeColor(player_color)
  player_color.a = 1
  
  wall_color = {}
  RandomizeColor(wall_color)
  wall_color.a = 1
end

function RandomizeColor(color)  
  color.r = love.math.random()
  color.g = love.math.random()
  color.b = love.math.random()
end

function RandomizeColors()  
  RandomizeColor(player_color)
  RandomizeColor(wall_color)
end

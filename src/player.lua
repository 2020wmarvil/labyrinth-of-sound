Player = Object:extend()

function Player:new()  
  self.x = 5
  self.y = 5
  
  self.size = TILE_SIZE
end

function Player:update(dt)
end

function Player:draw()
  love.graphics.setColor(player_color.r, player_color.g, player_color.b, player_color.a)
  love.graphics.rectangle("fill", self.x*TILE_SIZE, self.y*TILE_SIZE, self.size, self.size)
end

function Player:move(dir)
  if dir == "up" then
    self.y = self.y - 1
  elseif dir == "down" then
    self.y = self.y + 1
  elseif dir == "left" then
    self.x = self.x - 1
  elseif dir == "right" then
    self.x = self.x + 1
  else
    print("ERROR: Invalid direction to Player:move(dir)")
  end
  
  RandomizeColors()
end

Player = Object:extend()

function Player:new()  
  self.x = 6
  self.y = 6
end

function Player:update(dt)
end

function Player:draw()
  DrawTile(self.x, self.y, player_color)
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

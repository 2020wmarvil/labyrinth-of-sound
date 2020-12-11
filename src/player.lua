Player = Object:extend()

function Player:new()  
  self.x = 0
  self.y = 0
  
  self.width = 50
  self.height = 50
end

function Player:update(dt)
end

function Player:draw()
  love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end

function Player:move(dir)
  if dir == "up" then
    self.y = self.y - TILE_SIZE
  elseif dir == "down" then
    self.y = self.y + TILE_SIZE
  elseif dir == "left" then
    self.x = self.x - TILE_SIZE
  elseif dir == "right" then
    self.x = self.x + TILE_SIZE
  else
    print("ERROR: Invalid direction to Player:move(dir)")
  end
end
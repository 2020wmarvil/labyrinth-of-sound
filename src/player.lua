Player = Object:extend()

function Player:new()  
  self.x = level.start.x
  self.y = level.start.y
end

function Player:update(dt)
end

function Player:draw()
  love.graphics.setColor(player_color.r, player_color.g, player_color.b, 1)      
  love.graphics.rectangle("fill", self.x*TILE_SIZE, self.y*TILE_SIZE, TILE_SIZE, TILE_SIZE)
end

function Player:move(dir)
  local success = false
  
  local intended_x, intended_y = self.x, self.y
  
  if dir == "up" then
    intended_y = self.y - 1
  elseif dir == "down" then
    intended_y = self.y + 1
  elseif dir == "left" then
    intended_x = self.x - 1
  elseif dir == "right" then
    intended_x = self.x + 1
  else
    print("ERROR: Invalid direction to Player:move(dir)")
  end
  
  if level.grid[intended_x][intended_y].id == TILE_ID.PATH then
    self.x, self.y = intended_x, intended_y
  end
  
  level.grid[intended_x][intended_y].chord:play()
  
  RandomizeColors()
end

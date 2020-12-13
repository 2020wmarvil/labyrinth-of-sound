Player = Object:extend()

function Player:new()  
  self.x = 3
  self.y = 3
end

function Player:update(dt)
end

function Player:draw()
  love.graphics.setColor(player_color.r, player_color.g, player_color.b, 1)      
  love.graphics.rectangle("fill", self.x*TILE_SIZE, self.y*TILE_SIZE, TILE_SIZE, TILE_SIZE)
end

function Player:move(dir)
  local success = false
  
  if dir == "up" then
    if (level.grid[self.y-1][self.x].id == TILE_ID.PATH) then
      self.y = self.y - 1
      success = true
    end
  elseif dir == "down" then
    if (level.grid[self.y+1][self.x].id == TILE_ID.PATH) then
      self.y = self.y + 1
      success = true
    end
  elseif dir == "left" then
    if (level.grid[self.y][self.x-1].id == TILE_ID.PATH) then
      self.x = self.x - 1
      success = true
    end
  elseif dir == "right" then
    if (level.grid[self.y][self.x+1].id == TILE_ID.PATH) then
      self.x = self.x + 1
      success = true
    end
  else
    print("ERROR: Invalid direction to Player:move(dir)")
  end
  
  if success then
    keys.c_major.ii:play()
  else
    --play a bonk?
  end
    
  RandomizeColors()
end

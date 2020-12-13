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
  local success = false
  
  if dir == "up" then
    if (level.grid[self.y-1][self.x] == TILE_ID.PATH) then
      self.y = self.y - 1
      success = true
    end
  elseif dir == "down" then
    if (level.grid[self.y+1][self.x] == TILE_ID.PATH) then
      self.y = self.y + 1
      success = true
    end
  elseif dir == "left" then
    if (level.grid[self.y][self.x-1] == TILE_ID.PATH) then
      self.x = self.x - 1
      success = true
    end
  elseif dir == "right" then
    if (level.grid[self.y][self.x+1] == TILE_ID.PATH) then
      self.x = self.x + 1
      success = true
    end
  else
    print("ERROR: Invalid direction to Player:move(dir)")
  end
  
  if success then
    --play note
  end
  
  RandomizeColors()
end

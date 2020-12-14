Tile = Object:extend()

TILE_ID = { VOID=0, PATH=1, WALL=2 }

function Tile:new(id, x, y, chord)
  self.id = id
  self.x = x
  self.y = y
  self.chord = chord
end

function Tile:draw()
  if self.id == TILE_ID.PATH then
    love.graphics.setColor(path_color.r, path_color.g, path_color.b, 1)
  elseif self.id == TILE_ID.WALL then
    love.graphics.setColor(wall_color.r, wall_color.g, wall_color.b, 1)
  else
    return
  end
      
  love.graphics.rectangle("fill", self.x*TILE_SIZE, self.y*TILE_SIZE, TILE_SIZE, TILE_SIZE)
end

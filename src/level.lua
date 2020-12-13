Level = Object:extend()

--function Level:new(file)  
  --contents, size = love.filesystem.read(file)
  --
  --self.board = {}
  --self.walls = {}
  --table.insert(self.walls, Wall(0, 0))
--end

TILE_ID = { VOID=0, PATH=1, WALL=2 }

function Level:new()
  self.width = 11
  self.height = 11
  
  self.grid = {
    { 0, 0, 0, 0, 2, 1, 2, 0, 0, 0, 0 },
    { 0, 0, 0, 0, 2, 1, 2, 0, 0, 0, 0 },
    { 0, 0, 0, 0, 2, 1, 2, 0, 0, 0, 0 },
    { 0, 0, 0, 0, 2, 1, 2, 0, 0, 0, 0 },
    { 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2 },
    { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 },
    { 2, 2, 2, 2, 2, 1, 2, 2, 2, 2, 2 },
    { 0, 0, 0, 0, 2, 1, 2, 0, 0, 0, 0 },
    { 0, 0, 0, 0, 2, 1, 2, 0, 0, 0, 0 },
    { 0, 0, 0, 0, 2, 1, 2, 0, 0, 0, 0 },
    { 0, 0, 0, 0, 2, 1, 2, 0, 0, 0, 0 }
  }
end

function Level:draw()
  for i = 1, self.height do
    for j = 1, self.width do
      if self.grid[i][j] == TILE_ID.PATH then
        DrawTile(i, j, path_color)
      elseif self.grid[i][j] == TILE_ID.WALL then
        DrawTile(i, j, wall_color)
      end      
    end
  end
end

function DrawTile(x, y, color)
  love.graphics.setColor(color.r, color.g, color.b, 1)
  love.graphics.rectangle("fill", x*TILE_SIZE, y*TILE_SIZE, TILE_SIZE, TILE_SIZE)
end

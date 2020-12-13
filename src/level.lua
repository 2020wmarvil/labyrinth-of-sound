Level = Object:extend()

function Level:new()
  self.width = 100
  self.height = 100
  
  self.grid = {}
  for i = 1, self.height do
    self.grid[i] = {}
    for j = 1, self.width do
      if i == 1 or i == self.height or j == 1 or j == self.width then
        self.grid[i][j] = Tile(TILE_ID.WALL, i, j)
      else
        self.grid[i][j] = Tile(TILE_ID.PATH, i, j)
      end
    end
  end
end

function Level:draw()
  for i = 1, self.height do
    for j = 1, self.width do
      self.grid[i][j]:draw()
    end
  end
end

Level = Object:extend()

function Level:new(file)  
  contents, size = love.filesystem.read(file)
  
  self.board = {}
  self.walls = {}
  table.insert(self.walls, Wall(0, 0))
end

function Level:draw()
  for i,wall in pairs(self.walls) do
    wall:draw()
  end
end

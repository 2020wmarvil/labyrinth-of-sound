Wall = Object:extend()

function Wall:new(x, y)
  self.x = x
  self.y = y
  self.size = TILE_SIZE
end

function Wall:draw()
  love.graphics.setColor(wall_color.r, wall_color.g, wall_color.b, wall_color.a)
  love.graphics.rectangle("fill", self.x, self.y, self.size, self.size)
end

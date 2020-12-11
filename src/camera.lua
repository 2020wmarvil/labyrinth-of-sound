TargetCamera = Object:extend()

function TargetCamera:new(target)  
  self.target = target
  self.camera = Camera(self.target.x + self.target.size/2, self.target.y + self.target.size/2)
  self.smoothness = 0.5
  
  self:center_on_target(0)
end

function TargetCamera:update()
  self:center_on_target(0.5)
end

function TargetCamera:center_on_target(smoothness)
  local dx,dy = (self.target.x*TILE_SIZE + TILE_SIZE/2) - self.camera.x, (self.target.y*TILE_SIZE + TILE_SIZE/2) - self.camera.y
  self.camera:move(dx * (1-smoothness), dy * (1-smoothness))
end  

function TargetCamera:attach()
  self.camera:attach()
end

function TargetCamera:detach()
  self.camera:detach()
end

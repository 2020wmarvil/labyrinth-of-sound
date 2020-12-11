game = {}

function game.init()
  player = Player()
  
  camera = Camera(player.x + TILE_SIZE/2, player.y + TILE_SIZE/2)
end

function game.update(dt)
  player:update(dt)
  updateCamera()
end

function game.draw()
  camera:attach()
  player:draw()
  camera:detach()
end

function game.keypressed(key)
  if key == "w" then
    player:move("up")
  elseif key == "s" then
    player:move("down")
  elseif key == "a" then
    player:move("left")
  elseif key == "d" then
    player:move("right")
  elseif key == "escape" then
    love.event.quit(0)
  end
end

function updateCamera()
  local dx,dy = (player.x + TILE_SIZE/2) - camera.x, (player.y + TILE_SIZE/2) - camera.y
  camera:move(dx/2, dy/2)
end

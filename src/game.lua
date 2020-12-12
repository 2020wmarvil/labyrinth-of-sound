game = {}

function game.init()
  player = Player()
  
  camera = TargetCamera(player)
  
  level = Level("levels/lobby.lvl")
  
  InitColors()
end

function game.update(dt)
  player:update(dt)
  camera:update(dt)
end

function game.draw()
  camera:attach()
  player:draw()
  level:draw()
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

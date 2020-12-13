game = {}

function game.init()
  player = Player()
  
  camera = TargetCamera(player)
  
  --level = Level("levels/lobby.lvl")
  level = Level()
  
  InitColors()
  
  moved = false
end

function game.update(dt)
  player:update(dt)
  camera:update(dt)
end

function game.draw()
  --background:draw() -- should this go inside or outside of the camera? probably inside!  
  camera:attach()
  level:draw()
  player:draw()  
  camera:detach()  
  
  if not moved then
    love.graphics.setColor(wall_color.r, wall_color.g, wall_color.b, 1)   
    love.graphics.setNewFont(20)
    local subfont = love.graphics.newFont(20)
    local subtext = "space to be blindfolded"
    love.graphics.print(subtext, math.floor((SCREEN_WIDTH-subfont:getWidth(subtext))/2), subfont:getHeight() + 10)  
    subtext = "r to restart"
    love.graphics.print(subtext, math.floor((SCREEN_WIDTH-subfont:getWidth(subtext))/2), 2*subfont:getHeight() + 10)
  end
end

function game.blindfold()
  love.graphics.setColor(wall_color.r, wall_color.g, wall_color.b, 1)   
  love.graphics.setNewFont(20)
  local subfont = love.graphics.newFont(20)
  local subtext = "space to be un-blindfolded!"
  love.graphics.print(subtext, math.floor((SCREEN_WIDTH-subfont:getWidth(subtext))/2), subfont:getHeight() + 10)
end

function game.keypressed(key)
  if key == "w" then
    player:move("up")
    moved = true
  elseif key == "s" then
    player:move("down")
    moved = true
  elseif key == "a" then
    player:move("left")
    moved = true
  elseif key == "d" then
    player:move("right")
    moved = true
  elseif key == "r" then
    player.x = level.start.x
    player.y = level.start.y
    moved = false
  elseif key == "space" then
    if love.draw == game.draw then
      love.draw = game.blindfold
    else
      love.draw = game.draw
    end
  elseif key == "escape" then
    love.event.quit(0)
  end
end

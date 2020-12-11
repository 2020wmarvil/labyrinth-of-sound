io.stdout:setvbuf("no")
  
SCREEN_WIDTH = love.graphics.getWidth()
SCREEN_HEIGHT = love.graphics.getHeight()

TILE_SIZE = 50

function love.load()
  love.math.setRandomSeed(love.timer.getTime())

  Object = require("libs/classic")
  Camera = require("libs/hump_camera")
  require("src/game")
  require("src/player")
  require("libs/hump_camera")
  
  love.window.setTitle("Labyrinth of Sound")

  love.graphics.setBackgroundColor(0, 0, 0)
  
  startGame()
end
  
function startGame()
  game.init()
  
  love.update = game.update
  love.draw = game.draw
  love.keypressed = game.keypressed
end

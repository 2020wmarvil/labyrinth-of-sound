io.stdout:setvbuf("no")
  
SCREEN_WIDTH = love.graphics.getWidth()
SCREEN_HEIGHT = love.graphics.getHeight()

TILE_SIZE = 50

function love.load()
  love.math.setRandomSeed(love.timer.getTime())

  Object = require("libs/classic")
  Camera = require("libs/hump_camera")
  require("src/game")
  require("src/target_camera")
  require("src/player")
  require("src/level")
  require("src/tile")
  require("src/colorizer")
  
  love.window.setTitle("Labyrinth of Sound")

  love.graphics.setBackgroundColor(0, 0, 0)
  
  LoadSamples()
  
  StartGame()
end
  
function StartGame()
  game.init()
  
  love.update = game.update
  love.draw = game.draw
  love.keypressed = game.keypressed
end

function LoadSamples()
  notes = {
    -- fourth octave
    c4 = love.audio.newSource("samples/C4.wav", "static"),
    cs4 = love.audio.newSource("samples/C#4.wav", "static"),
    d4 = love.audio.newSource("samples/D4.wav", "static"),
    ds4 = love.audio.newSource("samples/D#4.wav", "static"),
    e4 = love.audio.newSource("samples/E4.wav", "static"),
    f4 = love.audio.newSource("samples/F4.wav", "static"),
    fs4 = love.audio.newSource("samples/F#4.wav", "static"),
    g4 = love.audio.newSource("samples/G4.wav", "static"),
    gs4 = love.audio.newSource("samples/G#4.wav", "static"),
    a4 = love.audio.newSource("samples/A4.wav", "static"),
    as4 = love.audio.newSource("samples/A#4.wav", "static"),
    b4 = love.audio.newSource("samples/B4.wav", "static"),
    
    -- fifth octave
    c5 = love.audio.newSource("samples/C5.wav", "static"),
    cs5 = love.audio.newSource("samples/C#5.wav", "static"),
    d5 = love.audio.newSource("samples/D5.wav", "static"),
    ds5 = love.audio.newSource("samples/D#5.wav", "static"),
    e5 = love.audio.newSource("samples/E5.wav", "static"),
    f5 = love.audio.newSource("samples/F5.wav", "static"),
    fs5 = love.audio.newSource("samples/F#5.wav", "static"),
    g5 = love.audio.newSource("samples/G5.wav", "static"),
    gs5 = love.audio.newSource("samples/G#5.wav", "static"),
    a5 = love.audio.newSource("samples/A5.wav", "static"),
    as5 = love.audio.newSource("samples/A#5.wav", "static"),
    b5 = love.audio.newSource("samples/B5.wav", "static"),
    
    -- sixth octave
    c6 = love.audio.newSource("samples/C6.wav", "static"),
    cs6 = love.audio.newSource("samples/C#6.wav", "static"),
    d6 = love.audio.newSource("samples/D6.wav", "static"),
    ds6 = love.audio.newSource("samples/D#6.wav", "static"),
    e6 = love.audio.newSource("samples/E6.wav", "static"),
    f6 = love.audio.newSource("samples/F6.wav", "static"),
    fs6 = love.audio.newSource("samples/F#6.wav", "static"),
    g6 = love.audio.newSource("samples/G6.wav", "static"),
    gs6 = love.audio.newSource("samples/G#6.wav", "static"),
    a6 = love.audio.newSource("samples/A6.wav", "static"),
    as6 = love.audio.newSource("samples/A#6.wav", "static"),
    b6 = love.audio.newSource("samples/B6.wav", "static"),
  }
end


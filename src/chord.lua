Chord = Object:extend()

function Chord:new(first, second, third)
  self.first = love.audio.newSource("samples/" .. first .. ".wav", "static")
  self.second = love.audio.newSource("samples/" .. second .. ".wav", "static")
  self.third = love.audio.newSource("samples/" .. third .. ".wav", "static") 
end

function Chord:play()
  self:stop()
  
  self.first:play()
  self.second:play()
  self.third:play()
end

function Chord:stop()
  self.first:stop()
  self.second:stop()
  self.third:stop()
end

function LoadAudio()
  LoadSamples()
  LoadKeys()
end

function LoadKeys()
  keys = {
    c_major = {
      I = Chord("C5", "E5", "G5"),
      ii = Chord("D5", "F5", "A5"),
      iii = Chord("E5", "G5", "B5"),
      IV = Chord("F5", "A5", "C6"),
      V = Chord("G5", "B5", "D6"),
      vi = Chord("A5", "C6", "E6"),
      vii = Chord("B6", "D6", "F6"),
    }
  }
end

function LoadSamples()
  -- piano samples were taken from https://sites.google.com/site/soundfonts4u/ under the creative commons 4.0 license
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
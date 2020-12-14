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
  -- http://www.piano-keyboard-guide.com/chords-by-key.html
  keys = {
    c_major = {
      I   = Chord("C5", "E5", "G5"),
      ii  = Chord("D5", "F5", "A5"),
      iii = Chord("E5", "G5", "B5"),
      IV  = Chord("F5", "A5", "C6"),
      V   = Chord("G5", "B5", "D6"),
      vi  = Chord("A5", "C6", "E6"),
      vii = Chord("B6", "D6", "F6"),
    },
    cs_major = { 
      I   = Chord("C#5", "F5", "G#5"),
      ii  = Chord("D#5", "F#5", "A#5"),
      iii = Chord("F5", "G#5", "C5"),
      IV  = Chord("F#5", "A#5", "C#6"),
      V   = Chord("G#5", "C5", "D#6"),
      vi  = Chord("A#5", "C#6", "F6"),
      vii = Chord("C6", "D#6", "F#6"),
    },
    d_major = {
      I   = Chord("D5", "F#5", "A5"),
      ii  = Chord("E5", "G5", "B5"),
      iii = Chord("F#5", "A5", "C#6"),
      IV  = Chord("G5", "B5", "D6"),
      V   = Chord("A5", "C#6", "E6"),
      vi  = Chord("B5", "D6", "F#6"),
      vii = Chord("C#5", "E5", "G5"),
    },
    ds_major = {
      I   = Chord("D#5", "G5", "A#5"),
      ii  = Chord("F5", "G#5", "C6"),
      iii = Chord("G5", "A#5", "D6"),
      IV  = Chord("G#6", "C6", "D#6"),
      V   = Chord("A#5", "D6", "F6"),
      vi  = Chord("C5", "D#5", "G5"),
      vii = Chord("D5", "F5", "G#5"),
    },
    e_major = {
      I   = Chord("E5", "G#5", "B5"),
      ii  = Chord("F#5", "A5", "C#6"),
      iii = Chord("G#5", "B5", "D#6"),
      IV  = Chord("A5", "C#6", "E6"),
      V   = Chord("B5", "D#6", "F#6"),
      vi  = Chord("C#5", "E5", "G#5"),
      vii = Chord("D#5", "F#5", "A5"),
    },
    f_major = {
      I   = Chord("F5", "A5", "C5"),
      ii  = Chord("G5", "A#5", "D6"),
      iii = Chord("A5", "C6", "E6"),
      IV  = Chord("A#5", "D6", "F6"),
      V   = Chord("C5", "E5", "G5"),
      vi  = Chord("D6", "F5", "A5"),
      vii = Chord("E5", "G5", "A#5"),
    },
    fs_major = {
      I   = Chord("F#5", "A#5", "C#6"),
      ii  = Chord("G#5", "B5", "D#6"),
      iii = Chord("A#5", "C#6", "F6"),
      IV  = Chord("B5", "D#6", "F#6"),
      V   = Chord("C#5", "F5", "G#5"),
      vi  = Chord("D#5", "F#5", "A#5"),
      vii = Chord("F5", "G#5", "B5"),
    },
    g_major = {
      I   = Chord("G5", "B5", "D6"),
      ii  = Chord("A5", "C6", "E6"),
      iii = Chord("B5", "D6", "F#6"),
      IV  = Chord("C5", "E5", "G5"),
      V   = Chord("D5", "F#5", "A5"),
      vi  = Chord("E5", "G5", "B5"),
      vii = Chord("F#5", "A5", "C6"),
    },
    gs_major = {
      I   = Chord("G#5", "C6", "D#6"),
      ii  = Chord("A#5", "C#6", "F6"),
      iii = Chord("C5", "D#5", "G5"),
      IV  = Chord("C#5", "F5", "G#5"),
      V   = Chord("D#5", "G5", "A#5"),
      vi  = Chord("F5", "G#5", "C6"),
      vii = Chord("G5", "A#5", "C#6"),
    },
    a_major = {
      I   = Chord("A5", "C#6", "E6"),
      ii  = Chord("B5", "D6", "F#6"),
      iii = Chord("C#5", "E5", "G#5"),
      IV  = Chord("D5", "F#5", "A5"),
      V   = Chord("E5", "G#5", "B5"),
      vi  = Chord("F#5", "A5", "C#6"),
      vii = Chord("G#5", "B5", "D5"),
    },
    as_major = {
      I   = Chord("A#5", "D6", "F6"),
      ii  = Chord("C5", "D#5", "G5"),
      iii = Chord("D5", "F5", "A5"),
      IV  = Chord("D#5", "G5", "A#5"),
      V   = Chord("F5", "A5", "C6"),
      vi  = Chord("G5", "A#5", "D6"),
      vii = Chord("A5", "C6", "D#6"),
    },
    b_major = {
      I   = Chord("B5", "D#6", "F#6"),
      ii  = Chord("C#5", "E5", "G#5"),
      iii = Chord("D#5", "F#5", "A#5"),
      IV  = Chord("E5", "G#5", "B6"),
      V   = Chord("F#5", "A#5", "C#6"),
      vi  = Chord("G#5", "B6", "D#6"),
      vii = Chord("A#5", "C#6", "E6"),
    },
    c_minor = {
      I   = Chord("C5", "D#5", "G5"),
      ii  = Chord("D5", "F5", "G#5"),
      iii = Chord("D#5", "G5", "A#5"),
      IV  = Chord("F5", "G#5", "C6"),
      V   = Chord("G5", "A#5", "D6"),
      vi  = Chord("G#5", "C6", "D#6"),
      vii = Chord("A#5", "D6", "F6"),
    },
    cs_minor = {
      I   = Chord("C#5", "E5", "G#5"),
      ii  = Chord("D#5", "F#5", "A5"),
      iii = Chord("E5", "G#5", "B5"),
      IV  = Chord("F#5", "A5", "C#6"),
      V   = Chord("G#5", "B5", "D#6"),
      vi  = Chord("A5", "C#6", "E6"),
      vii = Chord("B5", "D#6", "F#6"),
    },
    d_minor = {
      I   = Chord("D5", "F5", "A5"),
      ii  = Chord("E5", "G5", "A#5"),
      iii = Chord("F5", "A5", "C6"),
      IV  = Chord("G5", "A#5", "D6"),
      V   = Chord("A5", "C6", "E6"),
      vi  = Chord("A#5", "D6", "F6"),
      vii = Chord("C5", "E5", "G5"),
    },
    ds_minor = {
      I   = Chord("D#5", "F#5", "A#5"),
      ii  = Chord("F5", "G#5", "B5"),
      iii = Chord("F#5", "A#5", "C#6"),
      IV  = Chord("G#5", "B5", "D#6"),
      V   = Chord("A#5", "C#6", "F5"),
      vi  = Chord("B5", "D#6", "F#6"),
      vii = Chord("C#5", "F5", "G#5"),
    },
    e_minor = {
      I   = Chord("E5", "G5", "B5"),
      ii  = Chord("F#5", "A5", "C6"),
      iii = Chord("G5", "B5", "D6"),
      IV  = Chord("A5", "C6", "E6"),
      V   = Chord("B5", "D6", "F#6"),
      vi  = Chord("C5", "E5", "G5"),
      vii = Chord("D5", "F#5", "A5"),
    },
    f_minor = {
      I   = Chord("F5", "G#5", "C6"),
      ii  = Chord("G5", "A#5", "C#6"),
      iii = Chord("G#5", "C6", "D#6"),
      IV  = Chord("A#5", "C#6", "F6"),
      V   = Chord("C5", "D#5", "G5"),
      vi  = Chord("C#5", "F5", "G#5"),
      vii = Chord("D#5", "G5", "A#5"),
    },
    fs_minor = {
      I   = Chord("F#5", "A5", "C#6"),
      ii  = Chord("G#5", "B5", "D6"),
      iii = Chord("A5", "C#6", "E6"),
      IV  = Chord("B5", "D6", "F#6"),
      V   = Chord("C#5", "E5", "G#5"),
      vi  = Chord("D5", "F#5", "A5"),
      vii = Chord("E5", "G#5", "B5"),
    },
    g_minor = {
      I   = Chord("G5", "A#5", "D6"),
      ii  = Chord("A5", "C6", "D#6"),
      iii = Chord("A#5", "D6", "F6"),
      IV  = Chord("C5", "D#5", "G5"),
      V   = Chord("D5", "F5", "A5"),
      vi  = Chord("D#5", "G5", "A#5"),
      vii = Chord("F5", "A5", "C6"),
    },
    gs_minor = {
      I   = Chord("G#5", "B5", "D#6"),
      ii  = Chord("A#5", "C#6", "E6"),
      iii = Chord("B5", "D#6", "F#6"),
      IV  = Chord("C#5", "E5", "G#5"),
      V   = Chord("D#5", "F#5", "A#5"),
      vi  = Chord("E5", "G#5", "B5"),
      vii = Chord("F#5", "A#5", "C#6"),
    },
    a_minor = {
      I   = Chord("A5", "C6", "E6"),
      ii  = Chord("B5", "D6", "F6"),
      iii = Chord("C5", "E5", "G5"),
      IV  = Chord("D5", "F5", "A5"),
      V   = Chord("E5", "G5", "B5"),
      vi  = Chord("F5", "A5", "C6"),
      vii = Chord("G5", "B5", "D6"),
    },
    as_minor = {
      I   = Chord("A#5", "C#6", "F6"),
      ii  = Chord("C5", "D#5", "F#5"),
      iii = Chord("C#5", "F5", "G#5"),
      IV  = Chord("D#5", "F#5", "A#5"),
      V   = Chord("F5", "G#5", "C6"),
      vi  = Chord("F#5", "A#5", "C#6"),
      vii = Chord("G#5", "C6", "D#6"),
    },
    b_minor = {
      I   = Chord("B5", "D6", "F#6"),
      ii  = Chord("C#5", "E5", "G5"),
      iii = Chord("D5", "F#5", "A5"),
      IV  = Chord("E5", "G5", "B5"),
      V   = Chord("F#5", "A5", "C#6"),
      vi  = Chord("G5", "B5", "D6"),
      vii = Chord("A5", "C#6", "E6"),
    },
  }
  
  ugly_chord = Chord("E5", "C4", "A6")
  
  chord_adjacencies = { {3,4,5,6}, {3,5,7}, {2,4,6,}, {2,5}, {1,3,6,}, {2,4,7}, {2,4,5} }
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

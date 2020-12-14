Level = Object:extend()

function Level:new()
  self.width = 10
  self.height = 10
  
  self.start = {
    x = self.width / 2,
    y = self.height / 2
  }
  
  self.chord_progression = GenerateChordProgression()
  for i,chord in pairs(self.chord_progression) do
    chord:play()
    love.timer.sleep(0.5)
  end

  self.grid = {}
  for i = 0, self.width do
    self.grid[i] = {}
    
    for j = 0, self.height do
      if i == 0 or j == 0 or i == self.width or j == self.height then
        self.grid[i][j] = Tile(TILE_ID.WALL, i, j, ugly_chord)
      else
        self.grid[i][j] = Tile(TILE_ID.PATH, i, j, ugly_chord)
      end
    end
  end  
end

function GenerateChordProgression()
  local index = love.math.random(1, 24)
  
  local key = nil
  local count = 1
  for i,k in pairs(keys) do
    if count == index then
      key = k
      print(i)
    end
    
    count = count + 1
  end
  
  local chords = { key.I }
  
  local prev = 1  
  for i = 1, 3 do
    local cur = chord_adjacencies[prev][love.math.random(#chord_adjacencies[prev])]
    
    if cur == 1 then
      chord = key.I
    elseif cur == 2 then
      chord = key.ii
    elseif cur == 3 then
      chord = key.ii
    elseif cur == 4 then
      chord = key.IV
    elseif cur == 5 then
      chord = key.V
    elseif cur == 6 then
      chord = key.vi
    elseif cur == 7 then
      chord = key.vii
    end
        
    table.insert(chords, chord)
    
    prev = cur
  end
  
  return chords
end

function Level:draw()
  for i = 0, self.width do
    for j = 0, self.height do
      self.grid[i][j]:draw()
    end
  end
end

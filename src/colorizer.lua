-- for a uniform color space use hsluv https://github.com/hsluv/hsluv/blob/512b2b0da441a9c065796ef16d585d9836597b68/haxe/src/hsluv/Hsluv.hx

function InitColors()
  RandomizeColors()
end

function RandomizeColors()
  -- instead of doing type of color (pastel vs neon), maybe do type of harmony (monochromatic vs triadic, etc.)
  local key_color = RandomPastel()
  local tint_color = TintColor(key_color)
  local shade_color = ShadeColor(key_color)
  
  player_color = HSLtoRGB(key_color)
  path_color = HSLtoRGB(tint_color)
  wall_color = HSLtoRGB(shade_color)
end

function RandomPastel()
  return { h=love.math.random(0, 255), s=love.math.random(120, 180), l=200 }
end

function TintColor(color)
  return { h = color.h, s = color.s, l = color.l+30 }
end

function ShadeColor(color)
  return { h = color.h, s = color.s, l = color.l-30 }
end

function HSVtoHSL(color)
  local h = color.h
  local l = color.v - color.v * color.s / 2
  local s = 0
  
  if l ~= 0 and l ~= 1 then
    s = (color.v - l) / math.min(l, 1-l)
  end
  
  return { h=h, s=s, l=l }
end

function HSLtoHSV(color)
  local h = color.h
  local v = color.l + color.s * math.min(color.l, 1 - color.l)
  local s = 0
  
  if v ~= 0 then
    s = 2 - 2 * color.l / v
  end
    
  return { h=h, s=s, v=v }
end

function HSVtoRGB(color)
  local h,s,v = color.h/256*6, color.s/255, color.v/255
  local c = v*s
  local x = (1-math.abs((h%2)-1))*c
  local m,r,g,b = (v-c), 0,0,0
  if h < 1     then r,g,b = c,x,0
  elseif h < 2 then r,g,b = x,c,0
  elseif h < 3 then r,g,b = 0,c,x
  elseif h < 4 then r,g,b = 0,x,c
  elseif h < 5 then r,g,b = x,0,c
  else              r,g,b = c,0,x
  end return { r = r+m, g = g+m, b = b+m }
end

function HSLtoRGB(color)
  local h,s,l = color.h/256*6, color.s/255, color.l/255
  local c = (1 - math.abs(2*l - 1)) * s
  local x = c * (1 - math.abs(h % 2 -1 ))
  local m,r,g,b = l - c/2, 0,0,0
  if h < 1     then r,g,b = c,x,0
  elseif h < 2 then r,g,b = x,c,0
  elseif h < 3 then r,g,b = 0,c,x
  elseif h < 4 then r,g,b = 0,x,c
  elseif h < 5 then r,g,b = x,0,c
  else              r,g,b = c,0,x
  end return { r = r+m, g = g+m, b = b+m }
end

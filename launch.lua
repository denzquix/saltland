
local path = ...

local f = loadfile(path)

xpcall(f, function(e)
  print(e)
  io.read()
end)
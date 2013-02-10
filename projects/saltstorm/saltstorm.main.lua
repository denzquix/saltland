
local sdl = require 'extern.sdl'
local bit = require 'bit'
local ffi = require 'ffi'

sdl.SDL_Init(sdl.SDL_INIT_VIDEO)

local VIEWPORT_WIDTH, VIEWPORT_HEIGHT = 320, 200

local sdlVideo = sdl.SDL_SetVideoMode(
	VIEWPORT_WIDTH, VIEWPORT_HEIGHT,
	32,
	bit.bor(sdl.SDL_SWSURFACE, sdl.SDL_RESIZABLE))

local event = ffi.new 'SDL_Event'
local running = true
while running do
  while sdl.SDL_PollEvent(event) do
    if event.type == sdl.SDL_QUIT then
	  running = false
	end
  end
end

sdl.SDL_Quit()

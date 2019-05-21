local Gamestate = require ('hump.gamestate')
local uare = require ('uare.uare')

require 'menu'
require 'editor'

shipGrid = {} -- tmpShipGrid.eclipse.Piligrim_MK3L -- template to require current ship grid
shipData =  {} -- tmpShipData.eclipse.Piligrim_MK3L -- template to require current ship data

-- cell sizes to place GUI elements
cellSize = {
	x = 0,
	y = 0
}
---
widthScale = 1
---
function rescale()
	--love.window.maximize( ) -- match point to support multimonitors
	currW, currH = love.graphics.getDimensions( )
	--cellSize.x, cellSize.y = math.floor(currW / 80), math.floor(currH / 64)
	cellSize.x, cellSize.y =  currH / 64, currH / 64
	fontGl = love.graphics.newFont(cellSize.x)
	if currW / currH == 16 / 10 or currW / currH == 16 / 9 then
		widthScale = 4
	elseif currW / currH == 4 / 3 then
		widthScale = 2
	else
		widthScale = 2
	end
end

function love.load()
	menu:init() -- 1-2 sec speed up of loading == still need loading bar! NB!
	editor:init()
	Gamestate.registerEvents()
	Gamestate.switch(menu)
end

--- Supported resolutions

-- 4x3 - 800x600, 1024x768, 1152x864, 1280x960, 1600x1200 - done
-- 5x4 -  1280x1024  - done
-- 16x10 - 1280x800, 1440x900, 1680x1050 - done
-- 16x9 - 1920x1080, 1600×900, 1280x720 - done


-- mobiles - need to test (sic!)
-- 4x3 - 320x240, 480x320
-- 5x3 - 800x480 

-- to-do list

-- groups of shipd by class (frigates, cruisers, Battlecruisers, Battleships, Dreadnoughts) - done!
-- full ship list in editor - done!
-- redesign main menu buttons (make them slide!) - done!
-- making screenshots - done!
-- save-load system - almost done!
-- double-click fitting - in progress

-- first commit

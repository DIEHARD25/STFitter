local Gamestate = require ('hump.gamestate')
local uare = require ('uare.uare')

local fps = love.timer.getFPS( )

menu = {}

function menu:init()
rescale()
logo = love.graphics.newImage('res/starfall_1680x1050.png')
--testImg = love.graphics.newImage('res/eclipseIcons/Piligrim_MK3L.png')
tmpShipGrid = require ('data.testShipTable')
tmpShipData = require ('data.testShipData')

-- very-very usefull!
shipIconsEclipse = {}
for key, value in pairs(tmpShipData.eclipse) do
	shipIconsEclipse[value.name] = love.graphics.newImage(value.icon)
end
shipIconsVanguard = {}
for key, value in pairs(tmpShipData.vanguard) do
	shipIconsVanguard[value.name] = love.graphics.newImage(value.icon)
end
shipIconsDeprived = {}
for key, value in pairs(tmpShipData.deprived) do
	shipIconsDeprived[value.name] = love.graphics.newImage(value.icon)
end

myStyle = uare.newStyle({

	width = cellSize.x * 10,
	height = cellSize.y * 2,
  
  --color
  
	color = {100, 100, 100},
	hoverColor = {150, 150, 150},
	holdColor = {100, 100, 100},
  
  --border
  
	border = {
		color = {25, 25, 25},
		hoverColor = {25, 25, 25},
		holdColor = {25, 25, 25},
		size = 0
	},
  
  --text
  
	text = {
		color = {255, 255, 255},
		hoverColor = {255, 255, 255},
		holdColor = {255, 255, 255},
		font = fontGl,
		align = "center",
	}
})
--
iconStyle = uare.newStyle({

	width = cellSize.x * 4,
	height = cellSize.y * 8,
  
  --color
  
	color = {255, 255, 255},
	hoverColor = {200, 200, 200},
	holdColor = {150, 150, 150},
  
  --border
  
	border = {
		color = {255, 255, 255},
		hoverColor = {200, 200, 200},
		holdColor = {150, 150, 150},
		size = 0
	}
})
--
mainMenuGroup = uare.newGroup()
newShipGroup = uare.newGroup()
optionsGroup = uare.newGroup()
avResGroup = uare.newGroup()
--
eclipseShipGroup = uare.newGroup()
vanguardShipGroup = uare.newGroup()
deprivedShipGroup = uare.newGroup()
--

--
end

function menu:enter()
rescale()
---hiding unnecessary buttons groups

wheelButton = uare.new({
	text = {
		display = "",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		},
		align = "center",
	},
	
	x = cellSize.x * 160,
	y = cellSize.y * 32,
	
	width = cellSize.x,
	height = cellSize.y,
	
	drag = {
		enabled = false,
		fixed = {
			x = true,
			y = false
		}
	}

}):style(myStyle)

-- NEW SHIP
newShip = uare.new({
    
	text = {
		display = "NEW SHIP",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	x = 0,
	y = cellSize.y * 2,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,
  
	onClick = function()
		newShipGroup:show(.2)
		newShipGroup:enable()
		optionsGroup:hide(.2)
		optionsGroup:disable()
		avResGroup:hide(.2)
		avResGroup:disable()
	end
	
}):style(myStyle):group(mainMenuGroup)
--
vanguard = uare.new({
    
	text = {
		display = "VANGUARD",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	x = cellSize.x * 3,
	y = cellSize.y * 2,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,

	onClick = function()
		wheelButton.y = cellSize.y * 32
		vanguardShipGroup : show(.2)
		vanguardShipGroup : enable()
		eclipseShipGroup : hide(.2)
		eclipseShipGroup : disable()
		deprivedShipGroup : hide(.2)
		deprivedShipGroup : disable()
	end		
  
}):style(myStyle):group(newShipGroup)
--
table.sort(tmpShipData.vanguard, sortingShipsByClass)
spawnShips(tmpShipData.vanguard, shipIconsVanguard, vanguardShipGroup)
--
eclipse = uare.new({
    
	text = {
		display = "ECLIPSE",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	x = cellSize.x * 3,
	y = cellSize.y * 7,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,	
	
	onClick = function()
		wheelButton.y = cellSize.y * 32
		eclipseShipGroup:show(.2)
		eclipseShipGroup:enable()
		vanguardShipGroup : hide(.2)
		vanguardShipGroup : disable()
		deprivedShipGroup : hide(.2)
		deprivedShipGroup : disable()
	end
}):style(myStyle):group(newShipGroup)
--
table.sort(tmpShipData.eclipse, sortingShipsByClass)
spawnShips(tmpShipData.eclipse, shipIconsEclipse, eclipseShipGroup)
--
deprived = uare.new({
    
	text = {
		display = "DEPRIVED",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	x = cellSize.x * 3,
	y = cellSize.y * 12,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,
	
	onClick = function()
		wheelButton.y = cellSize.y * 32
		eclipseShipGroup : hide(.2)
		eclipseShipGroup : disable()
		vanguardShipGroup : hide(.2)
		vanguardShipGroup : disable()
		deprivedShipGroup : show(.2)
		deprivedShipGroup : enable()
	end	
  
}):style(myStyle):group(newShipGroup)
--
table.sort(tmpShipData.deprived, sortingShipsByClass)
spawnShips(tmpShipData.deprived, shipIconsDeprived, deprivedShipGroup)
--
returnBtn = uare.new({
    
	text = {
		display = "RETURN",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	x = cellSize.x * 3,
	y = cellSize.y * 17,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,	
  
	onClick = function()
		newShipGroup:hide(.2)
		newShipGroup:disable()
		eclipseShipGroup:hide()
		eclipseShipGroup:disable()
		vanguardShipGroup:hide(.2)
		vanguardShipGroup:disable()
		deprivedShipGroup:hide(.2)
		deprivedShipGroup:disable()
	end
  
}):style(myStyle):group(newShipGroup)
--- 

---
----OPTIONS
---
options = uare.new({
    
	text = {
		display = "OPTIONS",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	x = 0,
	y = cellSize.y * 7,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,
  
	onClick = function()
		optionsGroup:show(.2)
		optionsGroup:enable()
		newShipGroup:hide(.2)
		newShipGroup:disable()
		eclipseShipGroup:hide()
		eclipseShipGroup:disable()
		vanguardShipGroup:hide(.2)
		vanguardShipGroup:disable()
		deprivedShipGroup:hide(.2)
		deprivedShipGroup:disable()		
	end
	
}):style(myStyle):group(mainMenuGroup)
--
setRes = uare.new({
    
	text = {
		display = "RESOLUTION\n"..currW.."x"..currH,
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	x = cellSize.x * 3,
	y = cellSize.y * 2,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,	
  
	onClick = function()
		avResGroup:show(.2)
		avResGroup:enable()
	end
	
}):style(myStyle):group(optionsGroup)
---
local i = 0
local squareX = 0
local squareY = 0
local counter = 0
for key, value in pairs(love.window.getFullscreenModes()) do
	if value.width < 800 then break end
	counter = counter + 1
	uare.new({
		text = {
			display = value.width.."x"..value.height,
			font = fontGl,
			offset = {
				x = 0,
				y = - cellSize.y / 2
			}
		},
		
		x = cellSize.x * 14 + squareX,
		y = cellSize.y * 2 + squareY,
		
		width = cellSize.x * 10,
		height = cellSize.y * 4,
	
	onClick = function()
		avResGroup:hide(.2)
		avResGroup:disable()
		optionsGroup:hide(.2)
		optionsGroup:disable()
		love.window.setMode(value.width, value.height)
		rescale()
		uare.update(dt, love.mouse.getPosition())
		Gamestate.switch(menu)
	end
	}):style(myStyle):group(avResGroup)
	squareY = squareY + cellSize.y * 5
	if counter%7 == 0 then
		squareY = 0
		squareX = squareX + cellSize.x * 11
	end
end
---
setFS = uare.new({
    
	text = {
		display = "FULLSCREEN",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	x = cellSize.x * 3,
	y = cellSize.y * 7,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,	
  
	onClick = function()
		avResGroup:hide(.2)
		avResGroup:disable()
		optionsGroup:hide(.2)
		optionsGroup:disable()
		local width, height = love.graphics.getDimensions( )
		love.window.setMode( width, height, {fullscreen = true})
		uare.update(dt, love.mouse.getPosition())
		Gamestate.switch(menu)
	end
  
}):style(myStyle):group(optionsGroup)
---
returnOpt = uare.new({
    
	text = {
		display = "RETURN",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	x = cellSize.x * 3,
	y = cellSize.y * 12,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,
  
	onClick = function()
		optionsGroup:hide(.2)
		optionsGroup:disable()
		avResGroup:hide(.2)
		avResGroup:disable()
	end
 
}):style(myStyle):group(optionsGroup)
--- LOAD SHIP
loadShip = uare.new({
    
	text = {
		display = "LOAD SHIP",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
  
	x = 0,
	y = cellSize.y * 12,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,
  
}):style(myStyle):group(mainMenuGroup)
--- CODEX
codex = uare.new({
    
	text = {
		display = "CODEX",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	x = 0,
	y = cellSize.y * 17,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,
  
}):style(myStyle):group(mainMenuGroup)
--- EXIT
exitBtn = uare.new({
    
	text = {
		display = "EXIT",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
  
	x = 0,
	y = cellSize.y * 22,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,
	
	onClick = function()
		love.event.quit()
	end
 
}):style(myStyle)
---
siteExt = uare.new({
    
	text = {
		display = "GO TO SITE",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
  
	x = 0,
	y = cellSize.y * 47,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,
	
	onClick = function()
		love.system.openURL('http://starfalltactics.com')
	end
 
}):style(myStyle)
---
forumExt = uare.new({
    
	text = {
		display = "GO TO FORUM",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
  
	x = 0,
	y = cellSize.y * 52,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,
	
	onClick = function()
		love.system.openURL('http://forum.starfalltactics.com/index.php?sid=3caf47a2771d32649c04b2a3be52ed30')
	end
 
}):style(myStyle)
---
license = uare.new({
    
	text = {
		display = "LICENSE",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
  
	x = 0,
	y = cellSize.y * 57,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,
	
	onClick = function()
	
	end
 
}):style(myStyle)
---
	mainMenuGroup:show(.2)
	mainMenuGroup:enable()
	--
	eclipseShipGroup:hide()
	eclipseShipGroup:disable()
	vanguardShipGroup:hide()
	vanguardShipGroup:disable()
	deprivedShipGroup:hide()
	deprivedShipGroup:disable()	
	--s
	newShipGroup:hide()
	newShipGroup:disable()
	optionsGroup:hide()
	optionsGroup:disable()
	avResGroup:hide()
	avResGroup:disable()	

end
--
function love.wheelmoved(x, y)
	if y ~= nil then
		delta = delta - y * cellSize.y
	end
end
--
function menu:draw()
	love.graphics.draw(logo, currW / 2, currH / 2, 0, currW / logo:getWidth(), currH / logo:getHeight(), 1920 / 2, 1080/ 2)
	uare.draw()
	--love.graphics.print("Current FPS: "..tostring(fps), 10, currH - 50)
	--love.graphics.print("Current CELL: "..cellSize.x.."x"..cellSize.y, 10, currH - 25)
	--love.graphics.print("DELTA COUNTER "..delta , 10, currH - 75)	
end
--
function menu:update(dt)
	menu:keypressed(key,code)  
	uare.update(dt, love.mouse.getPosition())
	wheelButton.y = wheelButton.y + delta
	delta = delta - delta *  math.min(dt * 10, 1)
	--	
	newShip.x = math.lerp(newShip.x, newShip.hover and 0 or -(newShip.width - cellSize.y * 2) , .1)
	options.x = math.lerp(options.x, options.hover and 0 or -(options.width - cellSize.y * 2) , .1)
	loadShip.x = math.lerp(loadShip.x, loadShip.hover and 0 or -(loadShip.width - cellSize.y * 2) , .1)	
	codex.x = math.lerp(codex.x, codex.hover and 0 or -(codex.width - cellSize.y * 2) , .1)	
	exitBtn.x = math.lerp(exitBtn.x, exitBtn.hover and 0 or -(exitBtn.width - cellSize.y * 2) , .1)	
	--
	siteExt.x = math.lerp(siteExt.x, siteExt.hover and 0 or -(siteExt.width - cellSize.y * 2) , .1)	
	forumExt.x = math.lerp(forumExt.x, forumExt.hover and 0 or -(forumExt.width - cellSize.y * 2) , .1)	
	license.x = math.lerp(license.x, license.hover and 0 or -(license.width - cellSize.y * 2) , .1)		
	--
end
--
function menu:leave()
	uare.clear()
end
--
function menu:keypressed(key, code)
    if key == 'escape' then
       love.event.quit()
    end
end
--
function spawnShips(table, iconTable, faction)
	local squareX = 0
	local squareY = 0
	local counter = 0
	for key, value in ipairs(table) do
		--if value.size == size then 
			uare.new({
			
				x = cellSize.x * 14 + squareX,
				y = cellSize.y * 2 + squareY,
				
				width = cellSize.x * 10,
				height = cellSize.y * 18,
					
				content = {
					wrap = false,
					width = 0,
					height = 0
				},
						
				onClick = function()
					shipGrid = value.shipGrid
					shipData = value
					if shipData.size >= 1 and shipData.size < 2 then
						hullSizeCoeff.x,  hullSizeCoeff.y = 4, 4
					elseif shipData.size >=2 and shipData.size < 6 then
						hullSizeCoeff.x,  hullSizeCoeff.y = 3, 3 
					end
					Gamestate.switch(editor)
				end
					
			})
			:style(iconStyle)
			:group(faction)
			:anchor(wheelButton)
			:setContent(function()
				love.graphics.draw(iconTable[value.name], 0, 0, 0, (cellSize.x * 10.8) / iconTable[value.name]:getWidth(), (cellSize.y * 18.8) / iconTable[value.name]:getHeight(), 10, 10)
			end)
			squareX = squareX + cellSize.x * 11	
			counter = counter + 1
			if counter%4 == 0 then 
				squareX = 0
				squareY = squareY + cellSize.y * 19 
			end
		--end
	end
end
--
function sortingShipsByClass(a,b)
	return a.size < b.size
end
--
return menu
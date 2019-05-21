local Gamestate = require ('hump.gamestate')
local Signal = require ('hump.signal')
local uare = require ('uare.uare')

moduleData = require ('data/testModuleData')

tmpCounter = 0
modulesList = {}
moduleCounter = 0
collCounter = 0
local fps = love.timer.getFPS( )
hullSizeCoeff = {
	x = 3,
	y = 3,
}
delta = 0
tmpSignal = 0
--
editor = {}
--
function editor:init()
---
--- data section
--- initial commit 3
--- so, now we try to merge with master
beamsLogo = love.graphics.newImage('res/ui_icons/beams_pic.png')
cannonsLogo = love.graphics.newImage('res/ui_icons/cannons_pic.png')
missilesLogo = love.graphics.newImage('res/ui_icons/missiles_pic.png')
engineeringLogo = love.graphics.newImage('res/ui_icons/engineering_pic.png')
--
enginesLogo = love.graphics.newImage('res/ui_icons/engines_pic.png')
armorsLogo = love.graphics.newImage('res/ui_icons/armor_pic.png')
shieldLogo = love.graphics.newImage('res/ui_icons/shield_pic.png')
ammoLogo = love.graphics.newImage('res/ui_icons/ammo_pic.png')
-- pre-loading and indexing logo and pics of modules cards
beamsIcon = {}
beamsPic = {}
for key, value in pairs(moduleData.beams) do
	beamsIcon[value.name] = love.graphics.newImage(value.icon)
	beamsPic[value.name] = love.graphics.newImage(value.pic)
end

cannonsIcon = {}
cannonsPic = {}
for key, value in pairs(moduleData.cannons) do
	cannonsIcon[value.name] = love.graphics.newImage(value.icon)
	cannonsPic[value.name] = love.graphics.newImage(value.pic)
end

missilesIcon = {}
missilesPic = {}
for key, value in pairs(moduleData.missiles) do
	missilesIcon[value.name] = love.graphics.newImage(value.icon)
	missilesPic[value.name] = love.graphics.newImage(value.pic)
end

engineeringIcon = {}
engineeringPic = {}
for key, value in pairs(moduleData.engineering) do
	engineeringIcon[value.name] = love.graphics.newImage(value.icon)
	engineeringPic[value.name] = love.graphics.newImage(value.pic)
end

enginesIcon = {}
enginesPic = {}
for key, value in pairs(moduleData.engines) do
	enginesIcon[value.name] = love.graphics.newImage(value.icon)
	enginesPic[value.name] = love.graphics.newImage(value.pic)
end

armorIcon = {}
armorPic = {}
for key, value in pairs(moduleData.armor) do
	armorIcon[value.name] = love.graphics.newImage(value.icon)
	armorPic[value.name] = love.graphics.newImage(value.pic)
end

shieldIcon = {}
shieldPic = {}
for key, value in pairs(moduleData.shield) do
	shieldIcon[value.name] = love.graphics.newImage(value.icon)
	shieldPic[value.name] = love.graphics.newImage(value.pic)
end

ammoIcon = {}
ammoPic = {}
for key, value in pairs(moduleData.ammo) do
	ammoIcon[value.name] = love.graphics.newImage(value.icon)
	ammoPic[value.name] = love.graphics.newImage(value.pic)
end
--
--- groups section
gridGr = uare.newGroup()

beamsGr = uare.newGroup()
cannonsGr = uare.newGroup()
missilesGr = uare.newGroup()
engineeringGr = uare.newGroup()
enginesGr = uare.newGroup()
armorsGr = uare.newGroup()
shieldsgGr = uare.newGroup()
ammosGr = uare.newGroup()
--- graphics resources section
--cursor = love.mouse.getSystemCursor("hand")
logo = love.graphics.newImage('res/starfall_1680x1050.png')
	
--- style section
gridStyle = uare.newStyle({

	width = cellSize.x * hullSizeCoeff.x,
	height = cellSize.y * hullSizeCoeff.y,
  
  --color
  
	color = {100, 100, 100},
	hoverColor = {100, 100, 100},
	holdColor = {100, 100, 100},
  
  --border
  
	border = {
		color = {255, 255, 255},
		hoverColor = {255, 255, 255},
		holdColor = {255, 255, 255},
		size = 1
	},
	
	text = {
		color = {255, 255, 255},
		hoverColor = {255, 255, 255},
		holdColor = {255, 255, 255},
		font = fontGl,
		align = "center",
		offset = {
			x = 0,
			y = 0
		}
	}
})
moduleStyle = uare.newStyle({
  
  --color
  
	color = {100, 100, 100},
	hoverColor = {120, 120, 120},
	holdColor = {100, 100, 100},
  
  --border
  
	border = {
		color = {255, 255, 255},
		hoverColor = {255, 255, 255},
		holdColor = {255, 255, 255},
		size = 0
	},
	
	text = {
		color = {255, 255, 255},
		hoverColor = {255, 255, 255},
		holdColor = {255, 255, 255},
		font = fontGl,
		align = "center",
		offset = {
			x = 0,
			y = 0
		}
	}
})
uistyle = uare.newStyle({

	--width = cellSize.x * 10,
	--height = cellSize.y * 2,
  
  --color
  
	color = {100, 100, 100},
	hoverColor = {120, 120, 120},
	holdColor = {100, 100, 100},
  
  --border
  
	border = {
		color = {25, 25, 25},
		hoverColor = {25, 25, 25},
		holdColor = {25, 25, 25},
		size = 1
	},
	
	text = {
		color = {255, 255, 255},
		hoverColor = {255, 255, 255},
		holdColor = {255, 255, 255},
		font = fontGl,
		align = "center",
		offset = {
			x = 0,
			y = 0
		}
	}
})
end

function editor:enter()
rescale()
--- UI section
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

}):style(uistyle)
-- 
beams = uare.new({
    
	text = {
		display = "BEAMS",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	content = {
		wrap = false,
		width = 0,
		height = 0
	},
	
	x = cellSize.x * 44,
	y = 0,
	
	width = cellSize.x * 8,
	height = cellSize.y * 8,
  
	onClick = function()
		wheelButton.y = cellSize.y * 32
		beamsGr:show(.2)
		beamsGr:enable()
		cannonsGr:hide(.2)
		cannonsGr:disable()
		missilesGr:hide(.2)
		missilesGr:disable()
		engineeringGr:hide(.2)
		engineeringGr:disable()
		enginesGr:hide(.2)
		enginesGr:disable()
		armorsGr:hide(.2)
		armorsGr:disable()
		shieldsgGr:hide(.2)
		shieldsgGr:disable()
		ammosGr:hide(.2)
		ammosGr:disable()		
		if love.mouse.isDown(2) then
			beamsGr:hide(.2)
			beamsGr:disable()
		end
	end
	
}):style(uistyle)
--
table.sort(moduleData.beams, sorting)
beamsSpawn(moduleData.beams)
--
cannons = uare.new({
    
	text = {
		display = "CANNONS",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	content = {
		wrap = false,
		width = 0,
		height = 0
	},	
	
	x = cellSize.x * 53,
	y = 0,
	width = cellSize.x * 8,
	height = cellSize.y * 8,
  
	onClick = function()
		wheelButton.y = cellSize.y * 32
		beamsGr:hide(.2)
		beamsGr:disable()
		cannonsGr:show(.2)
		cannonsGr:enable()
		missilesGr:hide(.2)
		missilesGr:disable()
		engineeringGr:hide(.2)
		engineeringGr:disable()
		enginesGr:hide(.2)
		enginesGr:disable()
		armorsGr:hide(.2)
		armorsGr:disable()
		shieldsgGr:hide(.2)
		shieldsgGr:disable()
		ammosGr:hide(.2)
		ammosGr:disable()	
		if love.mouse.isDown(2) then
			cannonsGr:hide(.2)
			cannonsGr:disable()
		end
	end
	
}):style(uistyle)
--
table.sort(moduleData.cannons, sorting)
cannonsSpawn(moduleData.cannons)
--
missiles = uare.new({
    
	text = {
		display = "MISSILES",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	content = {
		wrap = false,
		width = 0,
		height = 0
	},	
	
	x = cellSize.x * 62,
	y = 0,
	width = cellSize.x * 8,
	height = cellSize.y * 8,
  
	onClick = function()
		wheelButton.y = cellSize.y * 32
		beamsGr:hide(.2)
		beamsGr:disable()
		cannonsGr:hide(.2)
		cannonsGr:disable()
		missilesGr:show(.2)
		missilesGr:enable()
		engineeringGr:hide(.2)
		engineeringGr:disable()
		enginesGr:hide(.2)
		enginesGr:disable()
		armorsGr:hide(.2)
		armorsGr:disable()
		shieldsgGr:hide(.2)
		shieldsgGr:disable()
		ammosGr:hide(.2)
		ammosGr:disable()	
		if love.mouse.isDown(2) then
			missilesGr:hide(.2)
			missilesGr:disable()
		end
	end
	
}):style(uistyle)
--
table.sort(moduleData.missiles, sorting)
missilesSpawn(moduleData.missiles)
--
engineering = uare.new({
    
	text = {
		display = "ENGINEERING",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	content = {
		wrap = false,
		width = 0,
		height = 0
	},
	
	x = cellSize.x * 71,
	y = 0,
	width = cellSize.x * 8,
	height = cellSize.y * 8,
  
	onClick = function()
		wheelButton.y = cellSize.y * 32
		beamsGr:hide(.2)
		beamsGr:disable()
		cannonsGr:hide(.2)
		cannonsGr:disable()
		missilesGr:hide(.2)
		missilesGr:disable()
		engineeringGr:show(.2)
		engineeringGr:enable()
		enginesGr:hide(.2)
		enginesGr:disable()
		armorsGr:hide(.2)
		armorsGr:disable()
		shieldsgGr:hide(.2)
		shieldsgGr:disable()
		ammosGr:hide(.2)
		ammosGr:disable()		
		if love.mouse.isDown(2) then
			engineeringGr:hide(.2)
			engineeringGr:disable()
		end
	end
	
}):style(uistyle)
--
table.sort(moduleData.engineering, sorting)
engineeringSpawn(moduleData.engineering)
--
engines = uare.new({
    
	text = {
		display = "ENGINES",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	content = {
		wrap = false,
		width = 0,
		height = 0
	},
	
	x = cellSize.x * 44,
	y = cellSize.x * 45,
	width = cellSize.x * 8,
	height = cellSize.y * 8,
  
	onClick = function()
		wheelButton.y = cellSize.y * 32
		beamsGr:hide(.2)
		beamsGr:disable()
		cannonsGr:hide(.2)
		cannonsGr:disable()
		missilesGr:hide(.2)
		missilesGr:disable()
		engineeringGr:hide(.2)
		engineeringGr:disable()
		enginesGr:show(.2)
		enginesGr:enable()
		armorsGr:hide(.2)
		armorsGr:disable()
		shieldsgGr:hide(.2)
		shieldsgGr:disable()
		ammosGr:hide(.2)
		ammosGr:disable()			
		if love.mouse.isDown(2) then
			enginesGr:hide(.2)
			enginesGr:disable()
		end
	end,
	
}):style(uistyle)
--
table.sort(moduleData.engines, sorting)
enginesSpawn(moduleData.engines)
--
armor = uare.new({
    
	text = {
		display = "ARMOR",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	content = {
		wrap = false,
		width = 0,
		height = 0
	},
	
	x = cellSize.x * 53,
	y = cellSize.x * 45,
	width = cellSize.x * 8,
	height = cellSize.y * 8,
  
	onClick = function()
		wheelButton.y = cellSize.y * 32
		beamsGr:hide(.2)
		beamsGr:disable()
		cannonsGr:hide(.2)
		cannonsGr:disable()
		missilesGr:hide(.2)
		missilesGr:disable()
		engineeringGr:hide(.2)
		engineeringGr:disable()
		enginesGr:hide(.2)
		enginesGr:disable()
		armorsGr:show(.2)
		armorsGr:enable()
		shieldsgGr:hide(.2)
		shieldsgGr:disable()
		ammosGr:hide(.2)
		ammosGr:disable()			
		if love.mouse.isDown(2) then
			armorsGr:hide(.2)
			armorsGr:disable()	
		end
	end,
	
}):style(uistyle)
--
table.sort(moduleData.armor, sorting)
armorSpawn(moduleData.armor)
--
shield = uare.new({
    
	text = {
		display = "SHIELDS",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	content = {
		wrap = false,
		width = 0,
		height = 0
	},
	
	x = cellSize.x * 62,
	y = cellSize.x * 45,
	width = cellSize.x * 8,
	height = cellSize.y * 8,
  
	onClick = function()
		wheelButton.y = cellSize.y * 32
		beamsGr:hide(.2)
		beamsGr:disable()
		cannonsGr:hide(.2)
		cannonsGr:disable()
		missilesGr:hide(.2)
		missilesGr:disable()
		engineeringGr:hide(.2)
		engineeringGr:disable()
		enginesGr:hide(.2)
		enginesGr:disable()
		armorsGr:hide(.2)
		armorsGr:disable()
		shieldsgGr:show(.2)
		shieldsgGr:enable()
		ammosGr:hide(.2)
		ammosGr:disable()			
		if love.mouse.isDown(2) then
			shieldsgGr:hide(.2)
			shieldsgGr:disable()
		end
	end,
	
}):style(uistyle)
--
table.sort(moduleData.shield, sorting)
shieldSpawn(moduleData.shield)
--
ammo = uare.new({
    
	text = {
		display = "AMMO",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	content = {
		wrap = false,
		width = 0,
		height = 0
	},
	
	x = cellSize.x * 71,
	y = cellSize.x * 45,
	width = cellSize.x * 8,
	height = cellSize.y * 8,
  
	onClick = function()
		wheelButton.y = cellSize.y * 32
		beamsGr:hide(.2)
		beamsGr:disable()
		cannonsGr:hide(.2)
		cannonsGr:disable()
		missilesGr:hide(.2)
		missilesGr:disable()
		engineeringGr:hide(.2)
		engineeringGr:disable()
		enginesGr:hide(.2)
		enginesGr:disable()
		armorsGr:hide(.2)
		armorsGr:disable()
		shieldsgGr:hide(.2)
		shieldsgGr:disable()
		ammosGr:show(.2)
		ammosGr:enable()	
		if love.mouse.isDown(2) then
			ammosGr:hide(.2)
			ammosGr:disable()
		end
	end,
	
}):style(uistyle)
--
table.sort(moduleData.ammo, sorting)
ammoSpawn(moduleData.ammo)
--
undo = uare.new({
    
	text = {
		display = "UNDO",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	content = {
		wrap = false,
		width = 0,
		height = 0
	},
	
	x = 0,
	y = cellSize.y * 4,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,
  
	onClick = function()
		if moduleCounter ~= 0 then
			local tmp = table.remove(modulesList)
			Signal.emit('removeInfo', tmp.currModTable)
			tmp:remove()
			moduleCounter = moduleCounter - 1
		end
	end
	
}):style(uistyle)
-- clear
clearAll = uare.new({
    
	text = {
		display = "CLEAR",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	content = {
		wrap = false,
		width = 0,
		height = 0
	},
	
	x = 0,
	y = cellSize.y * 10,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,
  
	onClick = function()
		if #modulesList ~= 0 then
			local tmp = #modulesList
			for key, value in pairs(modulesList) do
				Signal.emit('removeInfo', value.currModTable)
				moduleCounter = moduleCounter - 1
				value:remove()
			end
			for i = 1, tmp do
				table.remove(modulesList, key)				
			end	
		end
	end
	
}):style(uistyle)

-- save -- WIP
-- load -- WIP
-- make screenshot
toMainMenu = uare.new({
    
	text = {
		display = "RETURN TO MENU",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	content = {
		wrap = false,
		width = 0,
		height = 0
	},
	
	x = 0,
	y = cellSize.y * 16,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,
  
	onClick = function()
		Gamestate.switch(menu)
	end
	
}):style(uistyle)
---
screenshotBtn = uare.new({
    
	text = {
		display = "SCREENSHOT",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		}
	},
	
	content = {
		wrap = false,
		width = 0,
		height = 0
	},
	
	x = 0,
	y = cellSize.y * 22,
	
	width = cellSize.x * 10,
	height = cellSize.y * 4,
  
	onClick = function()
		local screenshot = love.graphics.newScreenshot( )
		screenshot:encode('png', os.time() .. '.png')
	end
	
}):style(uistyle)
-- codex
-- help
-- exit app
--
-- end of menu section
grid1 = {} 
-- making grid

for i = 1, #shipGrid[1] do
	grid1[i] = {}
	for j = 1, #shipGrid do
		if shipGrid[j][i] ~= 0 then
			
			grid1[i][j] = uare.new({
	
			x = i * cellSize.x * hullSizeCoeff.x + cellSize.x * 2 * hullSizeCoeff.x ,  
			y = j * cellSize.y * hullSizeCoeff.y + cellSize.y * 3 * hullSizeCoeff.y,
			
			width = cellSize.x * hullSizeCoeff.x,
			height = cellSize.y * hullSizeCoeff.y,
			
			text = {
				display = shipGrid[j][i],
				font = fontGl,
				offset = {
					x = 0,
					y = -10,
				}
			},
			gridType = shipGrid[j][i],
			
			matchStatus = true,

			signal 
			
			}):style(gridStyle):group(gridGr)
			
			grid1[i][j].signal = Signal.register('match', function(x, y, sx, sy, z)
				--if gridComparing(grid1[i][j].gridType, z) then	
				--	grid1[i][j].color = {200, 200, 200}				-- higlihgt whole grid
				--end
				if checkCollision(x, y, math.floor(sx * cellSize.x * hullSizeCoeff.x) , math.floor(sy * cellSize.y * hullSizeCoeff.y), grid1[i][j].x + cellSize.x * hullSizeCoeff.x / 2, grid1[i][j].y + cellSize.y * hullSizeCoeff.y / 2, 1, 1) and grid1[i][j].matchStatus then	
					if gridComparing(grid1[i][j].gridType, z) then
						grid1[i][j].color = {50, 50, 50}
						grid1[i][j].matchStatus = not grid1[i][j].matchStatus
						collCounter = collCounter + 1
					end
				elseif checkCollision(x, y, math.floor(sx * cellSize.x * hullSizeCoeff.x), math.floor(sy * cellSize.y * hullSizeCoeff.y), grid1[i][j].x + cellSize.x * hullSizeCoeff.x / 2, grid1[i][j].y + cellSize.y * hullSizeCoeff.y / 2, 1, 1) == grid1[i][j].matchStatus then	
					grid1[i][j].color = {100, 100, 100}
					grid1[i][j].matchStatus = not grid1[i][j].matchStatus
					collCounter = collCounter - 1
				end
			end)
		end
	end
end
-- section of displays
displayModuleData = uare.new({
    
	text = {
		display = "test",
		font = fontGl,
		offset = {
			x = cellSize.x,
			y = - (cellSize.y / 2 + cellSize.y * 6)
		},
		align = "left",
	},
	color = {100, 100, 100},
	x = cellSize.x,
	y = cellSize.y * 46,
	
	width = cellSize.x * 20,
	height = cellSize.y * 14,
  
	signal = Signal.register('displayMe', function(item) 
		if item.count ~= nil then
			displayModuleData.text.display = "NAME: "..item.name
											.."\nSIZE:     "..item.width.."x"..item.height
											.."\nCAP:      "..item.cap
											.."\nTP COST:  "..item.TPCost
											.."\nMASS:     "..item.mass
											.."\nAMMO:     "..item.count
		elseif item.armor ~= nil then
			displayModuleData.text.display = "NAME: "..item.name
											.."\nSIZE:     "..item.width.."x"..item.height
											.."\nCAP:      "..item.cap
											.."\nTP COST:  "..item.TPCost
											.."\nMASS:     "..item.mass
											.."\nARMOR:    "..item.armor		
		elseif item.shield ~= nil then
			displayModuleData.text.display = "NAME: "..item.name
											.."\nSIZE:     "..item.width.."x"..item.height
											.."\nCAP:      "..item.cap
											.."\nTP COST:  "..item.TPCost
											.."\nMASS:     "..item.mass
											.."\nSHIELD:   "..item.shield		
		elseif item.damage ~= nil then
			displayModuleData.text.display = "NAME: "..item.name
											.."\nSIZE:     "..item.width.."x"..item.height
											.."\nCAP:      "..item.cap
											.."\nTP COST:  "..item.TPCost
											.."\nMASS:     "..item.mass
											.."\nDAMAGE:   "..item.damage		
											.."\nDPS:      "..item.dps	
											.."\nCOOLDOWN: "..item.coolDown												
											.."\nRANGE:    "..item.range												
		else 
			displayModuleData.text.display = "NAME: "..item.name
											.."\nSIZE:     "..item.width.."x"..item.height
											.."\nCAP:      "..item.cap
											.."\nTP COST:  "..item.TPCost
											.."\nMASS:     "..item.mass
		end
	end)

}):style(uistyle)
--
displayFitData = uare.new({
    
	text = {
		display = "AGREGATED FIT DATA HERE!!!",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		},
		align = "center",
	},
	
	x = cellSize.x * 12,
	y = 0,
	
	width = cellSize.x * 31,
	height = cellSize.y * 16,
	
	onClick = function()
		if love.mouse.isDown(1) then
			displayFitData:anchor(displayModuleData)
		elseif love.mouse.isDown(2) then
			displayFitData:anchor(displayFitData)
		end
	end
  
}):style(uistyle)
--
beamsGr:hide(.2)
beamsGr:disable()
cannonsGr:hide(.2)
cannonsGr:disable()
missilesGr:hide(.2)
missilesGr:disable()
engineeringGr:hide(.2)
engineeringGr:disable()
enginesGr:hide(.2)
enginesGr:disable()
armorsGr:hide(.2)
armorsGr:disable()
shieldsgGr:hide(.2)
shieldsgGr:disable()
ammosGr:hide(.2)
ammosGr:disable()	
displayModuleData:hide()

beams:setContent(function() 
		love.graphics.draw(beamsLogo, 0, 0, 0, (cellSize.x * 8) / beamsLogo:getWidth(), (cellSize.y * 8) / beamsLogo:getHeight())
	end)
cannons:setContent(function() 
		love.graphics.draw(cannonsLogo, 0, 0, 0, (cellSize.x * 8) / cannonsLogo:getWidth(), (cellSize.y * 8) / cannonsLogo:getHeight())
	end)
missiles:setContent(function() 
		love.graphics.draw(missilesLogo, 0, 0, 0, (cellSize.x * 8) / missilesLogo:getWidth(), (cellSize.y * 8) / missilesLogo:getHeight())
	end)
engineering:setContent(function() 
		love.graphics.draw(engineeringLogo, 0, 0, 0, (cellSize.x * 8) / engineeringLogo:getWidth(), (cellSize.y * 8) / engineeringLogo:getHeight())
	end)	
engines:setContent(function() 
		love.graphics.draw(enginesLogo, 0, 0, 0, (cellSize.x * 8) / enginesLogo:getWidth(), (cellSize.y * 8) / enginesLogo:getHeight())
	end)	
armor:setContent(function() 
		love.graphics.draw(armorsLogo, 0, 0, 0, (cellSize.x * 8) / armorsLogo:getWidth(), (cellSize.y * 8) / armorsLogo:getHeight())
	end)	
shield:setContent(function() 
		love.graphics.draw(shieldLogo, 0, 0, 0, (cellSize.x * 8) / shieldLogo:getWidth(), (cellSize.y * 8) / shieldLogo:getHeight())
	end)	
ammo:setContent(function() 
		love.graphics.draw(ammoLogo, 0, 0, 0, (cellSize.x * 8) / ammoLogo:getWidth(), (cellSize.y * 8) / ammoLogo:getHeight())
	end)	
--
structureDs = uare.new({
    
	text = {
		display = "HULL: "..shipData.hull,
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		},
		align = "center",
	},
	
	x = cellSize.x * 12,
	y = 0,
	
	width = cellSize.x * 8,
	height = cellSize.y * 5,
	
  
}):style(uistyle):anchor(displayFitData)
--
armorDs = uare.new({
    armor = shipData.armor;
	text = {
		display = "ARMOR: "..shipData.armor,
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		},
		align = "center",
	},
	
	x = cellSize.x * 20,
	y = 0,
	
	width = cellSize.x * 8,
	height = cellSize.y * 5,
  
}):style(uistyle):anchor(displayFitData)
-- 
shieldDs = uare.new({
    shield = shipData.shield;
	text = {
		display = "SHIELD: "..shipData.shield,
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		},
		align = "center",
	},
	
	x = cellSize.x * 28,
	y = 0,
	
	width = cellSize.x * 8,
	height = cellSize.y * 5,

  
}):style(uistyle):anchor(displayFitData)
--
regenDs = uare.new({
    regen = shipData.regen,
	text = {
		display = "REG: "..shipData.regen,
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		},
		align = "center",
	},
	
	x = cellSize.x * 36,
	y = 0,
	
	width = cellSize.x * 5,
	height = cellSize.y * 5,
	
}):style(uistyle):anchor(displayFitData)
--
dpsDs = uare.new({
    dps = 0;
	text = {
		display = "DPS: ",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		},
		align = "center",
	},
	
	x = cellSize.x * 12,
	y = cellSize.y * 5,
	
	width = cellSize.x * 8,
	height = cellSize.y * 4,
	
}):style(uistyle):anchor(displayFitData)		
--
damageDs = uare.new({
    damage = 0,
	text = {
		display = "BURST: ",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		},
		align = "center",
	},
	
	x = cellSize.x * 20,
	y = cellSize.y * 5,
	
	width = cellSize.x * 8,
	height = cellSize.y * 4,

}):style(uistyle):anchor(displayFitData)		
--
rangeDs = uare.new({
    range = 0,
	text = {
		display = "MAX RANGE: ",
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		},
		align = "center",
	},
	
	x = cellSize.x * 28,
	y = cellSize.y * 5,
	
	width = cellSize.x * 13,
	height = cellSize.y * 4,

}):style(uistyle):anchor(displayFitData)
--
maxSpeedDs = uare.new({
    speed = shipData.maxSpeed,
	text = {
		display = "SPEED: "..shipData.maxSpeed,
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		},
		align = "center",
	},
	
	x = cellSize.x * 12,
	y = cellSize.y * 9,
	
	width = cellSize.x * 8,
	height = cellSize.y * 4,

}):style(uistyle):anchor(displayFitData)	
--
angularDs = uare.new({
    angular = shipData.angular,
	text = {
		display = "ANGULAR: "..shipData.angular,
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		},
		align = "center",
	},
	
	x = cellSize.x * 20,
	y = cellSize.y * 9,
	
	width = cellSize.x * 8,
	height = cellSize.y * 4,

}):style(uistyle):anchor(displayFitData)
--
massDs = uare.new({
    mass = shipData.mass,
	text = {
		display = "MASS: "..shipData.mass,
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		},
		align = "center",
	},
	
	x = cellSize.x * 28,
	y = cellSize.y * 9,
	
	width = cellSize.x * 13,
	height = cellSize.y * 4,

}):style(uistyle):anchor(displayFitData)
--
capDs = uare.new({
    cap = shipData.cap,
	text = {
		display = "AVALIABLE CAP: "..shipData.cap,
		font = fontGl,
		offset = {
			x = 0,
			y = - cellSize.y / 2
		},
		align = "center",
	},
	
	x = cellSize.x * 12,
	y = cellSize.y * 13,
	
	width = cellSize.x * 29,
	height = cellSize.y * 3,

}):style(uistyle):anchor(displayFitData)
--
tpCostDs = uare.new({
    TPCost = shipData.TPcost,
	text = {
		display = "TECH POINTS COST: "..shipData.TPcost,
		font = love.graphics.newFont(cellSize.y),
		offset = {
			x = 0,
			y = - cellSize.y
		},
		align = "center",
	},
	
	x = cellSize.x * 12,
	y = cellSize.y * 63,
	
	width = cellSize.x * 31,
	height = cellSize.y * 8,
	
	onClick = function()
		if love.mouse.isDown(1) then
			tpCostDs:anchor(displayModuleData)
		elseif love.mouse.isDown(2) then
			tpCostDs:anchor(tpCostDs)
		end
	end

}):style(uistyle)
--
Signal.register('addInfo', function(item) 
	if item.armor ~= nil then
		armorDs.armor = armorDs.armor + item.armor
		armorDs.text.display = "ARMOR: "..armorDs.armor
		massDs.mass = massDs.mass + item.mass
		massDs.text.display = "MASS: "..massDs.mass
		tpCostDs.TPCost = tpCostDs.TPCost + item.TPCost
		tpCostDs.text.display = "TECH POINTS COST: "..tpCostDs.TPCost
		capDs.cap = capDs.cap - item.cap
		capDs.text.display = "AVALIABLE CAP: "..capDs.cap
	elseif item.shield ~= nil then
		shieldDs.shield = shieldDs.shield + item.shield
		shieldDs.text.display = "SHIELD: "..shieldDs.shield
		massDs.mass = massDs.mass + item.mass
		massDs.text.display = "MASS: "..massDs.mass
		tpCostDs.TPCost = tpCostDs.TPCost + item.TPCost
		tpCostDs.text.display = "TECH POINTS COST: "..tpCostDs.TPCost
		capDs.cap = capDs.cap - item.cap
		capDs.text.display = "AVALIABLE CAP: "..capDs.cap		
	elseif item.regen ~= nil then
		regenDs.regen = regenDs.regen + item.regen
		regenDs.text.display = "REG: "..regenDs.regen
		massDs.mass = massDs.mass + item.mass
		massDs.text.display = "MASS: "..massDs.mass
		tpCostDs.TPCost = tpCostDs.TPCost + item.TPCost
		tpCostDs.text.display = "TECH POINTS COST: "..tpCostDs.TPCost
		capDs.cap = capDs.cap - item.cap
		capDs.text.display = "AVALIABLE CAP: "..capDs.cap		
	elseif item.dps ~= nil then
		dpsDs.dps = dpsDs.dps + item.dps
		dpsDs.text.display = "DPS: "..dpsDs.dps
		damageDs.damage = damageDs.damage + item.damage
		damageDs.text.display = "BURST: "..damageDs.damage		
		rangeDs.range = math.max(rangeDs.range, item.range)
		rangeDs.text.display = "MAX RANGE: "..rangeDs.range
		massDs.mass = massDs.mass + item.mass
		massDs.text.display = "MASS: "..massDs.mass
		tpCostDs.TPCost = tpCostDs.TPCost + item.TPCost
		tpCostDs.text.display = "TECH POINTS COST: "..tpCostDs.TPCost
		capDs.cap = capDs.cap - item.cap
		capDs.text.display = "AVALIABLE CAP: "..capDs.cap
	else 
		massDs.mass = massDs.mass + item.mass
		massDs.text.display = "MASS: "..massDs.mass
		tpCostDs.TPCost = tpCostDs.TPCost + item.TPCost
		tpCostDs.text.display = "TECH POINTS COST: "..tpCostDs.TPCost
		capDs.cap = capDs.cap - item.cap
		capDs.text.display = "AVALIABLE CAP: "..capDs.cap
	end
end)
--
Signal.register('removeInfo', function(item) 
	if item.armor ~= nil then
		armorDs.armor = armorDs.armor - item.armor
		armorDs.text.display = "ARMOR: "..armorDs.armor
		massDs.mass = massDs.mass - item.mass
		massDs.text.display = "MASS: "..massDs.mass
		tpCostDs.TPCost = tpCostDs.TPCost - item.TPCost
		tpCostDs.text.display = "TECH POINTS COST: "..tpCostDs.TPCost
		capDs.cap = capDs.cap + item.cap
		capDs.text.display = "AVALIABLE CAP: "..capDs.cap
	elseif item.shield ~= nil then
		shieldDs.shield = shieldDs.shield - item.shield
		shieldDs.text.display = "SHIELD: "..shieldDs.shield
		massDs.mass = massDs.mass - item.mass
		massDs.text.display = "MASS: "..massDs.mass
		tpCostDs.TPCost = tpCostDs.TPCost - item.TPCost
		tpCostDs.text.display = "TECH POINTS COST: "..tpCostDs.TPCost
		capDs.cap = capDs.cap + item.cap
		capDs.text.display = "AVALIABLE CAP: "..capDs.cap		
	elseif item.regen ~= nil then
		regenDs.regen = regenDs.regen - item.regen
		regenDs.text.display = "REG: "..regenDs.regen
		massDs.mass = massDs.mass - item.mass
		massDs.text.display = "MASS: "..massDs.mass
		tpCostDs.TPCost = tpCostDs.TPCost - item.TPCost
		tpCostDs.text.display = "TECH POINTS COST: "..tpCostDs.TPCost
		capDs.cap = capDs.cap + item.cap
		capDs.text.display = "AVALIABLE CAP: "..capDs.cap		
	elseif item.dps ~= nil then
		dpsDs.dps = math.floor(dpsDs.dps - item.dps)
		if moduleCounter == 0 and dpsDs.dps ~= 0 then dpsDs.dps = 0 end
		dpsDs.text.display = "DPS: "..dpsDs.dps
		damageDs.damage = damageDs.damage - item.damage
		damageDs.text.display = "BURST: "..damageDs.damage		
		rangeDs.range = 0
		rangeDs.text.display = "MAX RANGE: "..rangeDs.range
		massDs.mass = massDs.mass - item.mass
		massDs.text.display = "MASS: "..massDs.mass
		tpCostDs.TPCost = tpCostDs.TPCost - item.TPCost
		tpCostDs.text.display = "TECH POINTS COST: "..tpCostDs.TPCost
		capDs.cap = capDs.cap + item.cap
		capDs.text.display = "AVALIABLE CAP: "..capDs.cap
	else 
		massDs.mass = massDs.mass - item.mass
		massDs.text.display = "MASS: "..massDs.mass
		tpCostDs.TPCost = tpCostDs.TPCost - item.TPCost
		tpCostDs.text.display = "TECH POINTS COST: "..tpCostDs.TPCost
		capDs.cap = capDs.cap + item.cap
		capDs.text.display = "AVALIABLE CAP: "..capDs.cap
	end
end)
--

end
--

function love.wheelmoved(x, y)
	if y ~= nil then
		delta = delta - y * cellSize.y / 2
	end
end
--

--
function editor:draw()
	love.graphics.draw(logo, currW / 2, currH / 2, 0, currW / logo:getWidth(), currH / logo:getHeight(), 1920 / 2, 1080/ 2)
	uare.draw()
	--love.graphics.print("Current FPS: "..fps, 10, currH - 50)
	love.graphics.print("Save directory: "..love.filesystem.getIdentity( ), 10, currH - 25)
	--love.graphics.print("TABLE COUNTER "..#modulesList , 10, currH - 75)
	--love.graphics.print("DELTA COUNTER "..delta , 10, currH - 100)	
end
--
function editor:update(dt)
	uare.update(dt, love.mouse.getPosition())
	editor:keypressed(key,code)
	-- moving, moving...
	beams.y = math.lerp(beams.y, beams.hover and 0 or -(beams.height - cellSize.y * 2) , .1) -- nice!!!!
	cannons.y = math.lerp(cannons.y, cannons.hover and 0 or -(cannons.height - cellSize.y * 2) , .1)
	missiles.y = math.lerp(missiles.y, missiles.hover and 0 or -(missiles.height - cellSize.y * 2) , .1)
	engineering.y = math.lerp(engineering.y, engineering.hover and 0 or -(engineering.height - cellSize.y * 2) , .1)
	--
	engines.y = math.lerp(engines.y, engines.hover and engines.height + cellSize.y * 50  or cellSize.y * 62 , .1)
	armor.y = math.lerp(armor.y, armor.hover and armor.height + cellSize.y * 50  or cellSize.y * 62 , .1)	
	shield.y = math.lerp(shield.y, shield.hover and shield.height + cellSize.y * 50  or cellSize.y * 62 , .1)	
	ammo.y = math.lerp(ammo.y, ammo.hover and ammo.height + cellSize.y * 50  or cellSize.y * 62 , .1)	
	--
	displayFitData.y = math.lerp(displayFitData.y, displayFitData.hover and 0 or -(displayFitData.height - cellSize.y * 2) , .1)
	tpCostDs.y = math.lerp(tpCostDs.y, tpCostDs.hover and tpCostDs.height + cellSize.y * 50 or cellSize.y * 62, .1)
	--
	undo.x = math.lerp(undo.x, undo.hover and 0 or -(undo.width - cellSize.y * 2) , .1)
	clearAll.x = math.lerp(clearAll.x, clearAll.hover and 0 or -(clearAll.width - cellSize.y * 2) , .1)	
	toMainMenu.x = math.lerp(toMainMenu.x, toMainMenu.hover and 0 or -(toMainMenu.width - cellSize.y * 2) , .1)
	screenshotBtn.x = math.lerp(screenshotBtn.x, screenshotBtn.hover and 0 or -(screenshotBtn.width - cellSize.y * 2) , .1)
	--
	wheelButton.y = wheelButton.y + delta
	if love.timer.getTime( )%2 == 0 then delta = 0 else delta = delta - delta *  math.min(dt * 10, 1) end
	--
	function love.mousemoved(x, y, dx, dy)
		Signal.emit('fastMove')
	end
	--
end
--
function editor:leave()
	if #modulesList ~= 0 then
		local tmp = #modulesList
		for key, value in pairs(modulesList) do
			Signal.emit('removeInfo', value.currModTable)
			moduleCounter = moduleCounter - 1
			value:remove()
		end
		for i = 1, tmp do
			table.remove(modulesList, key)				
		end	
	end
	uare.clear()
	collCounter = 0
	Signal.clear('match')
	Signal.clear('overlap')
	Signal.clear('addInfo')
	Signal.clear('removeInfo')
	Signal.clear('displayMe')
end
--
function editor:keypressed(key, code)
	if key == 'escape' then
		Gamestate.switch(menu)
	end
end
--
function snapTo(x,y)

    local c = math.floor((x - cellSize.x * hullSizeCoeff.x)/(cellSize.x * hullSizeCoeff.x) + 0.5)
    local r = math.floor((y - cellSize.y * hullSizeCoeff.x)/(cellSize.y * hullSizeCoeff.x) + 0.5)
      
    x = cellSize.x * hullSizeCoeff.x  + c * cellSize.x * hullSizeCoeff.x 
    y = cellSize.y * hullSizeCoeff.x  + r * cellSize.y * hullSizeCoeff.x 
   
    return x, y
    
end
--
function checkCollision(x1, y1, w1, h1, x2, y2, w2, h2)
	return  x1 < x2 + w2 and
			x2 < x1 + w1 and
			y1 < y2 + h2 and
			y2 < y1 + h1
end
--
function spawnNewTest(widthR, heightR, modTable, mx, my)
	local testModule = uare.new({
	
	x = mx, --= cellSize.x * 2 * hullSizeCoeff.x,
	y = my, --= cellSize.y * 3 * hullSizeCoeff.y,
	
	drag = {
		enabled = true,
	    bounds = { 
			{
				x = 0,
				y = 0,
			},
			{
				x = currW,
				y = currH
			}
		}
	},
	
	content = {
		wrap = false,
		width = 0,
		height = 0
	},	
	
	width = widthR * cellSize.x * hullSizeCoeff.x,
	height = heightR * cellSize.y * hullSizeCoeff.y,
	-- custom defined fields
	currModTable = modTable,
	isPlaced = false,
	--
	onHold = function()

	end,
	
	onRelease = function()

	end,
	
	onClick = function()

	end,
	
	onHover = function()
	
	end
	
}):style(moduleStyle)
return testModule
end
--
function gridComparing(a, b)
	for key, value in pairs(b) do
		if value == a then 
			return true
		end
	end
end
--
function testModulesSpawn(moduleTable, x, y, flag, item)
		local tmp1 = 0
		tmp1 = tmp1 + 1
		moduleCounter = moduleCounter + 1
		local tmp = spawnNewTest(moduleTable.width, moduleTable.height, moduleTable, x, y)
		table.insert(modulesList, tmp1 ,tmp)
	
		tmp.onHover = function()
			Signal.emit('displayMe', moduleTable)
			displayModuleData:show()
		end
		
		tmp.onReleaseHover = function()
			displayModuleData:hide()	
		end
		
		tmp.onHold = function()
			tmp.isPlaced = false
			Signal.emit('match', tmp.x, tmp.y, math.floor(tmp.width / (cellSize.x * hullSizeCoeff.x)), math.floor(tmp.height / (cellSize.y * hullSizeCoeff.y)), tmp.currModTable.matching)
			local x, y = love.mouse.getPosition()
			local diffX, diffY = x - tmp.x, y -  tmp.y
			Signal.register('fastMove', function(mx, my) 
				local tx, ty = love.mouse.getPosition()
				tmp.x, tmp.y = tx - diffX, ty - diffY
			end)
		end
			
		tmp.onClick = function()
			if love.mouse.isDown(2) or tmp.isPlaced then
				removeFromTable(tmp)
				tmp:remove()
				moduleCounter = moduleCounter - 1
				displayModuleData:hide()
				Signal.emit('removeInfo', moduleTable)
				if tmp.isPlaced == false then
					Signal.emit('addInfo', moduleTable)
				end
			end
		end
			
		tmp.onRelease = function()
			Signal.clear('fastMove')
			for key, value in pairs(modulesList) do
				value.x, value.y = snapTo(value.x, value.y)
			end
			if collCounter == (tmp.width / (cellSize.x * hullSizeCoeff.x)) * (tmp.height /  (cellSize.y * hullSizeCoeff.y)) then
				if collDetect(tmp) == false then
					tmp.isPlaced = true
					tmp.drag.enabled = false
					displayModuleData:hide()
					Signal.emit('addInfo', moduleTable)
				end
			else
				removeFromTable(tmp)
				tmp:remove()
				moduleCounter = moduleCounter - 1
				displayModuleData:hide()
			end
		
			for i = 1, #shipGrid[1] do
				for j = 1, #shipGrid do
					if shipGrid[j][i] ~= 0 then
						grid1[i][j].color = {100, 100, 100}
					end
				end
			end
			
		end
		tmp.signal = Signal.register('overlap', function() 
			if tmp.isPlaced == false then
				removeFromTable(tmp)
				tmp:remove()
				moduleCounter = moduleCounter - 1
			end
		end)
		tmp.drag.enabled = flag
		tmp:setIndex(gridGr:getIndex() +1)
		tmp:setContent(function() 
			love.graphics.draw(item, 0, 0, 0, (tmp.width) / item:getWidth(), (tmp.height) / item:getHeight())
		end)
end
-- 
function collDetect(item)
		for key, value in pairs(modulesList) do
			if checkCollision(item.x, item.y, math.floor(item.width), math.floor(item.height), value.x, value.y, math.floor(value.width), math.floor(value.height)) and item ~= value then
				Signal.emit('overlap')
			end
		end
	return false
end
--
function removeFromTable(item)
	for key, value in pairs(modulesList) do
		if item == value then table.remove(modulesList, key) end
	end
end
--
function math.lerp(a, b, k) 
	if a == b then return a else
		if math.abs(a-b) < 0.005 then return b else return a * (1-k) + b * k end
	end
end
--
function beamsSpawn(dataTable)
	local squareX = 0
	local squareY = 0
	local counter = 0
	for key, value in ipairs(dataTable) do
		local tmp = uare.new({
		
			x = cellSize.x * 56 + squareX,
			y = cellSize.y * 8 + squareY,

			width = cellSize.x * 10,
			height = cellSize.y * 18,
				
			content = {
				wrap = true,
				width = 0,
				height = 0
			},
			drag = {
				enabled = false				
			},
				
			onClick = function()
				local mx, my = love.mouse.getPosition()
				testModulesSpawn(value, mx - cellSize.x / 2, my - cellSize.y / 2, true, beamsPic[value.name])
			end,
			onHover = function()
				Signal.emit('displayMe', value)
				displayModuleData:show()
			end,
			onReleaseHover = function()
				displayModuleData:hide()	
			end
				
		})
		:style(moduleStyle)
		:anchor(wheelButton)
		:group(beamsGr)
		:setContent(function()
			love.graphics.draw(beamsIcon[value.name], 0, 0, 0, (cellSize.x * 10) / beamsIcon[value.name]:getWidth(), (cellSize.y * 18) / beamsIcon[value.name]:getHeight())
		end)
		squareX = squareX + cellSize.x * 11	
		counter = counter + 1
		if counter%widthScale == 0 then 
			squareX = 0
			squareY = squareY + cellSize.y * 19 
		end
	end
end
--
function cannonsSpawn(dataTable)
	local squareX = 0
	local squareY = 0
	local counter = 0
	for key, value in ipairs(dataTable) do
		local tmp = uare.new({
		
			x = cellSize.x * 56 + squareX,
			y = cellSize.y * 8 + squareY,
			
			width = cellSize.x * 10,
			height = cellSize.y * 18,
				
			content = {
				wrap = true,
				width = 0,
				height = 0
			},
				
			onClick = function()
				local mx, my = love.mouse.getPosition()
				testModulesSpawn(value, mx - cellSize.x / 2, my - cellSize.y / 2, true, cannonsPic[value.name])
			end,
			onHover = function()
				Signal.emit('displayMe', value)
				displayModuleData:show()
			end,
			onReleaseHover = function()
				displayModuleData:hide()	
			end
			
				
		})
		:style(moduleStyle)
		:anchor(wheelButton)
		:group(cannonsGr)
		:setContent(function()
			love.graphics.draw(cannonsIcon[value.name], 0, 0, 0, (cellSize.x * 10) / cannonsIcon[value.name]:getWidth(), (cellSize.y * 18) / cannonsIcon[value.name]:getHeight())
		end)
		squareX = squareX + cellSize.x * 11	
		counter = counter + 1
		if counter%widthScale == 0 then 
			squareX = 0
			squareY = squareY + cellSize.y * 19 
		end
	end
end
--
function missilesSpawn(dataTable)
	local squareX = 0
	local squareY = 0
	local counter = 0
	for key, value in ipairs(dataTable) do
		local tmp = uare.new({
		
			x = cellSize.x * 56 + squareX,
			y = cellSize.y * 8 + squareY,
			
			width = cellSize.x * 10,
			height = cellSize.y * 18,
				
			content = {
				wrap = true,
				width = 0,
				height = 0
			},
				
			onClick = function()
				local mx, my = love.mouse.getPosition()
				testModulesSpawn(value, mx - cellSize.x / 2, my - cellSize.y / 2, true, missilesPic[value.name])
			end,
			onHover = function()
				Signal.emit('displayMe', value)
				displayModuleData:show()
			end, 
			onReleaseHover = function()
				displayModuleData:hide()	
			end			
				
		})
		:style(moduleStyle)
		:anchor(wheelButton)
		:group(missilesGr)
		:setContent(function()
			love.graphics.draw(missilesIcon[value.name], 0, 0, 0, (cellSize.x * 10) / missilesIcon[value.name]:getWidth(), (cellSize.y * 18) / missilesIcon[value.name]:getHeight())
		end)
		squareX = squareX + cellSize.x * 11	
		counter = counter + 1
		if counter%widthScale == 0 then 
			squareX = 0
			squareY = squareY + cellSize.y * 19 
		end
	end
end
--
function engineeringSpawn(dataTable)
	local squareX = 0
	local squareY = 0
	local counter = 0
	for key, value in ipairs(dataTable) do
		local tmp = uare.new({
		
			x = cellSize.x * 56 + squareX,
			y = cellSize.y * 8 + squareY,
			
			width = cellSize.x * 10,
			height = cellSize.y * 18,
				
			content = {
				wrap = true,
				width = 0,
				height = 0
			},
				
			onClick = function()
				local mx, my = love.mouse.getPosition()
				testModulesSpawn(value, mx - cellSize.x / 2, my - cellSize.y / 2, true, engineeringPic[value.name])
			end,
			onHover = function()
				Signal.emit('displayMe', value)
				displayModuleData:show()
			end, 
			onReleaseHover = function()
				displayModuleData:hide()	
			end			
				
		})
		:style(moduleStyle)
		:anchor(wheelButton)
		:group(engineeringGr)
		:setContent(function()
			love.graphics.draw(engineeringIcon[value.name], 0, 0, 0, (cellSize.x * 10) / engineeringIcon[value.name]:getWidth(), (cellSize.y * 18) / engineeringIcon[value.name]:getHeight())
		end)
		squareX = squareX + cellSize.x * 11	
		counter = counter + 1
		if counter%widthScale == 0 then 
			squareX = 0
			squareY = squareY + cellSize.y * 19 
		end
	end
end
--
function enginesSpawn(dataTable)
	local squareX = 0
	local squareY = 0
	local counter = 0
	for key, value in ipairs(dataTable) do
		local tmp = uare.new({
		
			x = cellSize.x * 56 + squareX,
			y = cellSize.y * 8 + squareY,
			
			width = cellSize.x * 10,
			height = cellSize.y * 18,
				
			content = {
				wrap = true,
				width = 0,
				height = 0
			},
				
			onClick = function()
				local mx, my = love.mouse.getPosition()
				testModulesSpawn(value, mx - cellSize.x / 2, my - cellSize.y / 2, true, enginesPic[value.name])
			end,
			onHover = function()
				Signal.emit('displayMe', value)
				displayModuleData:show()
			end, 
			onReleaseHover = function()
				displayModuleData:hide()	
			end				
				
		})
		:style(moduleStyle)
		:anchor(wheelButton)
		:group(enginesGr)
		:setContent(function()
			love.graphics.draw(enginesIcon[value.name], 0, 0, 0, (cellSize.x * 10) / enginesIcon[value.name]:getWidth(), (cellSize.y * 18) / enginesIcon[value.name]:getHeight())
		end)
		squareX = squareX + cellSize.x * 11	
		counter = counter + 1
		if counter%widthScale == 0 then 
			squareX = 0
			squareY = squareY + cellSize.y * 19 
		end
	end
end
--
function armorSpawn(dataTable)
	local squareX = 0
	local squareY = 0
	local counter = 0
	for key, value in ipairs(dataTable) do
		local tmp = uare.new({
		
			x = cellSize.x * 56 + squareX,
			y = cellSize.y * 8 + squareY,
			
			width = cellSize.x * 10,
			height = cellSize.y * 18,
				
			content = {
				wrap = true,
				width = 0,
				height = 0
			},
				
			onClick = function()
				local mx, my = love.mouse.getPosition()
				testModulesSpawn(value, mx - cellSize.x / 2, my - cellSize.y / 2, true, armorPic[value.name])
			end,
			onHover = function()
				Signal.emit('displayMe', value)
				displayModuleData:show()
			end, 
			onReleaseHover = function()
				displayModuleData:hide()	
			end				
				
		})
		:style(moduleStyle)
		:anchor(wheelButton)
		:group(armorsGr)
		:setContent(function()
			love.graphics.draw(armorIcon[value.name], 0, 0, 0, (cellSize.x * 10) / armorIcon[value.name]:getWidth(), (cellSize.y * 18) / armorIcon[value.name]:getHeight())
		end)
		squareX = squareX + cellSize.x * 11	
		counter = counter + 1
		if counter%widthScale == 0 then 
			squareX = 0
			squareY = squareY + cellSize.y * 19
		end
	end
end
--
function shieldSpawn(dataTable)
	local squareX = 0
	local squareY = 0
	local counter = 0
	for key, value in ipairs(dataTable) do
		local tmp = uare.new({
		
			x = cellSize.x * 56 + squareX,
			y = cellSize.y * 8 + squareY,
			
			width = cellSize.x * 10,
			height = cellSize.y * 18,
				
			content = {
				wrap = true,
				width = 0,
				height = 0
			},
				
			onClick = function()
				local mx, my = love.mouse.getPosition()
				testModulesSpawn(value, mx - cellSize.x / 2, my - cellSize.y / 2, true, shieldPic[value.name])
			end,
			onHover = function()
				Signal.emit('displayMe', value)
				displayModuleData:show()
			end, 
			onReleaseHover = function()
				displayModuleData:hide()	
			end				
				
		})
		:style(moduleStyle)
		:anchor(wheelButton)
		:group(shieldsgGr)
		:setContent(function()
			love.graphics.draw(shieldIcon[value.name], 0, 0, 0, (cellSize.x * 10) / shieldIcon[value.name]:getWidth(), (cellSize.y * 18) / shieldIcon[value.name]:getHeight())
		end)
		squareX = squareX + cellSize.x * 11	
		counter = counter + 1
		if counter%widthScale == 0 then 
			squareX = 0
			squareY = squareY + cellSize.y * 19 
		end
	end
end
--
function ammoSpawn(dataTable)
	local squareX = 0
	local squareY = 0
	local counter = 0
	for key, value in ipairs(dataTable) do
		local tmp = uare.new({
		
			x = cellSize.x * 56 + squareX,
			y = cellSize.y * 8 + squareY,
			
			width = cellSize.x * 10,
			height = cellSize.y * 18,
				
			content = {
				wrap = true,
				width = 0,
				height = 0
			},
				
			onClick = function()
				local mx, my = love.mouse.getPosition()
				testModulesSpawn(value, mx - cellSize.x / 2, my - cellSize.y / 2, true, ammoPic[value.name])
			end,
			onHover = function()
				Signal.emit('displayMe', value)
				displayModuleData:show()
			end, 
			onReleaseHover = function()
				displayModuleData:hide()	
			end				
				
		})
		:style(moduleStyle)
		:anchor(wheelButton)
		:group(ammosGr)
		:setContent(function()
			love.graphics.draw(ammoIcon[value.name], 0, 0, 0, (cellSize.x * 10) / ammoIcon[value.name]:getWidth(), (cellSize.y * 18) / ammoIcon[value.name]:getHeight())
		end)
		squareX = squareX + cellSize.x * 11	
		counter = counter + 1
		if counter%widthScale == 0 then 
			squareX = 0
			squareY = squareY + cellSize.y * 19 
		end
	end
end
--
function sorting(a,b)
	return a.num< b.num
end

--
return editor

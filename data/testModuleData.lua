
-- test module list. Include diff types pf modules
-- matching table equal to codes - 1 - Beams, 2 - Cannons, 3 - Rockets, 4 - Engineering, 5 - Engines. 
mdl = {
	beams = {
	--- Small laser 1x1
		{
			num = 1,
			name = 'Small Laser',
			icon = 'res/moduleIcons/laser/small_laser.png', 
			pic = 'res/moduleIcons/laser/pic/small_laser_pic.png',
			width = 1,
			height = 1,
			damage = 14,
			dps = 7,
			coolDown = 2,
			range = 3700,
			cap = 16,
			matching = {1, 0, 0, 0, 0},
			TPCost = 12,
			mass = 200
			-- card res
			-- rarity
		},	
		{
			num = 1.1,		
			name = 'Pulse Small Laser',
			icon = 'res/moduleIcons/laser/small_laser_PULSE.png', 
			pic = 'res/moduleIcons/laser/pic/small_laser_PULSE_pic.png',
			width = 1,
			height = 1,
			damage = 15,
			dps = 15,
			coolDown = 1,
			range = 2500,
			cap = 26,
			matching = {1, 0, 0, 0, 0},
			TPCost = 20,
			mass = 200
			-- card res
			-- rarity
		},
		{
			num = 1.2,		
			name = 'Long Range Small Laser',
			icon = 'res/moduleIcons/laser/small_laser_LR.png', 
			pic = 'res/moduleIcons/laser/pic/small_laser_LR_pic.png',
			width = 1,
			height = 1,
			damage = 18,
			dps = 9,
			coolDown = 2,
			range = 6000,
			cap = 19,
			matching = {1, 0, 0, 0, 0},
			TPCost = 17,
			mass = 200
			-- card res
			-- rarity
		},		
		
	--- Laser 1x2
		{
			num = 2,		
			name = 'Laser',
			icon = 'res/moduleIcons/laser/laser.png', 
			pic = 'res/moduleIcons/laser/pic/laser_pic.png',
			width = 1,
			height = 2,
			damage = 65,
			dps = 21.667,
			coolDown = 3,
			range = 5000,
			cap = 64,
			matching = {1, 0, 0, 0, 0},
			TPCost = 55,
			mass = 400
			-- card res
			-- rarity
		},
		{
			num = 2.1,		
			name = 'Pulse Laser',
			icon = 'res/moduleIcons/laser/laser_PULSE.png', 
			pic = 'res/moduleIcons/laser/pic/laser_PULSE_pic.png',
			width = 1,
			height = 2,
			damage = 48,
			dps = 32,
			coolDown = 1.5,
			range = 3500,
			cap = 71,
			matching = {1, 0, 0, 0, 0},
			TPCost = 53,
			mass = 400
			-- card res
			-- rarity
		},		
		{
			num = 2.2,		
			name = 'Long Range Laser',
			icon = 'res/moduleIcons/laser/laser_LR.png', 
			pic = 'res/moduleIcons/laser/pic/laser_LR_pic.png',
			width = 1,
			height = 2,
			damage = 83,
			dps = 27.667,
			coolDown = 3,
			range = 8000,
			cap = 73,
			matching = {1, 0, 0, 0, 0},
			TPCost = 68,
			mass = 400
			-- card res
			-- rarity
		},
		
	--- Medium Laser 1x3
		{
			num = 3,		
			name = 'Medium Laser',
			icon = 'res/moduleIcons/laser/medium_laser.png', 
			pic = 'res/moduleIcons/laser/pic/medium_laser_pic.png',
			width = 1,
			height = 3,
			damage = 170,
			dps = 34,
			coolDown = 5,
			range = 6000,
			cap = 117,
			matching = {1, 0, 0, 0, 0},
			TPCost = 89,
			mass = 400
			-- card res
			-- rarity
		},	
		{
			num = 3.1,		
			name = 'Pulse Medium Laser',
			icon = 'res/moduleIcons/laser/medium_laser_PULSE.png', 
			pic = 'res/moduleIcons/laser/pic/medium_laser_PULSE_pic.png',
			width = 1,
			height = 3,
			damage = 140,
			dps = 56,
			coolDown = 2.5,
			range = 4000,
			cap = 136,
			matching = {1, 0, 0, 0, 0},
			TPCost = 103,
			mass = 600
			
			-- rarity
		},
		{
			num = 3.2,		
			name = 'Long Range Medium Laser',
			icon = 'res/moduleIcons/laser/medium_laser_LR.png', 
			pic = 'res/moduleIcons/laser/pic/medium_laser_LR_pic.png',
			width = 1,
			height = 3,
			damage = 210,
			dps = 42,
			coolDown = 5,
			range = 11000,
			cap = 134,
			matching = {1, 0, 0, 0, 0},
			TPCost = 144,
			mass = 600
			-- card res
			-- rarity
		},
		{
			num = 3.3,		
			name = 'HEAT Medium Laser',
			icon = 'res/moduleIcons/laser/medium_laser_HEAT.png', 
			pic = 'res/moduleIcons/laser/pic/medium_laser_HEAT_pic.png',
			width = 1,
			height = 3,
			damage = 20,
			dps = 60,
			coolDown = 0.333,
			range = 7000,
			cap = 157,
			matching = {1, 0, 0, 0, 0},
			TPCost = 182,
			mass = 600
			-- card res
			-- rarity
		},		
	--- Large Laser 2x3
		{
			num = 4,		
			name = 'Large Laser',
			icon = 'res/moduleIcons/laser/large_laser.png', 
			pic = 'res/moduleIcons/laser/pic/large_laser_pic.png',
			width = 2,
			height = 3,
			damage = 500,
			dps = 55.56,
			coolDown = 9,
			range = 10000,
			cap = 250,
			matching = {1, 0, 0, 0, 0},
			TPCost = 242,
			mass = 1200
			-- card res
			-- rarity
		},
		{
			num = 4.1,		
			name = 'Pulse Large Laser',
			icon = 'res/moduleIcons/laser/large_laser_PULSE.png', 
			pic = 'res/moduleIcons/laser/pic/large_laser_PULSE_pic.png',
			width = 2,
			height = 3,
			damage = 350,
			dps = 77.778,
			coolDown = 4.5,
			range = 7000,
			cap = 248,
			matching = {1, 0, 0, 0, 0},
			TPCost = 236,
			mass = 1200
			-- card res
			-- rarity
		},			
		{
			num = 4.2,		
			name = 'Long Range Large Laser',
			icon = 'res/moduleIcons/laser/large_laser_LR.png', 
			pic = 'res/moduleIcons/laser/pic/large_laser_LR_pic.png',
			width = 2,
			height = 3,
			damage = 550,
			dps = 61.11,
			coolDown = 9,
			range = 15000,
			cap = 257,
			matching = {1, 0, 0, 0, 0},
			TPCost = 292,
			mass = 1200
			-- card res
			-- rarity
		},
	
		{
			num = 4.3,		
			name = 'HEAT Large Laser',
			icon = 'res/moduleIcons/laser/large_laser_HEAT.png', 
			pic = 'res/moduleIcons/laser/pic/large_laser_HEAT_pic.png',
			width = 2,
			height = 3,
			damage = 35,
			dps = 105,
			coolDown = 0.333,
			range = 11000,
			cap = 254,
			matching = {1, 0, 0, 0, 0},
			TPCost = 304,
			mass = 1200
			-- card res
			-- rarity
		},
	--- Special lasers
		{
			num = 5,		
			name = 'Phantom Laser',
			icon = 'res/moduleIcons/laser/phantom_laser.png', 
			pic = 'res/moduleIcons/laser/pic/phantom_laser_pic.png',
			width = 2,
			height = 2,
			damage = 100,
			dps = 16.7,
			coolDown = 6,
			range = 6000,
			cap = 52,
			matching = {1, 0, 0, 0, 0},
			TPCost = 28,
			mass = 400
			-- card res
			-- rarity
		},
		{	
			num = 5.1,
			name = 'CQC Laser',
			icon = 'res/moduleIcons/laser/cqc_laser.png', 
			pic = 'res/moduleIcons/laser/pic/cqc_laser_pic.png',
			width =3,
			height = 1,
			damage = 60,
			dps = 60,
			coolDown = 1,
			range = 7000,
			cap = 134,
			matching = {1, 0, 0, 0, 0},
			TPCost = 130,
			mass = 300
			-- card res
			-- rarity
		},	
		{	
			num = 5.2,		
			name = 'Spear of Wrath',
			icon = 'res/moduleIcons/laser/spear_of_wrath.png', 
			pic = 'res/moduleIcons/laser/pic/spear_of_wrath_pic.png',
			width = 2,
			height = 4,
			damage = 850,
			dps = 70.833,
			coolDown = 12,
			range = 16000,
			cap = 296,
			matching = {1, 0, 0, 0, 0},
			TPCost = 509,
			mass = 800
			-- card res
			-- rarity
		},			
	},
	cannons = {
	--- Blaster Cannons 2x1 & 3x1 & 2x3
		{
			num = 1,
			name = 'Blaster Cannon',		
			icon = 'res/moduleIcons/cannon/blaster_cannon.png', 
			pic = 'res/moduleIcons/cannon/pic/blaster_cannon_pic.png',
			width = 2,
			height = 1,
			damage = 28,
			dps = 28,
			coolDown = 1,
			range = 4600,
			cap = 76,
			matching = {0, 2, 0, 0, 0},
			TPCost = 49,
			mass = 200		
			-- card res
			-- rarity
		},
		{
			num = 1.1,
			name = 'Assault Blaster Cannon',		
			icon = 'res/moduleIcons/cannon/blaster_cannon_ASSAULT.png', 
			pic = 'res/moduleIcons/cannon/pic/blaster_cannon_ASSAULT_pic.png',
			width = 2,
			height = 1,
			damage = 46,
			dps = 30.667,
			coolDown = 1.5,
			range = 4000,
			cap = 76,
			matching = {0, 2, 0, 0, 0},
			TPCost = 45,
			mass = 200		
			-- card res
			-- rarity
		},
		{
			num = 1.2,
			name = 'EMP Blaster Cannon',		
			icon = 'res/moduleIcons/cannon/blaster_cannon_EMP.png', 
			pic = 'res/moduleIcons/cannon/pic/blaster_cannon_EMP_pic.png',
			width = 2,
			height = 1,
			damage = 28,
			dps = 28,
			coolDown = 1,
			range = 4600,
			cap = 76,
			matching = {0, 2, 0, 0, 0},
			TPCost = 49,
			mass = 200		
			-- card res
			-- rarity
		},		
		{
			num = 1.3,
			name = 'Blaster Artillery',		
			icon = 'res/moduleIcons/cannon/blaster_artillery.png', 
			pic = 'res/moduleIcons/cannon/pic/blaster_artillery_pic.png',
			width = 2,
			height = 3,
			damage = 450,
			dps = 75,
			coolDown = 6,
			range = 14000,
			cap = 308,
			matching = {0, 2, 0, 0, 0},
			TPCost = 245,
			mass = 600		
			-- card res
			-- rarity
		},
		{
			num = 1.4,
			name = 'Assault Blaster Artillery',		
			icon = 'res/moduleIcons/cannon/blaster_artillery_ASSAULT.png', 
			pic = 'res/moduleIcons/cannon/pic/blaster_artillery_ASSAULT_pic.png',
			width = 2,
			height = 3,
			damage = 696,
			dps = 77.333,
			coolDown = 9,
			range = 14000,
			cap = 346,
			matching = {0, 2, 0, 0, 0},
			TPCost = 404,
			mass = 600		
			-- card res
			-- rarity
		},
		{
			num = 1.5,
			name = 'EMP Blaster Artillery',		
			icon = 'res/moduleIcons/cannon/blaster_artillery_EMP.png', 
			pic = 'res/moduleIcons/cannon/pic/blaster_artillery_EMP_pic.png',
			width = 2,
			height = 3,
			damage = 450,
			dps = 75,
			coolDown = 6,
			range = 14000,
			cap = 346,
			matching = {0, 2, 0, 0, 0},
			TPCost = 404,
			mass = 600		
			-- card res
			-- rarity
		},		
		{
			num = 1.7,
			name = 'EMP Spread Blaster Cannon',		
			icon = 'res/moduleIcons/cannon/emp_spread_blaster_cannon.png', 
			pic = 'res/moduleIcons/cannon/pic/emp_spread_blaster_cannon_pic.png',
			width = 3,
			height = 1,
			damage = 80,
			dps = 44.444,
			coolDown = 1.8,
			range = 4000,
			cap = 92,
			matching = {0, 2, 0, 0, 0},
			TPCost = 57,
			mass = 300		
			-- card res
			-- rarity
		},
		{
			num = 1.6,
			name = 'Spread Blaster Cannon',		
			icon = 'res/moduleIcons/cannon/spread_blaster_cannon.png', 
			pic = 'res/moduleIcons/cannon/pic/spread_blaster_cannon_pic.png',
			width = 3,
			height = 1,
			damage = 80,
			dps = 44.444,
			coolDown = 1.8,
			range = 4000,
			cap = 92,
			matching = {0, 2, 0, 0, 0},
			TPCost = 57,
			mass = 300		
			-- card res
			-- rarity
		},
	--- Cannons 1x1 & 1x2 & 2x2 & 3x2	
		--- Small 1x1
		{
			num = 2,
			name = 'Auto Gun',		
			icon = 'res/moduleIcons/cannon/small_cannon.png', 
			pic = 'res/moduleIcons/cannon/pic/small_cannon_pic.png',
			width = 1,
			height = 1,
			damage = 8,
			dps = 8,
			coolDown = 1,
			range = 5000,
			cap = 20,
			matching = {0, 2, 0, 0, 0},
			TPCost = 14,
			mass = 100		
			-- card res
			-- rarity
		},
		{
			num = 2.2,
			name = 'Piercing Auto Gun',		
			icon = 'res/moduleIcons/cannon/small_AP_cannon.png', 
			pic = 'res/moduleIcons/cannon/pic/small_AP_cannon_pic.png',
			width = 1,
			height = 1,
			damage = 7,
			dps = 7,
			coolDown = 1,
			range = 4300,
			cap = 20,
			matching = {0, 2, 0, 0, 0},
			TPCost = 14,
			mass = 100		
			-- card res
			-- rarity
		},
		{
			num = 2.1,
			name = 'Assault Auto Gun',		
			icon = 'res/moduleIcons/cannon/small_ASSAULT_cannon.png', 
			pic = 'res/moduleIcons/cannon/pic/small_ASSAULT_cannon_pic.png',
			width = 1,
			height = 1,
			damage = 16,
			dps = 8.9,
			coolDown = 1.8,
			range = 4500,
			cap = 20,
			matching = {0, 2, 0, 0, 0},
			TPCost = 14,
			mass = 100		
			-- card res
			-- rarity
		},	
		{
			num = 2.3,
			name = 'Melting Auto Gun',		
			icon = 'res/moduleIcons/cannon/small_MELTING_cannon.png', 
			pic = 'res/moduleIcons/cannon/pic/small_MELTING_cannon_pic.png',
			width = 1,
			height = 1,
			damage = 8,
			dps = 6.4,
			coolDown = 1.25,
			range = 4000,
			cap = 20,
			matching = {0, 2, 0, 0, 0},
			TPCost = 14,
			mass = 100		
			-- card res
			-- rarity
		},
		--- Small 1x2
		{
			num = 3,
			name = 'Heavy Cannon',		
			icon = 'res/moduleIcons/cannon/recon_cannon.png', 
			pic = 'res/moduleIcons/cannon/pic/recon_cannon_pic.png',
			width = 1,
			height = 2,
			damage = 36,
			dps = 18,
			coolDown = 2,
			range = 6800,
			cap = 57,
			matching = {0, 2, 0, 0, 0},
			TPCost = 42,
			mass = 200		
			-- card res
			-- rarity
		},
		{
			num = 3.1,
			name = 'Assault Heavy Cannon',		
			icon = 'res/moduleIcons/cannon/recon_cannon_ASSAULT.png', 
			pic = 'res/moduleIcons/cannon/pic/recon_cannon_ASSAULT_pic.png',
			width = 1,
			height = 2,
			damage = 68,
			dps = 18.89,
			coolDown = 3.6,
			range = 6160,
			cap = 57,
			matching = {0, 2, 0, 0, 0},
			TPCost = 41,
			mass = 200		
			-- card res
			-- rarity
		},		
		{
			num = 3.2,
			name = 'Piercing Heavy Cannon',		
			icon = 'res/moduleIcons/cannon/recon_cannon_AP.png', 
			pic = 'res/moduleIcons/cannon/pic/recon_cannon_AP_pic.png',
			width = 1,
			height = 2,
			damage = 25,
			dps = 15.625,
			coolDown = 1.6,
			range = 6000,
			cap = 57,
			matching = {0, 2, 0, 0, 0},
			TPCost = 42,
			mass = 200		
			-- card res
			-- rarity
		},			
		{
			num = 3.3,
			name = 'Melting Heavy Cannon',		
			icon = 'res/moduleIcons/cannon/recon_cannon_MELTING.png', 
			pic = 'res/moduleIcons/cannon/pic/recon_cannon_MELTING_pic.png',
			width = 1,
			height = 2,
			damage = 40,
			dps = 14.286,
			coolDown = 2.8,
			range = 5200,
			cap = 57,
			matching = {0, 2, 0, 0, 0},
			TPCost = 41,
			mass = 200		
			-- card res
			-- rarity
		},			
		
		--- Medium 2x2
		{
			num = 4,
			name = 'Auto Cannon',		
			icon = 'res/moduleIcons/cannon/medium_cannon.png', 
			pic = 'res/moduleIcons/cannon/pic/medium_cannon_pic.png',
			width = 2,
			height = 2,
			damage = 69,
			dps = 34.5,
			coolDown = 2,
			range = 8500,
			cap = 137,
			matching = {0, 2, 0, 0, 0},
			TPCost = 105,
			mass = 400		
			-- card res
			-- rarity
		},	
		{
			num = 4.1,
			name = 'Assault Auto Cannon',		
			icon = 'res/moduleIcons/cannon/medium_ASSAULT_cannon.png', 
			pic = 'res/moduleIcons/cannon/pic/medium_ASSAULT_cannon_pic.png',
			width = 2,
			height = 2,
			damage = 138,
			dps = 39.429,
			coolDown = 3.5,
			range = 7700,
			cap = 137,
			matching = {0, 2, 0, 0, 0},
			TPCost = 103,
			mass = 400		
			-- card res
			-- rarity
		},	
		{
			num = 4.2,
			name = 'Piercing Auto Cannon',		
			icon = 'res/moduleIcons/cannon/medium_AP_cannon.png', 
			pic = 'res/moduleIcons/cannon/pic/medium_AP_cannon_pic.png',
			width = 2,
			height = 2,
			damage = 60,
			dps = 30,
			coolDown = 2,
			range = 7500,
			cap = 137,
			matching = {0, 2, 0, 0, 0},
			TPCost = 104,
			mass = 800		
			-- card res
			-- rarity
		},
		{
			num = 4.3,
			name = 'Melting Auto Cannon',		
			icon = 'res/moduleIcons/cannon/medium_MELTING_cannon.png', 
			pic = 'res/moduleIcons/cannon/pic/medium_MELTING_cannon_pic.png',
			width = 2,
			height = 2,
			damage = 72,
			dps = 28.8,
			coolDown = 2.5,
			range = 6500,
			cap = 137,
			matching = {0, 2, 0, 0, 0},
			TPCost = 101,
			mass = 400		
			-- card res
			-- rarity
		},			
		--- Heavy 3x2
		{
			num = 5,
			name = 'Heavy Auto Cannon',		
			icon = 'res/moduleIcons/cannon/heavy_cannon.png', 
			pic = 'res/moduleIcons/cannon/pic/heavy_cannon_pic.png',
			width = 3,
			height = 2,
			damage = 194,
			dps = 55.429,
			coolDown = 3.5,
			range = 8500,
			cap = 220,
			matching = {0, 2, 0, 0, 0},
			TPCost = 169,
			mass = 600		
			-- card res
			-- rarity
		},
		{
			num = 5.1,
			name = 'Assault Heavy Auto Cannon',		
			icon = 'res/moduleIcons/cannon/heavy_ASSAULT_cannon.png', 
			pic = 'res/moduleIcons/cannon/pic/heavy_ASSAULT_cannon_pic.png',
			width = 3,
			height = 2,
			damage = 400,
			dps = 63.492,
			coolDown = 6.3,
			range = 7700,
			cap = 220,
			matching = {0, 2, 0, 0, 0},
			TPCost = 166,
			mass = 600		
			-- card res
			-- rarity
		},		
		{
			num = 5.2,
			name = 'Piercing Heavy Auto Cannon',		
			icon = 'res/moduleIcons/cannon/heavy_AP_cannon.png', 
			pic = 'res/moduleIcons/cannon/pic/heavy_AP_cannon_pic.png',
			width = 3,
			height = 2,
			damage = 168.5,
			dps = 48.143,
			coolDown = 3.5,
			range = 7500,
			cap = 220,
			matching = {0, 2, 0, 0, 0},
			TPCost = 168,
			mass = 1200		
			-- card res
			-- rarity
		},
		{
			num = 5.3,
			name = 'Melting Heavy Auto Cannon',		
			icon = 'res/moduleIcons/cannon/heavy_MELTING_cannon.png', 
			pic = 'res/moduleIcons/cannon/pic/heavy_MELTING_cannon_pic.png',
			width = 3,
			height = 2,
			damage = 203,
			dps = 46.136,
			coolDown = 4.4,
			range = 6500,
			cap = 220,
			matching = {0, 2, 0, 0, 0},
			TPCost = 162,
			mass = 600		
			-- card res
			-- rarity
		},
		--- Gauss Cannons 2x4
		{
			num = 6,
			name = 'Gauss Cannon',		
			icon = 'res/moduleIcons/cannon/gauss_cannon.png', 
			pic = 'res/moduleIcons/cannon/pic/gauss_cannon_pic.png',
			width = 2,
			height = 4,
			damage = 700,
			dps = 38.889,
			coolDown = 18,
			range = 17000,
			cap = 335,
			matching = {0, 2, 0, 0, 0},
			TPCost = 247,
			mass = 800		
			-- card res
			-- rarity
		},		
		{
		 	num = 6.1,
			name = 'Power Gauss Cannon',		
			icon = 'res/moduleIcons/cannon/gauss_POWER.png', 
			pic = 'res/moduleIcons/cannon/pic/gauss_POWER_pic.png',
			width = 2,
			height = 4,
			damage = 1300,
			dps = 59.091,
			coolDown = 22,
			range = 17000,
			cap = 370,
			matching = {0, 2, 0, 0, 0},
			TPCost = 272,
			mass = 800		
			-- card res
			-- rarity
		},	
		{
			num = 6.2,
			name = 'Auto Gauss Cannon',		
			icon = 'res/moduleIcons/cannon/gauss_AUTO.png', 
			pic = 'res/moduleIcons/cannon/pic/gauss_AUTO_pic.png',
			width = 2,
			height = 4,
			damage = 500,
			dps = 41.667,
			coolDown = 12,
			range = 14000,
			cap = 288,
			matching = {0, 2, 0, 0, 0},
			TPCost = 207,
			mass = 800		
			-- card res
			-- rarity
		},
		---Plasma Cannons 1x4 & 2x4
		{
		 	num = 7,
			name = 'Plasma Cannon',		
			icon = 'res/moduleIcons/cannon/plasma_gun.png', 
			pic = 'res/moduleIcons/cannon/pic/plasma_gun_pic.png',
			width = 1,
			height = 4,
			damage = 120,
			dps = 30,
			coolDown = 4,
			range = 7000,
			cap = 151,
			matching = {0, 2, 0, 0, 0},
			TPCost = 97,
			mass = 400		
			-- card res
			-- rarity
		},	
		{
		 	num = 7.1,
			name = 'Corrosive Plasma Cannon',		
			icon = 'res/moduleIcons/cannon/plasma_gun_CORROSIVE.png', 
			pic = 'res/moduleIcons/cannon/pic/plasma_gun_CORROSIVE_pic.png',
			width = 1,
			height = 4,
			damage = 100,
			dps = 25,
			coolDown = 4,
			range = 5000,
			cap = 98,
			matching = {0, 2, 0, 0, 0},
			TPCost = 59,
			mass = 400		
			-- card res
			-- rarity
		},
		{
		 	num = 7.2,
			name = 'Heavy Plasma Cannon',		
			icon = 'res/moduleIcons/cannon/heavy_plasma_gun.png', 
			pic = 'res/moduleIcons/cannon/pic/heavy_plasma_gun_pic.png',
			width = 2,
			height = 4,
			damage = 450,
			dps = 56.26,
			coolDown = 8,
			range = 10000,
			cap = 355,
			matching = {0, 2, 0, 0, 0},
			TPCost = 261,
			mass = 800		
			-- card res
			-- rarity
		},	
		{
		 	num = 7.3,
			name = 'Corrosive Heavy Plasma Cannon',		
			icon = 'res/moduleIcons/cannon/heavy_plasma_gun_CORROSIVE.png', 
			pic = 'res/moduleIcons/cannon/pic/heavy_plasma_gun_CORROSIVE_pic.png',
			width = 2,
			height = 4,
			damage = 400,
			dps = 50,
			coolDown = 8,
			range = 7000,
			cap = 248,
			matching = {0, 2, 0, 0, 0},
			TPCost = 163,
			mass = 800		
			-- card res
			-- rarity
		},			
	},
	missiles = {
	--- Typhoon 2x1
		{
			num = 1,
			name = 'Typhoon Rocket Launcher',		
			icon = 'res/moduleIcons/missile/typhoon_missile.png', 
			pic = 'res/moduleIcons/missile/pic/typhoon_missile_pic.png',
			width = 2,
			height = 1,
			damage = 18,
			dps = 12,
			coolDown = 1.5,
			range = 5500,
			cap = 39,
			matching = {0, 0, 3, 0, 0},
			TPCost = 26,
			mass = 200		
			-- card res
			-- rarity
		},
		{
			num = 1.1,
			name = 'Salvo Typhoon Rocket Launcher',		
			icon = 'res/moduleIcons/missile/typhoon_missile_SALVO.png', 
			pic = 'res/moduleIcons/missile/pic/typhoon_missile_SALVO_pic.png',
			width = 2,
			height = 1,
			damage = 18,
			dps = 12,
			coolDown = 1.5,
			range = 5500,
			cap = 39,
			matching = {0, 0, 3, 0, 0},
			TPCost = 26,
			mass = 200		
			-- card res
			-- rarity
		},			
	--- Swarm 2x2
		{
			num = 2,
			name = 'Swarm Rocket Launcher',		
			icon = 'res/moduleIcons/missile/swarm_misiles.png', 
			pic = 'res/moduleIcons/missile/pic/swarm_missiles_pic.png',
			width = 2,
			height = 2,
			damage = 52,
			dps = 26,
			coolDown = 2,
			range = 6000,
			cap = 91,
			matching = {0, 0, 3, 0, 0},
			TPCost = 62,
			mass = 480		
			-- card res
			-- rarity
		},
		{
			num = 2.1,
			name = 'Salvo Swarm Rocket Launcher',		
			icon = 'res/moduleIcons/missile/swarm_misiles_SALVO.png', 
			pic = 'res/moduleIcons/missile/pic/swarm_missiles_SALVO_pic.png',
			width = 2,
			height = 2,
			damage = 52,
			dps = 26,
			coolDown = 2,
			range = 6000,
			cap = 91,
			matching = {0, 0, 3, 0, 0},
			TPCost = 62,
			mass = 480		
			-- card res
			-- rarity
		},		
	--- Plasma 3x1
		{
			num = 3,
			name = 'Plasma Missile Launcher',		
			icon = 'res/moduleIcons/missile/plasma_missile.png', 
			pic = 'res/moduleIcons/missile/pic/plasma_missile_pic.png',
			width = 3,
			height = 1,
			damage = 80,
			dps = 26.667,
			coolDown = 3,
			range = 5000,
			cap = 120,
			matching = {0, 0, 3, 0, 0},
			TPCost = 65,
			mass = 300		
			-- card res
			-- rarity
		},		
		{
			num = 3.1,
			name = 'Salvo Plasma Missile Launcher',		
			icon = 'res/moduleIcons/missile/plasma_missile_SALVO.png', 
			pic = 'res/moduleIcons/missile/pic/plasma_missile_SALVO_pic.png',
			width = 3,
			height = 1,
			damage = 80,
			dps = 26.667,
			coolDown = 3,
			range = 5000,
			cap = 120,
			matching = {0, 0, 3, 0, 0},
			TPCost = 65,
			mass = 300		
			-- card res
			-- rarity
		},		
	--- Hurricane 4x2
		{
			num = 4,
			name = 'Hurricane Rocket Launcher',		
			icon = 'res/moduleIcons/missile/hurricane_missile.png', 
			pic = 'res/moduleIcons/missile/pic/hurricane_missile_pic.png',
			width = 4,
			height = 2,
			damage = 230,
			dps = 57.5,
			coolDown = 4,
			range = 6500,
			cap = 216,
			matching = {0, 0, 3, 0, 0},
			TPCost = 147,
			mass = 960		
			-- card res
			-- rarity
		},
		{
			num = 4.1,
			name = 'Salvo Hurricane Rocket Launcher',		
			icon = 'res/moduleIcons/missile/hurricane_missile_SALVO.png', 
			pic = 'res/moduleIcons/missile/pic/hurricane_missile_SALVO_pic.png',
			width = 4,
			height = 2,
			damage = 230,
			dps = 57.5,
			coolDown = 4,
			range = 6500,
			cap = 216,
			matching = {0, 0, 3, 0, 0},
			TPCost = 147,
			mass = 960		
			-- card res
			-- rarity
		},
	--- Photons 3x2 & 3x3
		{
			num = 5,
			name = 'Photon Rocket Launcher',		
			icon = 'res/moduleIcons/missile/photon_rocket.png', 
			pic = 'res/moduleIcons/missile/pic/photon_rocket_pic.png',
			width = 3,
			height = 2,
			damage = 220,
			dps = 36.667,
			coolDown = 6,
			range = 8000,
			cap = 210,
			matching = {0, 0, 3, 0, 0},
			TPCost = 115,
			mass = 600		
			-- card res
			-- rarity
		},
		{
			num = 5.1,
			name = 'Photon Torpedo Launcher',		
			icon = 'res/moduleIcons/missile/photon_torpedo.png', 
			pic = 'res/moduleIcons/missile/pic/photon_torpedo_pic.png',
			width = 3,
			height = 3,
			damage = 400,
			dps = 40,
			coolDown = 10,
			range = 15000,
			cap = 292,
			matching = {0, 0, 3, 0, 0},
			TPCost = 241,
			mass = 1080		
			-- card res
			-- rarity
		},
	--- Torpedoes 2x4 & 2x3 & Avalanche
		{
			num = 6,
			name = 'Nuclear Torpedo Launcher',		
			icon = 'res/moduleIcons/missile/proton_torpedo.png', 
			pic = 'res/moduleIcons/missile/pic/proton_torpedo_pic.png',
			width = 2,
			height = 3,
			damage = 150,
			dps = 21.429,
			coolDown = 7,
			range = 8000,
			cap = 218,
			matching = {0, 0, 3, 0, 0},
			TPCost = 187,
			mass = 1200		
			-- card res
			-- rarity
		},
		{
			num = 6.1,
			name = 'Reaper Torpedo Launcher',		
			icon = 'res/moduleIcons/missile/reaper_torpedo.png', 
			pic = 'res/moduleIcons/missile/pic/reaper_torpedo_pic.png',
			width = 2,
			height = 4,
			damage = 400,
			dps = 33.333,
			coolDown = 12,
			range = 15000,
			cap = 295,
			matching = {0, 0, 3, 0, 0},
			TPCost = 331,
			mass = 1600		
			-- card res
			-- rarity
		},
		{
			num = 6.2,
			name = 'Melted Avalanche',		
			icon = 'res/moduleIcons/missile/melted_avalache.png', 
			pic = 'res/moduleIcons/missile/pic/melted_avalache_pic.png',
			width = 3,
			height = 3,
			damage = 1700,
			dps = 48.571,
			coolDown = 35,
			range = 6000,
			cap = 169,
			matching = {0, 0, 3, 0, 0},
			TPCost = 115,
			mass = 2700		
			-- card res
			-- rarity
		},		
	},
	engineering = {
--- Sensors
		{
			num = 1,
			name = 'Advanced Sensors',		
			icon = 'res/moduleIcons/engineering/ADVANCED_SENSORS.png', 
			pic = 'res/moduleIcons/engineering/pic/ADVANCED_SENSORS_pic.png',
			width = 1,
			height = 3,
			cap = 150,
			matching = {0, 0, 0, 4, 0},
			TPCost = 200,
			mass = 340		
			-- card res
			-- rarity
		},
		{
			num = 1.1,
			name = 'Long Range Scanner',		
			icon = 'res/moduleIcons/engineering/LONG_RANGE_SCANNER.png', 
			pic = 'res/moduleIcons/engineering/pic/LONG_RANGE_SCANNER_pic.png',
			width = 3,
			height = 2,
			cap = 150,
			matching = {0, 0, 0, 4, 0},
			TPCost = 220,
			mass = 500		
			-- card res
			-- rarity
		},			
		{
			num = 1.2,
			name = 'Spy Drone',		
			icon = 'res/moduleIcons/engineering/SPY_DRONE.png', 
			pic = 'res/moduleIcons/engineering/pic/SPY_DRONE_pic.png',
			width = 2,
			height = 2,
			cap = 150,
			matching = {0, 0, 0, 4, 0},
			TPCost = 300,
			mass = 200		
			-- card res
			-- rarity
		},
		{
			num = 1.3,
			name = 'Fit Scanner Module',		
			icon = 'res/moduleIcons/engineering/FIT_SCANNER.png', 
			pic = 'res/moduleIcons/engineering/pic/FIT_SCANNER_pic.png',
			width = 1,
			height = 2,
			cap = 75,
			matching = {0, 0, 0, 4, 0},
			TPCost = 100,
			mass = 150		
			-- card res
			-- rarity
		},		
--- Anti-Sensors
		{
			num = 2,
			name = 'Antiradar',		
			icon = 'res/moduleIcons/engineering/ANTIRADAR.png', 
			pic = 'res/moduleIcons/engineering/pic/ANTIRADAR_pic.png',
			width = 3,
			height = 1,
			cap = 75,
			matching = {0, 0, 0, 4, 0},
			TPCost = 125,
			mass = 250		
			-- card res
			-- rarity
		},
		{
			num = 2.1,
			name = 'Sensor Disabler',		
			icon = 'res/moduleIcons/engineering/SENSOR_DISABLER.png', 
			pic = 'res/moduleIcons/engineering/pic/SENSOR_DISABLER_pic.png',
			width = 2,
			height = 4,
			cap = 200,
			matching = {0, 0, 0, 4, 0},
			TPCost = 400,
			mass = 200		
			-- card res
			-- rarity
		},
		{
			num = 2.2,
			name = 'Stealth Module',		
			icon = 'res/moduleIcons/engineering/STEALTH.png', 
			pic = 'res/moduleIcons/engineering/pic/STEALTH_pic.png',
			width = 2,
			height = 2,
			cap = 150,
			matching = {0, 0, 0, 4, 0},
			TPCost = 200,
			mass = 500		
			-- card res
			-- rarity
		},
		{
			num = 2.3,
			name = 'Mass Stealth Module',		
			icon = 'res/moduleIcons/engineering/MASS_STEALTH.png', 
			pic = 'res/moduleIcons/engineering/pic/MASS_STEALTH_pic.png',
			width = 2,
			height = 4,
			cap = 300,
			matching = {0, 0, 0, 4, 0},
			TPCost = 600,
			mass = 1000		
			-- card res
			-- rarity
		},	
--- AMS Sytems
		{
			num = 3,
			name = 'AMS',		
			icon = 'res/moduleIcons/engineering/AMS.png', 
			pic = 'res/moduleIcons/engineering/pic/AMS_pic.png',
			width = 2,
			height = 2,
			cap = 120,
			matching = {0, 0, 0, 4, 0},
			TPCost = 150,
			mass = 300		
			-- card res
			-- rarity
		},
		{
			num = 3.1,
			name = 'Point Defence',		
			icon = 'res/moduleIcons/engineering/POINT_DEFENCE.png', 
			pic = 'res/moduleIcons/engineering/pic/POINT_DEFENCE_pic.png',
			width = 5,
			height = 1,
			cap = 175,
			matching = {0, 0, 0, 4, 0},
			TPCost = 200,
			mass = 350		
			-- card res
			-- rarity
		},
		{
			num = 3.2,
			name = 'Boarding',		
			icon = 'res/moduleIcons/engineering/BOARDING.png', 
			pic = 'res/moduleIcons/engineering/pic/BOARDING_pic.png',
			width = 4,
			height = 2,
			cap = 200,
			matching = {0, 0, 0, 4, 0},
			TPCost = 300,
			mass = 5000		
			-- card res
			-- rarity
		},
		{
			num = 3.3,
			name = 'Ammo Dispencer',		
			icon = 'res/moduleIcons/engineering/AMMO_DISPENCER.png', 
			pic = 'res/moduleIcons/engineering/pic/AMMO_DISPENCER_pic.png',
			width = 2,
			height = 3,
			cap = 100,
			matching = {0, 0, 0, 4, 0},
			TPCost = 200,
			mass = 1000		
			-- card res
			-- rarity
		},			
		
--- Repair systems
		{
			num = 4,
			name = 'Armor Patch',		
			icon = 'res/moduleIcons/engineering/ARMOR_PATCH.png', 
			pic = 'res/moduleIcons/engineering/pic/ARMOR_PATCH_pic.png',
			width = 3,
			height = 2,
			cap = 150,
			matching = {0, 0, 0, 4, 0},
			TPCost = 600,
			mass = 250		
			-- card res
			-- rarity
		},	
		{
			num = 4.1,
			name = 'Repair Drone',		
			icon = 'res/moduleIcons/engineering/REPAIR_DRONE.png', 
			pic = 'res/moduleIcons/engineering/pic/REPAIR_DRONE_pic.png',
			width = 2,
			height = 3,
			cap = 175,
			matching = {0, 0, 0, 4, 0},
			TPCost = 350,
			mass = 200		
			-- card res
			-- rarity
		},	
		{
			num = 4.2,
			name = 'Repair Complex',		
			icon = 'res/moduleIcons/engineering/REPAIR_COMPLEX.png', 
			pic = 'res/moduleIcons/engineering/pic/REPAIR_COMPLEX_pic.png',
			width = 2,
			height = 5,
			cap = 800,
			matching = {0, 0, 0, 4, 0},
			TPCost = 1500,
			mass = 400		
			-- card res
			-- rarity
		},
		{
			num = 4.3,
			name = 'Self Destruction Module',		
			icon = 'res/moduleIcons/engineering/SELF_DESTRUCTION.png', 
			pic = 'res/moduleIcons/engineering/pic/SELF_DESTRUCTION_pic.png',
			width = 2,
			height = 5,
			cap = 800,
			matching = {0, 0, 0, 4, 0},
			TPCost = 1500,
			mass = 400		
			-- card res
			-- rarity
		},
--- Shield systems
		{
			num = 5,
			name = 'Stasis',		
			icon = 'res/moduleIcons/engineering/STASIS.png', 
			pic = 'res/moduleIcons/engineering/pic/STASIS_pic.png',
			width = 2,
			height = 4,
			cap = 250,
			matching = {0, 0, 0, 4, 0},
			TPCost = 500,
			mass = 150		
			-- card res
			-- rarity
		},
		{
			num = 5.1,
			name = 'Shield Disabler',		
			icon = 'res/moduleIcons/engineering/SHIELD_DISABLER.png', 
			pic = 'res/moduleIcons/engineering/pic/SHIELD_DISABLER_pic.png',
			width = 4,
			height = 1,
			cap = 175,
			matching = {0, 0, 0, 4, 0},
			TPCost = 250,
			mass = 200		
			-- card res
			-- rarity
		},
		{
			num = 5.2,
			name = 'Shield Overload',		
			icon = 'res/moduleIcons/engineering/SHIELD_OVERLOAD.png', 
			pic = 'res/moduleIcons/engineering/pic/SHIELD_OVERLOAD_pic.png',
			width = 4,
			height = 2,
			cap = 100,
			matching = {0, 0, 0, 4, 0},
			TPCost = 200,
			mass = 100		
			-- card res
			-- rarity
		},
		{
			num = 5.3,
			name = 'Mass Shield',		
			icon = 'res/moduleIcons/engineering/MASS_SHIELD.png', 
			pic = 'res/moduleIcons/engineering/pic/MASS_SHIELD_pic.png',
			width = 3,
			height = 4,
			cap = 250,
			matching = {0, 0, 0, 4, 0},
			TPCost = 500,
			mass = 1000		
			-- card res
			-- rarity
		},
--- Engine systems
		{
			num = 6,
			name = 'Engine Boost',		
			icon = 'res/moduleIcons/engineering/ENGINE_BOOST.png', 
			pic = 'res/moduleIcons/engineering/pic/ENGINE_BOOST_pic.png',
			width =2,
			height = 2,
			cap = 100,
			matching = {0, 0, 0, 4, 0},
			TPCost = 100,
			mass = 50		
			-- card res
			-- rarity
		},
		{
			num = 6.1,
			name = 'Engine Disruptor',		
			icon = 'res/moduleIcons/engineering/ENGINE_DISRUPTOR.png', 
			pic = 'res/moduleIcons/engineering/pic/ENGINE_DISRUPTOR_pic.png',
			width =1,
			height = 3,
			cap = 100,
			matching = {0, 0, 0, 4, 0},
			TPCost = 150,
			mass = 200		
			-- card res
			-- rarity
		},
		{
			num = 6.2,
			name = 'Photon Maneurability System',		
			icon = 'res/moduleIcons/engineering/PHOTON_MAN_SYS.png', 
			pic = 'res/moduleIcons/engineering/pic/PHOTON_MAN_SYS_pic.png',
			width =1,
			height = 1,
			cap = 35,
			matching = {0, 0, 0, 4, 0},
			TPCost = 70,
			mass = 100		
			-- card res
			-- rarity
		},
		{
			num = 6.3,
			name = 'Ion Maneurability System',		
			icon = 'res/moduleIcons/engineering/ION_MAN_SYS.png', 
			pic = 'res/moduleIcons/engineering/pic/ION_MAN_SYS_pic.png',
			width =1,
			height = 1,
			cap = 55,
			matching = {0, 0, 0, 4, 0},
			TPCost = 110,
			mass = 100		
			-- card res
			-- rarity
		},	
--- Warp systems
		{
			num = 7,
			name = 'Ship Warp Jump Drive',		
			icon = 'res/moduleIcons/engineering/JUMP_DRIVE.png', 
			pic = 'res/moduleIcons/engineering/pic/JUMP_DRIVE_pic.png',
			width =3,
			height = 2,
			cap = 70,
			matching = {0, 0, 0, 4, 0},
			TPCost = 140,
			mass = 100		
			-- card res
			-- rarity
		},
		{
			num = 7.1,
			name = 'Fleet Warp Jump Drive',		
			icon = 'res/moduleIcons/engineering/FLEET_JUMP_DRIVE.png', 
			pic = 'res/moduleIcons/engineering/pic/FLEET_JUMP_DRIVE_pic.png',
			width =3,
			height = 3,
			cap = 170,
			matching = {0, 0, 0, 4, 0},
			TPCost = 340,
			mass = 220		
			-- card res
			-- rarity
		},
		{
			num = 7.2,
			name = 'Warp Homer',		
			icon = 'res/moduleIcons/engineering/WARP_HOMER.png', 
			pic = 'res/moduleIcons/engineering/pic/WARP_HOMER_pic.png',
			width =4,
			height = 4,
			cap = 250,
			matching = {0, 0, 0, 4, 0},
			TPCost = 800,
			mass = 1500		
			-- card res
			-- rarity
		},	
		{
			num = 7.3,
			name = 'Warp Interference Module',		
			icon = 'res/moduleIcons/engineering/WARP_INTERFERENCE.png', 
			pic = 'res/moduleIcons/engineering/pic/WARP_INTERFERENCE_pic.png',
			width =3,
			height = 3,
			cap = 200,
			matching = {0, 0, 0, 4, 0},
			TPCost = 400,
			mass = 500		
			-- card res
			-- rarity
		},
--- Tricks and tips
		{
			num = 8,
			name = 'Focus Fire Module',		
			icon = 'res/moduleIcons/engineering/FOCUS_FIRE.png', 
			pic = 'res/moduleIcons/engineering/pic/FOCUS_FIRE_pic.png',
			width =3,
			height = 1,
			cap = 60,
			matching = {0, 0, 0, 4, 0},
			TPCost = 120,
			mass = 50		
			-- card res
			-- rarity
		},
		{
			num = 8.1,
			name = 'Decoy Module',		
			icon = 'res/moduleIcons/engineering/DECOY.png', 
			pic = 'res/moduleIcons/engineering/pic/DECOY_pic.png',
			width =2,
			height = 3,
			cap = 175,
			matching = {0, 0, 0, 4, 0},
			TPCost = 200,
			mass = 400		
			-- card res
			-- rarity
		},
		{
			num = 8.11,
			name = 'Aiming System Hack',		
			icon = 'res/moduleIcons/engineering/AIMING_SYSTEM_HACK.png', 
			pic = 'res/moduleIcons/engineering/pic/AIMING_SYSTEM_HACK_pic.png',
			width =2,
			height = 3,
			cap = 150,
			matching = {0, 0, 0, 4, 0},
			TPCost = 300,
			mass = 100		
			-- card res
			-- rarity
		},		
		{
			num = 8.2,
			name = 'Kinetic Wall',		
			icon = 'res/moduleIcons/engineering/KINETIC_WALL.png', 
			pic = 'res/moduleIcons/engineering/pic/KINETIC_WALL_pic.png',
			width =2,
			height = 4,
			cap = 200,
			matching = {0, 0, 0, 4, 0},
			TPCost = 800,
			mass = 100		
			-- card res
			-- rarity
		},	
		{
			num = 8.3,
			name = 'Nebula Generator',		
			icon = 'res/moduleIcons/engineering/NEBULA_GENERATOR.png', 
			pic = 'res/moduleIcons/engineering/pic/NEBULA_GENERATOR_pic.png',
			width =2,
			height = 2,
			cap = 100,
			matching = {0, 0, 0, 4, 0},
			TPCost = 200,
			mass = 100		
			-- card res
			-- rarity
		},		
--- Webs
		{
			num = 9.7,
			name = 'EMP Module',		
			icon = 'res/moduleIcons/engineering/EMP_WEB.png', 
			pic = 'res/moduleIcons/engineering/pic/EMP_WEB_pic.png',
			width = 2,
			height = 2,
			cap = 120,
			matching = {0, 0, 0, 4, 0},
			TPCost = 150,
			mass = 200		
			-- card res
			-- rarity
		},
		{
			num = 9.8,
			name = 'Plasma WEB',		
			icon = 'res/moduleIcons/engineering/PLASMA_WEB.png', 
			pic = 'res/moduleIcons/engineering/pic/PLASMA_WEB_pic.png',
			width = 3,
			height = 2,
			cap = 170,
			matching = {0, 0, 0, 4, 0},
			TPCost = 150,
			mass = 200		
			-- card res
			-- rarity
		},		
--- Mines
		{
			num = 9.9,
			name = 'Heavy Plasma Mine',		
			icon = 'res/moduleIcons/engineering/PLASMA_MINE.png', 
			pic = 'res/moduleIcons/engineering/pic/PLASMA_MINE_pic.png',
			width = 2,
			height = 2,
			cap = 100,
			matching = {0, 0, 0, 4, 0},
			TPCost = 300,
			mass = 1500		
			-- card res
			-- rarity
		},
		{
			num = 10,
			name = 'Flack Mine',		
			icon = 'res/moduleIcons/engineering/FLACK_MINE.png', 
			pic = 'res/moduleIcons/engineering/pic/FLACK_MINE_pic.png',
			width =1,
			height = 1,
			cap = 50,
			matching = {0, 0, 0, 4, 0},
			TPCost = 150,
			mass = 500		
			-- card res
			-- rarity
		},	
		{
			num = 10.1,
			name = 'EMP Mine',		
			icon = 'res/moduleIcons/engineering/EMP_MINE.png', 
			pic = 'res/moduleIcons/engineering/pic/EMP_MINE_pic.png',
			width =1,
			height = 1,
			cap = 25,
			matching = {0, 0, 0, 4, 0},
			TPCost = 100,
			mass = 330		
			-- card res
			-- rarity
		},	
		{
			num = 10.2,
			name = 'Stalker Mine',		
			icon = 'res/moduleIcons/engineering/STALKER_MINE.png', 
			pic = 'res/moduleIcons/engineering/pic/STALKER_MINE_pic.png',
			width =1,
			height = 1,
			cap = 50,
			matching = {0, 0, 0, 4, 0},
			TPCost = 150,
			mass = 500		
			-- card res
			-- rarity
		},
		{
			num = 10.3,
			name = 'Neutron Mine',		
			icon = 'res/moduleIcons/engineering/NEUTRON_MINE.png', 
			pic = 'res/moduleIcons/engineering/pic/NEUTRON_MINE_pic.png',
			width =1,
			height = 1,
			cap = 50,
			matching = {0, 0, 0, 4, 0},
			TPCost = 100,
			mass = 500		
			-- card res
			-- rarity
		},		
	},
	engines = {
		{
			num = 1,
			name = 'Large Ion Engine',
			icon = 'res/moduleIcons/engines/large_ion_engine.png', 
			pic = 'res/moduleIcons/engines/pic/large_ion_engine_pic.png',			
			width = 2,
			height = 3,
			cap = 40,
			matching = {0, 0, 0, 0, 5},
			TPCost = 20,
			mass = 480
			-- card res
			-- rarity
		},
		{
			num = 1.1,
			name = 'Large Photon Engine',
			icon = 'res/moduleIcons/engines/large_photon_engine.png', 
			pic = 'res/moduleIcons/engines/pic/large_photon_engine_pic.png',			
			width = 2,
			height = 3,
			cap = 50,
			matching = {0, 0, 0, 0, 5},
			TPCost = 25,
			mass = 480
			-- card res
			-- rarity
		},
		{
			num = 1.2,
			name = 'Medium Ion Engine',
			icon = 'res/moduleIcons/engines/medium_ion_engine.png', 
			pic = 'res/moduleIcons/engines/pic/medium_ion_engine_pic.png',			
			width = 2,
			height = 2,
			cap = 30,
			matching = {0, 0, 0, 0, 5},
			TPCost = 15,
			mass = 320
			-- card res
			-- rarity
		},
		{
			num = 1.3,
			name = 'Medium Photon Engine',
			icon = 'res/moduleIcons/engines/medium_photon_engine.png', 
			pic = 'res/moduleIcons/engines/pic/medium_photon_engine_pic.png',			
			width = 2,
			height = 2,
			cap = 25,
			matching = {0, 0, 0, 0, 5},
			TPCost = 12,
			mass = 320
			-- card res
			-- rarity
		},		
		{
			num = 1.4,
			name = 'Small Ion Engine',
			icon = 'res/moduleIcons/engines/small_ion_engine.png', 
			pic = 'res/moduleIcons/engines/pic/small_ion_engine_pic.png',			
			width = 1,
			height = 1,
			cap = 8,
			matching = {0, 0, 0, 0, 5},
			TPCost = 4,
			mass = 80
			-- card res
			-- rarity
		},
		{
			num = 1.5,
			name = 'Small Photon Engine',
			icon = 'res/moduleIcons/engines/small_photon_engine.png', 
			pic = 'res/moduleIcons/engines/pic/small_photon_engine_pic.png',			
			width = 1,
			height = 1,
			cap = 5,
			matching = {0, 0, 0, 0, 5},
			TPCost = 2,
			mass = 80
			-- card res
			-- rarity
		},					
	},
	ammo = {
		{
			num = 1,
			name = 'Auto Cannon Ammo',
			icon = 'res/moduleIcons/ammo/AC_ammo.png', 
			pic = 'res/moduleIcons/ammo/pic/AC_ammo_pic.png',			
			width = 1,
			height = 1,
			count = 75,
			cap = 0,
			matching = {1, 2, 3, 4, 5},
			TPCost = 10,
			mass = 100
			-- card res
			-- rarity
		},	

	},
	armor = {
	--- Small
		{
			num = 1,
			name = 'Small Armor',
			icon = 'res/moduleIcons/armor/small_armor.png', 
			pic = 'res/moduleIcons/armor/pic/small_armor_pic.png',			
			width = 1,
			height = 1,
			armor = 100,
			cap = 0,
			matching = {1, 2, 3, 4, 5},
			TPCost = 5,
			mass = 50
			-- card res
			-- rarity
		},
		{
			num = 1.1,
			name = 'Small Heavy Armor',
			icon = 'res/moduleIcons/armor/small_heavy_armor.png', 
			pic = 'res/moduleIcons/armor/pic/small_heavy_armor_pic.png',			
			width = 1,
			height = 1,
			armor = 250,
			cap = 0,
			matching = {1, 2, 3, 4, 5},
			TPCost = 12,
			mass = 625
			-- card res
			-- rarity
		},
		{
			num = 1.2,
			name = 'Small Adaptive Armor',
			icon = 'res/moduleIcons/armor/small_adaptive_armor.png', 
			pic = 'res/moduleIcons/armor/pic/small_adaptive_armor_pic.png',			
			width = 1,
			height = 1,
			armor = 150,
			cap = 25,
			matching = {1, 2, 3, 4, 5},
			TPCost = 50,
			mass = 400
			-- card res
			-- rarity
		},
		{
			num = 1.3,
			name = 'Small Active Armor',
			icon = 'res/moduleIcons/armor/small_active_armor.png', 
			pic = 'res/moduleIcons/armor/pic/small_active_armor_pic.png',			
			width = 1,
			height = 1,
			armor = 2,
			cap = 50,
			matching = {1, 2, 3, 4, 5},
			TPCost = 100,
			mass = 200
			-- card res
			-- rarity
		},			
	--- Medium
		{	
			num = 2,
			name = 'Medium Armor',
			icon = 'res/moduleIcons/armor/medium_armor.png', 
			pic = 'res/moduleIcons/armor/pic/medium_armor_pic.png',			
			width = 2,
			height = 1,
			armor = 300,
			cap = 0,
			matching = {1, 2, 3, 4, 5},
			TPCost = 15,
			mass = 150
			-- card res
			-- rarity
		},
		{
			num = 2.1,
			name = 'Medium Heavy Armor',
			icon = 'res/moduleIcons/armor/medium_heavy_armor.png', 
			pic = 'res/moduleIcons/armor/pic/medium_heavy_armor_pic.png',			
			width = 2,
			height = 1,
			armor = 750,
			cap = 0,
			matching = {1, 2, 3, 4, 5},
			TPCost = 37,
			mass = 1875
			-- card res
			-- rarity
		},
		{
			num = 2.2,
			name = 'Medium Adaptive Armor',
			icon = 'res/moduleIcons/armor/medium_adaptive_armor.png', 
			pic = 'res/moduleIcons/armor/pic/medium_adaptive_armor_pic.png',			
			width = 2,
			height = 1,
			armor = 450,
			cap = 50,
			matching = {1, 2, 3, 4, 5},
			TPCost = 100,
			mass = 1200
			-- card res
			-- rarity
		},	
		{
			num = 2.3,
			name = 'Medium Active Armor',
			icon = 'res/moduleIcons/armor/medium_active_armor.png', 
			pic = 'res/moduleIcons/armor/pic/medium_active_armor_pic.png',			
			width = 2,
			height = 1,
			armor = 5,
			cap = 100,
			matching = {1, 2, 3, 4, 5},
			TPCost = 200,
			mass = 500
			-- card res
			-- rarity
		},	
--- Large
		{
			num = 3,
			name = 'Large Armor',
			icon = 'res/moduleIcons/armor/large_armor.png', 
			pic = 'res/moduleIcons/armor/pic/large_armor_pic.png',			
			width = 3,
			height = 1,
			armor = 600,
			cap = 0,
			matching = {1, 2, 3, 4, 5},
			TPCost = 30,
			mass = 300
			-- card res
			-- rarity
		},
		{
			num = 3.1,
			name = 'Large Heavy Armor',
			icon = 'res/moduleIcons/armor/large_heavy_armor.png', 
			pic = 'res/moduleIcons/armor/pic/large_heavy_armor_pic.png',			
			width = 3,
			height = 1,
			armor = 1660,
			cap = 0,
			matching = {1, 2, 3, 4, 5},
			TPCost = 83,
			mass = 4150
			-- card res
			-- rarity
		},	
		{
			num = 3.2,
			name = 'Large Adaptive Armor',
			icon = 'res/moduleIcons/armor/large_adaptive_armor.png', 
			pic = 'res/moduleIcons/armor/pic/large_adaptive_armor_pic.png',			
			width = 3,
			height = 1,
			armor = 900,
			cap = 75,
			matching = {1, 2, 3, 4, 5},
			TPCost = 150,
			mass = 2400
			-- card res
			-- rarity
		},
		{
			num = 3.3,
			name = 'Large Active Armor',
			icon = 'res/moduleIcons/armor/large_active_armor.png', 
			pic = 'res/moduleIcons/armor/pic/large_active_armor_pic.png',			
			width = 3,
			height = 1,
			armor = 8,
			cap = 150,
			matching = {1, 2, 3, 4, 5},
			TPCost = 300,
			mass = 800
			-- card res
			-- rarity
		},		
	},
	shield = {
		{
			num = 1,
			name = 'Small Shield Cell',
			icon = 'res/moduleIcons/shield/small_shield.png', 
			pic = 'res/moduleIcons/shield/pic/small_shield_pic.png',			
			width = 1,
			height = 1,
			shield = 160,
			cap = 12,
			matching = {0, 0, 0, 4, 0},
			TPCost = 11,
			mass = 20
			-- card res
			-- rarity
		},	
		{
			num = 1.1,
			name = 'Medium Shield Cell',
			icon = 'res/moduleIcons/shield/medium_shield.png', 
			pic = 'res/moduleIcons/shield/pic/medium_shield_pic.png',			
			width = 2,
			height = 1,
			shield = 820,
			cap = 50,
			matching = {0, 0, 0, 4, 0},
			TPCost = 55,
			mass = 85
			-- card res
			-- rarity
		},
		{
			num = 1.2,
			name = 'Large Shield Cell',
			icon = 'res/moduleIcons/shield/large_shield.png', 
			pic = 'res/moduleIcons/shield/pic/large_shield_pic.png',			
			width = 3,
			height = 1,
			shield = 1500,
			cap = 92,
			matching = {0, 0, 0, 4, 0},
			TPCost = 100,
			mass = 200
			-- card res
			-- rarity
		},
		{
			num = 1.3,
			name = 'Small Shield Generator',
			icon = 'res/moduleIcons/shield/small_shield_reg.png', 
			pic = 'res/moduleIcons/shield/pic/small_shield_reg_pic.png',			
			width = 1,
			height = 1,
			regen = 2,
			cap = 50,
			matching = {0, 0, 0, 4, 0},
			TPCost = 20,
			mass = 30
			-- card res
			-- rarity
		},
		{
			num = 1.4,
			name = 'Shield Generator',
			icon = 'res/moduleIcons/shield/medium_shield_reg.png', 
			pic = 'res/moduleIcons/shield/pic/medium_shield_reg_pic.png',			
			width = 1,
			height = 2,
			regen = 10,
			cap = 120,
			matching = {0, 0, 0, 4, 0},
			TPCost = 50,
			mass = 60
			-- card res
			-- rarity
		},		
		{
			num = 1.5,
			name = 'Advanced Shield Generator',
			icon = 'res/moduleIcons/shield/large_shield_reg.png', 
			pic = 'res/moduleIcons/shield/pic/large_shield_reg_pic.png',			
			width = 1,
			height = 3,
			regen = 25,
			cap = 300,
			matching = {0, 0, 0, 4, 0},
			TPCost = 100,
			mass = 100
			-- card res
			-- rarity
		},			
	}
}
return mdl
	--// Skills \\--
PERSONA_SKILLS = {}

	//-- Functions --\\
function P_ADDSKILL(data)
	local canAdd = true
	for _,v in pairs(PERSONA_SKILLS) do if v.Name == data.Name then canAdd = false end end
	if data.CanObtain == nil then
		data.CanObtain = true
	end
	if canAdd then
		table.insert(PERSONA_SKILLS,data)
	end
end

function P_GETSKILL(name)
	local data = {Name = "N/A", Cost = 0, UsesHP = false, Icon = "unknown", CanObtain = true, Code = nil}
	for _,v in pairs(PERSONA_SKILLS) do
		if v.Name == name then
			data = v
		end
	end
	return data
end

	//-- Damage Types --\\
DMG_P_ICE = 1000
DMG_P_EARTH = 1001 -- Obsolete
DMG_P_WIND = 1002
DMG_P_GRAVITY = 1003 -- Obsolete
DMG_P_NUCLEAR = 1004
DMG_P_EXPEL = 1005 -- Obsolete
DMG_P_DEATH = 1006 -- Obsolete
DMG_P_MIRACLE = 1007
DMG_P_FORCE = 1008 -- Obsolete
DMG_P_TECH = 1009 -- Obsolete
DMG_P_ALMIGHTY = 1010
DMG_P_PSI = 1011
DMG_P_ELEC = 1012
DMG_P_CURSE = 1013
DMG_P_FEAR = 1014
DMG_P_PHYS = 1015
DMG_P_GUN = 1016
DMG_P_BLESS = 1017
DMG_P_FIRE = 1018
DMG_P_BURN = 268435464
DMG_P_SEAL = 1019 -- Obsolete
DMG_P_SLEEP = 1020
DMG_P_PARALYZE = 1021

function P_HasDamageType(dmginfo,lookTbl)
	if type(dmginfo) == "table" then
		for _,v in ipairs(dmginfo) do
			if VJ_HasValue(lookTbl,v) then
				return true
			end
		end
	elseif type(dmginfo) == "number" then
		return VJ_HasValue(lookTbl,dmginfo)
	else
		for _,v in ipairs(lookTbl) do
			if dmginfo:IsDamageType(v) == true then
				return true
			end
		end
	end
	return false
end

	//-- Default Damage Amounts --\\
DMG_P_MINISCULE = 10
DMG_P_LIGHT = 25
DMG_P_MEDIUM = 50
DMG_P_HEAVY = 100
DMG_P_SEVERE = 175
DMG_P_COLOSSAL = 300

	//-- Default Skill Costs --\\
COST_P_CROSS_SLASH = 8
COST_P_CHARGE = 15
COST_P_ZIONGA = 8
COST_P_MAZIONGA = 16
COST_P_AGIDYNE = 16
COST_P_BAFUDYNE = 16
COST_P_ZIODYNE = 16
COST_P_MAZIODYNE = 22
COST_P_HEAVENS_BLADE = 35
COST_P_MYRIAD_TRUTHS = 40
COST_P_CONCENTRATE = 15
COST_P_HEAT_RISER = 30
COST_P_SALVATION = 48
COST_P_LAEVATEINN = 25
COST_P_MEGIDOLAON = 38
COST_P_MEGIDOLA = 24
COST_P_DEBILITATE = 30
COST_P_EIGAON = 12
COST_P_MAEIGAON = 22
COST_P_MAGATSU_MANDALA = 30
COST_P_GHASTLY_WAIL = 30
COST_P_EVIL_SMILE = 12
COST_P_EVIL_TOUCH = 24
COST_P_GARUDYNE = 16
COST_P_MAGARUDYNE = 22
COST_P_MARAGIDYNE = 22
COST_P_RIOT_GUN = 24
COST_P_MAMUDOON = 34
COST_P_MAHAMAON = 34
COST_P_ONESHOT_KILL = 17
COST_P_ABYSSAL_WINGS = 30
COST_P_LIFE_DRAIN = 3
COST_P_VORPAL_BLADE = 23
COST_P_DIARAMA = 6
COST_P_HASSOUTOBI = 25

	-- Physical --
P_ADDSKILL({Name = "Cross Slash",Cost = 20,UsesHP = true,Icon = "phys"})
P_ADDSKILL({Name = "Hassou Tobi",Cost = 25,UsesHP = true,Icon = "phys"})
P_ADDSKILL({Name = "Vorpal Blade",Cost = 23,UsesHP = true,Icon = "phys"})
P_ADDSKILL({Name = "Miracle Punch",Cost = 8,UsesHP = true,Icon = "phys"})
P_ADDSKILL({Name = "Vajra Blast",Cost = 14,UsesHP = true,Icon = "phys"})
P_ADDSKILL({Name = "Cleave",Cost = 6,UsesHP = true,Icon = "phys"})
P_ADDSKILL({Name = "Bash",Cost = 6,UsesHP = true,Icon = "phys"})
P_ADDSKILL({Name = "Gigantomachia",Cost = 25,UsesHP = true,Icon = "phys"})
P_ADDSKILL({Name = "God's Hand",Cost = 25,UsesHP = true,Icon = "phys"})
P_ADDSKILL({Name = "Terror Claw",Cost = 8,UsesHP = true,Icon = "phys"})
P_ADDSKILL({Name = "Sword Dance",Cost = 21,UsesHP = true,Icon = "phys"})
P_ADDSKILL({Name = "Heaven's Blade",Cost = 35,UsesHP = true,Icon = "phys"})
P_ADDSKILL({Name = "Magatsu Blade",Cost = 25,UsesHP = true,Icon = "phys"})
P_ADDSKILL({Name = "Agneyastra",Cost = 24,UsesHP = true,Icon = "phys"})
P_ADDSKILL({Name = "Heat Wave",Cost = 16,UsesHP = true,Icon = "phys"})
P_ADDSKILL({Name = "Black Spot",Cost = 16,UsesHP = true,Icon = "phys"})
P_ADDSKILL({Name = "Gale Slash",Cost = 12,UsesHP = true,Icon = "phys"})
P_ADDSKILL({Name = "Rampage",Cost = 13,UsesHP = true,Icon = "phys"})
P_ADDSKILL({Name = "Skull Cracker",Cost = 9,UsesHP = true,Icon = "phys"})

	-- Gun --
P_ADDSKILL({Name = "One-shot Kill",Cost = 17,UsesHP = true,Icon = "gun"})
P_ADDSKILL({Name = "Riot Gun",Cost = 24,UsesHP = true,Icon = "gun"})

	-- Frost --
P_ADDSKILL({Name = "Bufu",Cost = 4,UsesHP = false,Icon = "frost"})
P_ADDSKILL({Name = "Bufula",Cost = 8,UsesHP = false,Icon = "frost"})
P_ADDSKILL({Name = "Bufudyne",Cost = 12,UsesHP = false,Icon = "frost"})
P_ADDSKILL({Name = "Mabufu",Cost = 10,UsesHP = false,Icon = "frost"})
P_ADDSKILL({Name = "Mabufula",Cost = 16,UsesHP = false,Icon = "frost"})
P_ADDSKILL({Name = "Mabufudyne",Cost = 22,UsesHP = false,Icon = "frost"})
P_ADDSKILL({Name = "Diamond Dust",Cost = 48,UsesHP = false,Icon = "frost"})
P_ADDSKILL({Name = "Ice Age",Cost = 54,UsesHP = false,Icon = "frost"})

	-- Fire --
P_ADDSKILL({Name = "Agi",Cost = 4,UsesHP = false,Icon = "fire"})
P_ADDSKILL({Name = "Agilao",Cost = 8,UsesHP = false,Icon = "fire"})
P_ADDSKILL({Name = "Agidyne",Cost = 12,UsesHP = false,Icon = "fire"})
P_ADDSKILL({Name = "Inferno",Cost = 48,UsesHP = false,Icon = "fire"})
P_ADDSKILL({Name = "Maragi",Cost = 10,UsesHP = false,Icon = "fire"})
P_ADDSKILL({Name = "Maragion",Cost = 16,UsesHP = false,Icon = "fire"})
P_ADDSKILL({Name = "Maragidyne",Cost = 22,UsesHP = false,Icon = "fire"})
P_ADDSKILL({Name = "Titanomachia",Cost = 34,UsesHP = false,Icon = "fire"})
P_ADDSKILL({Name = "Blazing Hell",Cost = 54,UsesHP = false,Icon = "fire"})

	-- Electricity --
P_ADDSKILL({Name = "Zio",Cost = 4,UsesHP = false,Icon = "elec"})
P_ADDSKILL({Name = "Zionga",Cost = 8,UsesHP = false,Icon = "elec"})
P_ADDSKILL({Name = "Ziodyne",Cost = 12,UsesHP = false,Icon = "elec"})
P_ADDSKILL({Name = "Mazio",Cost = 10,UsesHP = false,Icon = "elec"})
P_ADDSKILL({Name = "Mazionga",Cost = 16,UsesHP = false,Icon = "elec"})
P_ADDSKILL({Name = "Maziodyne",Cost = 22,UsesHP = false,Icon = "elec"})
P_ADDSKILL({Name = "Thunder Reign",Cost = 48,UsesHP = false,Icon = "elec"})
P_ADDSKILL({Name = "Wild Thunder",Cost = 54,UsesHP = false,Icon = "elec"})
P_ADDSKILL({Name = "Colossal Storm",Cost = 62,UsesHP = false,Icon = "elec"})

	-- Wind --
P_ADDSKILL({Name = "Garu",Cost = 3,UsesHP = false,Icon = "wind"})
P_ADDSKILL({Name = "Garudyne",Cost = 10,UsesHP = false,Icon = "wind"})
P_ADDSKILL({Name = "Magarudyne",Cost = 20,UsesHP = false,Icon = "wind"})
P_ADDSKILL({Name = "Vacuum Wave",Cost = 48,UsesHP = false,Icon = "wind"})

	-- Nuclear --
P_ADDSKILL({Name = "Freila",Cost = 8,UsesHP = false,Icon = "nuclear"})
P_ADDSKILL({Name = "Freidyne",Cost = 12,UsesHP = false,Icon = "nuclear"})
P_ADDSKILL({Name = "Mafreidyne",Cost = 22,UsesHP = false,Icon = "nuclear"})
P_ADDSKILL({Name = "Cosmic Flare",Cost = 54,UsesHP = false,Icon = "nuclear"})

	-- Psi. --
P_ADDSKILL({Name = "Psi",Cost = 4,UsesHP = false,Icon = "psi"})
P_ADDSKILL({Name = "Psio",Cost = 8,UsesHP = false,Icon = "psi"})
P_ADDSKILL({Name = "Psiodyne",Cost = 12,UsesHP = false,Icon = "psi"})
P_ADDSKILL({Name = "Mapsi",Cost = 10,UsesHP = false,Icon = "psi"})
P_ADDSKILL({Name = "Mapsio",Cost = 16,UsesHP = false,Icon = "psi"})
P_ADDSKILL({Name = "Mapsiodyne",Cost = 22,UsesHP = false,Icon = "psi"})
P_ADDSKILL({Name = "Psycho Force",Cost = 48,UsesHP = false,Icon = "psi"})
P_ADDSKILL({Name = "Psycho Blast",Cost = 54,UsesHP = false,Icon = "psi"})

	-- Bless --
P_ADDSKILL({Name = "Kouha",Cost = 4,UsesHP = false,Icon = "bless"})
P_ADDSKILL({Name = "Kouga",Cost = 8,UsesHP = false,Icon = "bless"})
P_ADDSKILL({Name = "Kougaon",Cost = 12,UsesHP = false,Icon = "bless"})
P_ADDSKILL({Name = "Makouha",Cost = 10,UsesHP = false,Icon = "bless"})
P_ADDSKILL({Name = "Makouga",Cost = 16,UsesHP = false,Icon = "bless"})
P_ADDSKILL({Name = "Makougaon",Cost = 22,UsesHP = false,Icon = "bless"})
P_ADDSKILL({Name = "Divine Judgement",Cost = 48,UsesHP = false,Icon = "bless"})
P_ADDSKILL({Name = "Mahamaon",Cost = 34,UsesHP = false,Icon = "bless"})

P_ADDSKILL({Name = "Hama",Cost = 8,UsesHP = false,Icon = "bless"})
P_ADDSKILL({Name = "Hamaon",Cost = 15,UsesHP = false,Icon = "bless"})
P_ADDSKILL({Name = "Mahama",Cost = 18,UsesHP = false,Icon = "bless"})
P_ADDSKILL({Name = "Mahamaon",Cost = 34,UsesHP = false,Icon = "bless"})

	-- Curse --
P_ADDSKILL({Name = "Eiha",Cost = 4,UsesHP = false,Icon = "curse"})
P_ADDSKILL({Name = "Eiga",Cost = 8,UsesHP = false,Icon = "curse"})
P_ADDSKILL({Name = "Eigaon",Cost = 12,UsesHP = false,Icon = "curse"})
P_ADDSKILL({Name = "Maeiha",Cost = 10,UsesHP = false,Icon = "curse"})
P_ADDSKILL({Name = "Maeiga",Cost = 16,UsesHP = false,Icon = "curse"})
P_ADDSKILL({Name = "Maeigaon",Cost = 22,UsesHP = false,Icon = "curse"})
P_ADDSKILL({Name = "Demonic Decree",Cost = 48,UsesHP = false,Icon = "curse"})
P_ADDSKILL({Name = "Mamudoon",Cost = 26,UsesHP = false,Icon = "curse"})
P_ADDSKILL({Name = "Magatsu Mandala",Cost = 30,UsesHP = false,Icon = "curse"})
P_ADDSKILL({Name = "Abyssal Wings",Cost = 30,UsesHP = false,Icon = "curse"})

P_ADDSKILL({Name = "Mudo",Cost = 8,UsesHP = false,Icon = "curse"})
P_ADDSKILL({Name = "Mudoon",Cost = 15,UsesHP = false,Icon = "curse"})
P_ADDSKILL({Name = "Mamudo",Cost = 18,UsesHP = false,Icon = "curse"})
P_ADDSKILL({Name = "Mamudoon",Cost = 34,UsesHP = false,Icon = "curse"})
P_ADDSKILL({Name = "Die For Me!",Cost = 44,UsesHP = false,Icon = "curse"})

	-- Healing --
P_ADDSKILL({Name = "Dia",Cost = 3,UsesHP = false,Icon = "heal"})
P_ADDSKILL({Name = "Diarama",Cost = 6,UsesHP = false,Icon = "heal"})
P_ADDSKILL({Name = "Diarahan",Cost = 18,UsesHP = false,Icon = "heal"})
P_ADDSKILL({Name = "Mediarahan",Cost = 30,UsesHP = false,Icon = "heal"})
P_ADDSKILL({Name = "Salvation",Cost = 48,UsesHP = false,Icon = "heal"})
P_ADDSKILL({Name = "Cadenza",Cost = 24,UsesHP = false,Icon = "heal"})

	-- Support/Passive --
-- P_ADDSKILL({Name = "Boots With The Fur",Cost = 1,UsesHP = true,Icon = "phys",Code = function(ply,self)
	-- self:DoDefaultAnimation(1,"Boots With The Fur",function(self) print("meleedmg") end,{A=0,B=0.8})
-- end})
-- P_ADDSKILL({Name = "Apple Bottom Jeans",Cost = 1,UsesHP = false,Icon = "passive",Code = function(ply,self)
	-- self:DoDefaultAnimation(2,"Apple Bottom Jeans",{
		-- ["range_start"] = function(self)
			-- print("1!")
		-- end,
		-- ["range_start_idle"] = function(self)
			-- print("2!")
		-- end,
		-- ["range"] = function(self)
			-- print("3!")
			-- print("I AM DOING STUFF")
		-- end,
		-- ["range_idle"] = function(self)
			-- print("4!")
		-- end,
		-- ["range_end"] = function(self)
			-- print("5!")
		-- end,
	-- })
-- end})
P_ADDSKILL({Name = "Charge",Cost = 15,UsesHP = false,Icon = "passive"})
P_ADDSKILL({Name = "Concentrate",Cost = 15,UsesHP = false,Icon = "passive"})
P_ADDSKILL({Name = "Debilitate",Cost = 30,UsesHP = false,Icon = "passive"})
P_ADDSKILL({Name = "Heat Riser",Cost = 30,UsesHP = false,Icon = "passive"})
P_ADDSKILL({Name = "Tetrakarn",Cost = 36,UsesHP = false,Icon = "passive"})
P_ADDSKILL({Name = "Makarakarn",Cost = 36,UsesHP = false,Icon = "passive"})
P_ADDSKILL({Name = "Tarukaja",Cost = 8,UsesHP = false,Icon = "passive"})
P_ADDSKILL({Name = "Rakukaja",Cost = 8,UsesHP = false,Icon = "passive"})
P_ADDSKILL({Name = "Sukukaja",Cost = 8,UsesHP = false,Icon = "passive"})
P_ADDSKILL({Name = "Tarunda",Cost = 8,UsesHP = false,Icon = "passive"})
P_ADDSKILL({Name = "Rakunda",Cost = 8,UsesHP = false,Icon = "passive"})
P_ADDSKILL({Name = "Sukunda",Cost = 8,UsesHP = false,Icon = "passive"})
P_ADDSKILL({Name = "Call of Chaos",Cost = 100,UsesHP = false,Icon = "passive"})

	-- Sleep/Ailemt --
P_ADDSKILL({Name = "Evil Smile",Cost = 12,UsesHP = false,Icon = "sleep"})
P_ADDSKILL({Name = "Marin Karin",Cost = 5,UsesHP = false,Icon = "sleep"})
P_ADDSKILL({Name = "Dream Fog",Cost = 24,UsesHP = false,Icon = "sleep"})

	-- Almighty --
P_ADDSKILL({Name = "Megidola",Cost = 24,UsesHP = false,Icon = "almighty"})
P_ADDSKILL({Name = "Megidolaon",Cost = 38,UsesHP = false,Icon = "almighty"})
P_ADDSKILL({Name = "Laevateinn",Cost = 25,UsesHP = true,Icon = "almighty"})
P_ADDSKILL({Name = "Ghastly Wail",Cost = 28,UsesHP = true,Icon = "almighty"})
P_ADDSKILL({Name = "Myriad Truths",Cost = 40,UsesHP = true,Icon = "almighty"})
P_ADDSKILL({Name = "Myriad Mandala",Cost = 45,UsesHP = true,Icon = "almighty"})
P_ADDSKILL({Name = "Doors of Hades",Cost = 32,UsesHP = true,Icon = "almighty"})
P_ADDSKILL({Name = "Spirit Drain",Cost = 3,UsesHP = false,Icon = "almighty"})
P_ADDSKILL({Name = "Life Drain",Cost = 3,UsesHP = false,Icon = "almighty"})
P_ADDSKILL({Name = "Black Viper",Cost = 48,UsesHP = true,Icon = "almighty"})
-- P_ADDSKILL({Name = "Sinful Shell",Cost = 999,UsesHP = true,Icon = "almighty"})

	-- Unique --
-- P_ADDSKILL({Name = "Tentacle of Protection",Cost = 100,UsesHP = false,Icon = "azathoth",CanObtain = false})
-- P_ADDSKILL({Name = "Tentacle of Healing",Cost = 100,UsesHP = false,Icon = "azathoth",CanObtain = false})
-- P_ADDSKILL({Name = "Tentacle of Assistance",Cost = 100,UsesHP = false,Icon = "azathoth",CanObtain = false})
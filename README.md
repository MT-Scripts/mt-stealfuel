# mt-stealfuel
Simple steal vehicle fuel script for QBCore

# Preview:
https://youtu.be/xIZs3WpWPAc

# Instalation:

Add to qb-core/shared/items.lua:
```
	-- mt-stealfuel
	["jerrycan_combustivel"]  		= {["name"] = "jerrycan_combustivel", 				["label"] = "Empty JerryCan", 						["weight"] = 100, 		["type"] = "item", 			["image"] = "jerrycan_combustivel.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
	["mangueira_combustivel"]  		= {["name"] = "mangueira_combustivel", 				["label"] = "Fuel Hose", 							["weight"] = 100, 		["type"] = "item", 			["image"] = "mangueira_combustivel.png", 				["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},

```

Drag and drop images to qb-inventory/html/images

# Dependicies
- qb-core - https://github.com/qbcore-framework/qb-core
- qb-target - https://github.com/qbcore-framework/qb-target
- LegacyFuel - https://github.com/qbcore-framework/LegacyFuel

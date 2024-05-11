#Decoration
	#Mill
		function glarth:mechanic/animation/mill/spawn
		fill 13 27 -236 10 27 -236 minecraft:air
	#Item Frames
		summon minecraft:item_frame 8 32 -181 {Facing:4b,Item:{id:"gray_carpet",Count:1},Fixed:1b}
		summon minecraft:item_frame 5 28 -178 {Facing:2b,Item:{id:"gray_carpet",Count:1},Fixed:1b}
		summon minecraft:item_frame 9 28 -178 {Facing:2b,Item:{id:"gray_carpet",Count:1},Fixed:1b}
		summon minecraft:item_frame -8 30 -204 {ItemRotation:4,Item:{id:"smooth_stone_slab",Count:1},Facing:4b,Fixed:1b}
		summon minecraft:item_frame 74 27 -257 {ItemRotation:4,Item:{id:"smooth_stone_slab",Count:1},Facing:3b,Fixed:1b}
	#Pickup Name
		function glarth:mechanic/setup/pickup
	# Axe
		summon minecraft:armor_stand 75 27.5 -250.8 {ArmorItems:[{},{},{},{id:iron_axe,Count:1}],Pose:{Head:[0f,0f,-180f]},Rotation:[180f,0f],NoGravity:1,Invisible:1,Marker:1,Tags:["axe","fire","asLoader"],DisabledSlots:2039583}
	# Details that shouldn't even exist
		execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -34 27.5 -182 {ArmorItems:[{},{},{},{id:"diamond_hoe",tag:{Damage:128},Count:1}],NoGravity:1,Pose:{Head:[0f,0f,6f]},DisabledSlots:4144959,Invisible:1,Marker:1,Tags:["asLoaderFar","asLoader"]}
		execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -36.805 44 -168.205 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:129}}],Rotation:[180f,0f],Tags:["ruins_flag"],DisabledSlots:4144959,Invisible:1,Marker:1}
		execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 15 24.45 -264 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:175}}],Invulnerable:1,Fire:1000s,NoGravity:1,Tags:["campfire","fire","asLoader"],Invulnerable:1b,DisabledSlots:4144959,Invisible:1,Marker:0}
		execute unless score lowGraphics Stats matches 1 run setblock 15 26 -264 minecraft:lantern[hanging=false]
		execute unless score lowGraphics Stats matches 0 run setblock 15 26 -264 air
		summon minecraft:armor_stand 18 27 -267 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:204}}],NoGravity:1,Rotation:[180f,0f],Marker:1,Invisible:1,Tags:["asLoaderFar","asLoader"]}
	#Fishing Rod
		function glarth:mechanic/fishing_rod
	# Rip Sign Slime
	execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -2 19.7 -128.0 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:94}}],Invisible:1,Marker:1,Rotation:[-90f,0f],NoGravity:1,DisabledSlots:2039583,Tags:["asLoader"]}
	# Witch Hat
	execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -59 32.0 -136 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:95}}],NoGravity:1,Invisible:1,Invulnerable:1,Pose:{Head:[70f,-210f,-90f]},DisabledSlots:2039583,Tags:["witchHat","asLoader"],Marker:1}
	# Paintings
	execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 6 30.5 -178 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:96}}],NoGravity:1,Marker:1,Invisible:1,Invulnerable:1,Rotation:[180f,0f],DisabledSlots:2039583,Tags:["asLoader"]}
	execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 11.0 31 -182 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:97}}],NoGravity:1,Marker:1,Invisible:1,Invulnerable:1,Rotation:[0f,0f],DisabledSlots:2039583,Tags:["asLoader"]}
	execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 27 32 -185 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:98}}],NoGravity:1,Marker:1,Invisible:1,Invulnerable:1,Rotation:[90f,0f],DisabledSlots:2039583,Tags:["asLoader"]}
	execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 25 32 -185 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:99}}],NoGravity:1,Marker:1,Invisible:1,Invulnerable:1,Rotation:[-90f,0f],DisabledSlots:2039583,Tags:["asLoader"]}
	execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 28 22.9 -218 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:100}}],NoGravity:1,Marker:1,Invisible:1,Invulnerable:1,Rotation:[0f,0f],DisabledSlots:2039583,Tags:["asLoader"]}
	execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -10 29.8 -202 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:101}}],NoGravity:1,Marker:1,Invisible:1,Invulnerable:1,Rotation:[180f,0f],DisabledSlots:2039583,Tags:["asLoader"]}
	# Crown
	execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -79 24.9 -210 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:92}}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[-66f,0f],DisabledSlots:2039583,Tags:["fire","asLoader"],Marker:1}
	#Ice
	execute unless score lowGraphics Stats matches 1 if score quest Stats matches 4 run summon minecraft:armor_stand 17 26 -304 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:93}}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[180f,0f],Pose:{Head:[-50f,0f,-50f]},DisabledSlots:2039583,Marker:1,Tags:["asLoader","asLoaderFar"]}
	execute unless score lowGraphics Stats matches 1 if score quest Stats matches 4 run summon minecraft:armor_stand -9.0 28 -320.0 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:93}}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[180f,0f],Pose:{Head:[50f,0f,-50f]},DisabledSlots:2039583,Marker:1,Tags:["asLoader","asLoaderFar"]}
	execute unless score lowGraphics Stats matches 1 if score quest Stats matches 4 run summon minecraft:armor_stand -8 25.5 -297 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:93}}],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,Marker:1,Tags:["asLoader","asLoaderFar"]}
	execute unless score lowGraphics Stats matches 1 if score quest Stats matches 4 run summon minecraft:armor_stand 27 27.5 -310 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:93}}],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583,Marker:1,Tags:["asLoader","asLoaderFar"]}
	#Bars
	execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 14 26 -200 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:104}}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[120f,0f],DisabledSlots:2039583,Marker:1,Tags:["asLoader"]}
	execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 29 28 -204 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:104}}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[155f,0f],DisabledSlots:2039583,Marker:1,Tags:["asLoader"]}
	#Scarecrow
	execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 15 24.7 -252 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:156}}],NoGravity:1,Invulnerable:1b,DisabledSlots:4144959,Invisible:1,Tags:["scarecrow","asLoader","asLoaderFar"],Marker:1}
	# Swamp Logs
		summon minecraft:armor_stand -33 25.2 -142 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:201}}],NoGravity:1,Pose:{Head:[5f,0f,-2f]},DisabledSlots:4144959,Invulnerable:1,Invisible:1,Rotation:[0f,0f],Marker:1,Tags:["asLoaderFar","asLoader"]}
		summon minecraft:armor_stand -24 25.2 -149 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:201}}],NoGravity:1,Pose:{Head:[-3f,0f,-5f]},DisabledSlots:4144959,Invulnerable:1,Invisible:1,Rotation:[180f,0f],Marker:1,Tags:["asLoaderFar","asLoader"]}
		summon minecraft:armor_stand -29 25.2 -154 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:201}}],NoGravity:1,Pose:{Head:[-3f,0f,7f]},DisabledSlots:4144959,Invulnerable:1,Invisible:1,Rotation:[270f,0f],Marker:1,Tags:["asLoaderFar","asLoader"]}
		summon minecraft:armor_stand -35 25.2 -145 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:202}}],NoGravity:1,Pose:{Head:[7f,0f,4f]},DisabledSlots:4144959,Invulnerable:1,Invisible:1,Rotation:[90f,0f],Marker:1,Tags:["asLoaderFar","asLoader"]}
		summon minecraft:armor_stand -33 25.9 -144 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:203}}],NoGravity:1,Pose:{Head:[5f,0f,7f]},DisabledSlots:4144959,Invulnerable:1,Invisible:1,Rotation:[90f,0f],Marker:1,Tags:["asLoaderFar","asLoader"]}
		summon minecraft:armor_stand -24 25.9 -154 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:203}}],NoGravity:1,Pose:{Head:[-3f,0f,-5f]},DisabledSlots:4144959,Invulnerable:1,Invisible:1,Rotation:[90f,0f],Marker:1,Tags:["asLoaderFar","asLoader"]}
# Mobs
	#Dragonfly
	execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -12 27 -154 {ArmorItems:[{},{},{},{id:"diamond_hoe",tag:{Damage:153},Count:1}],Tags:["dragonfly","dragonfly_lake","asLoader","asLoaderKeep"],NoGravity:1,DisabledSlots:4144959,Invisible:1,Marker:1}
	execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -12 27 -154 {ArmorItems:[{},{},{},{id:"diamond_hoe",tag:{Damage:153},Count:1}],Tags:["dragonfly","dragonfly_lake","asLoader","asLoaderKeep"],NoGravity:1,DisabledSlots:4144959,Invisible:1,Marker:1}
	execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -12 27 -154 {ArmorItems:[{},{},{},{id:"diamond_hoe",tag:{Damage:153},Count:1}],Tags:["dragonfly","dragonfly_lake","asLoader","asLoaderKeep"],NoGravity:1,DisabledSlots:4144959,Invisible:1,Marker:1}
	execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand -40 26 -150 {ArmorItems:[{},{},{},{id:"diamond_hoe",tag:{Damage:153},Count:1}],Tags:["dragonfly","dragonfly_swamp","asLoader","asLoaderKeep"],NoGravity:1,DisabledSlots:4144959,Invisible:1,Marker:1}
	execute unless score lowGraphics Stats matches 1 run summon minecraft:armor_stand 22 26 -213 {ArmorItems:[{},{},{},{id:"diamond_hoe",tag:{Damage:153},Count:1}],Tags:["dragonfly","dragonfly_richard","asLoader","asLoaderKeep"],NoGravity:1,DisabledSlots:4144959,Invisible:1,Marker:1}
	# Mob Spawn
	execute unless score lowGraphics Stats matches 1 run function glarth:mechanic/animation/mouse/spawn
	execute unless score lowGraphics Stats matches 1 run function glarth:mechanic/animation/crow/spawn10
	execute unless score lowGraphics Stats matches 1 unless score season winter matches 1 run function glarth:mechanic/animation/duck/random
	execute unless score lowGraphics Stats matches 1 run function glarth:mechanic/animation/butterfly/spawn15
	execute unless score lowGraphics Stats matches 1 run function glarth:mechanic/animation/owl/spawn
	execute unless score lowGraphics Stats matches 1 unless score season winter matches 1 run function glarth:mechanic/animation/frog/random
# E Table
execute unless score lowGraphics Stats matches 1 positioned -56 30 -135 run function ench:table/place
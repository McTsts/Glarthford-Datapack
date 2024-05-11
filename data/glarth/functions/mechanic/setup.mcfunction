#Reset
	tp @e[type=!Player,tag=!area_main] ~ 0 ~
	entitydata @e[type=!Player,tag=!area_main] {DeathTime:19,Health:0.0f}
	kill @e[type=!Player,tag=!area_main]
	scoreboard players set tick Dis 4800
	scoreboard players tag @e[tag=area_main] remove ruby_a
	scoreboard players tag @e[tag=area_main] remove ruby_b
	scoreboard players tag @e[tag=area_main] remove ruby_c
	scoreboard players tag @a remove inMaze
	scoreboard players set gate Stats 0
	execute @a ~ ~ ~ function mctsts:mechanic/ender_reset
	scoreboard players add id edgeI 1
	scoreboard players operation @a edgeI = id edgeI
	scoreboard players set @a credits 0
	scoreboard players tag @a remove credits
	xp -100l @a
#Setup
	time set 20000
#Character
	#City
		summon armor_stand 22 27 -205.0 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:6,tag:{Unbreakable:1}}],Tags:["char","blacksmith"],Rotation:[-10f,0f],CustomName:"Blacksmith",Team:black,CustomNameVisible:1}
		summon armor_stand 13.0 26 -201.0 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:36,tag:{Unbreakable:1}}],Tags:["char","merchant1"],Rotation:[45f,0f],CustomName:"Merchant",Team:red,CustomNameVisible:1}
		summon armor_stand 2.0 26 -201.0 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:35,tag:{Unbreakable:1}}],Tags:["char","merchant2"],Rotation:[-45f,0f],CustomName:"Merchant",Team:dark_blue,CustomNameVisible:1}
		summon armor_stand 13.3 29.5 -213 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:9,tag:{Unbreakable:1}}],Tags:["char","baker","sleep"],Rotation:[-90f,0f],CustomName:"Baker",Team:red,CustomNameVisible:1,Pose:{Head:[-90f,0f,0f]},NoGravity:1}
		summon armor_stand 0.7 29.5 -211.8 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:10,tag:{Unbreakable:1}}],Tags:["char","butcher","sleep"],Rotation:[110f,0f],CustomName:"Butcher",Team:dark_red,CustomNameVisible:1,Pose:{Head:[-90f,0f,0f]},NoGravity:1}
		summon armor_stand 27 23 -217.0 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:7,tag:{Unbreakable:1}}],Tags:["char","richard"],Rotation:[-90f,0f],CustomName:"Richard",Team:dark_aqua,CustomNameVisible:1}
		summon armor_stand 21 26 -184 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:16,tag:{Unbreakable:1}}],Tags:["char","guard","sleep"],Rotation:[-90f,0f],CustomName:"Guard",Team:gray,CustomNameVisible:1}
		summon armor_stand 9 26 -182 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:23,tag:{Unbreakable:1}}],Tags:["char","mayor"],Rotation:[90f,0f],CustomName:"Mayor",Team:black,CustomNameVisible:1}
		summon armor_stand 54 38 -125 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:19,tag:{Unbreakable:1}}],Tags:["char","druid"],Rotation:[180f,0f],CustomName:"Tribe Druid",Team:dark_green,CustomNameVisible:1}
		summon armor_stand 73 27 -252 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:3,tag:{Unbreakable:1}}],Tags:["char","lumberjack","sleep"],Rotation:[65f,0f],CustomName:"Lumberjack",Team:gold,CustomNameVisible:1}
		summon armor_stand 64 27 -153 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:14,tag:{Unbreakable:1}}],Tags:["char","archaeologist"],Rotation:[180f,0f],CustomName:"Archaeologist",Team:gray,CustomNameVisible:1}
		summon armor_stand -69 21 -124 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:39,tag:{Unbreakable:1}}],Tags:["char","evoker"],Rotation:[-135f,0f],CustomName:"Evoker",Team:gold,CustomNameVisible:1}
		summon armor_stand -56 33 -134 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:18,tag:{Unbreakable:1}}],Tags:["char","witch"],Rotation:[180f,0f],CustomName:"Witch",Team:dark_purple,CustomNameVisible:1}
		summon armor_stand 17 27 -144 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:8,tag:{Unbreakable:1}}],Tags:["char","fisher"],Rotation:[90f,0f],CustomName:"Fisher",Team:blue,CustomNameVisible:1}
		summon armor_stand 100 32 -171 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:17,tag:{Unbreakable:1}}],Tags:["char","miner"],Rotation:[120f,0f],CustomName:"Miner",Team:dark_gray,CustomNameVisible:1}
		summon armor_stand -68 29 -170 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:32,tag:{Unbreakable:1}}],Tags:["char","adventurer"],Rotation:[-70f,0f],CustomName:"Adventurer",Team:gold,CustomNameVisible:1}
		summon armor_stand -83 27 -209.0 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:50,tag:{Unbreakable:1}}],Tags:["char","mourner"],Rotation:[0f,0f],CustomName:"Mourner",Team:gray,CustomNameVisible:1}
		summon armor_stand -74 27 -205 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:53,tag:{Unbreakable:1}}],Tags:["char","digger"],Rotation:[180f,0f],CustomName:"Grave Digger",Team:gray,CustomNameVisible:1}
		summon armor_stand -67 27 -211 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:16,tag:{Unbreakable:1}}],Tags:["char","graveyard"],Rotation:[-90f,0f],CustomName:"Guard",Team:gray,CustomNameVisible:1}
		summon armor_stand 2 26 -284 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:31,tag:{Unbreakable:1}}],Tags:["char","enderman","cnoc"],Rotation:[-50f,0f],CustomName:"Enderman",Team:dark_purple,CustomNameVisible:1}
		summon armor_stand 92 32 -174 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:52,tag:{Unbreakable:1}}],Tags:["char","explorer"],Rotation:[90f,0f],CustomName:"Explorer",Team:gold,CustomNameVisible:1}
		summon armor_stand 7 26 -251 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:11,tag:{Unbreakable:1}}],Tags:["char","farmer"],Rotation:[60f,0f],CustomName:"Farmer",Team:yellow,CustomNameVisible:1}
		summon armor_stand -6 27 -269 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:13,tag:{Unbreakable:1}}],Tags:["char","apple"],Rotation:[40f,0f],CustomName:"Apple Lover",Team:red,CustomNameVisible:1}
		summon armor_stand 92.2 26 -159 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:21,tag:{Unbreakable:1}}],Tags:["char","skeleton_king"],Rotation:[180f,0f],CustomName:"Skeleton King",Team:dark_gray,CustomNameVisible:1,Rotation:[90f,0.0f]}
		summon armor_stand -5 27 -186 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:5,tag:{Unbreakable:1}}],Tags:["char","priest"],Rotation:[90f,0f],CustomName:"Priest",Team:white,CustomNameVisible:1}
		summon armor_stand -36 28 -266 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:4,tag:{Unbreakable:1}}],Tags:["char","bum"],Rotation:[20f,0f],CustomName:"Bum",Team:gray,CustomNameVisible:1}
		summon armor_stand -12 16 -129 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:51,tag:{Unbreakable:1}}],Tags:["char","diver"],Rotation:[180f,0f],CustomName:"Diver",Team:aqua,CustomNameVisible:1}
		summon armor_stand 72 24 -274 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:49,tag:{Unbreakable:1}}],Tags:["char","cave_man"],Rotation:[30f,0f],CustomName:"Caveman",Team:gray,CustomNameVisible:1}
		summon armor_stand 1 28 -132 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:25,tag:{Unbreakable:1}}],Tags:["char","sailor"],Rotation:[90f,0f],CustomName:"Sailor",Team:blue,CustomNameVisible:1}
		summon armor_stand -66 29 -228 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:62,tag:{Unbreakable:1}}],Tags:["char","rose"],Rotation:[-90f,0f],CustomName:"Rose Lover",Team:red,CustomNameVisible:1}
		summon armor_stand -115 22 -201 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:27,tag:{Unbreakable:1}}],Tags:["char","pigman"],Rotation:[-100f,0f],CustomName:"Zombie Pigman",Team:light_purple,CustomNameVisible:1}
		summon armor_stand -28 26 -272 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:26,tag:{Unbreakable:1}}],Tags:["char","thief"],Rotation:[-90f,0f],CustomName:"Thief",Team:gold,CustomNameVisible:1}
		summon armor_stand -44 27 -195 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:12,tag:{Unbreakable:1}}],Tags:["char","worker"],Rotation:[-60f,0f],CustomName:"Brewery Worker",Team:gold,CustomNameVisible:1}
		summon armor_stand 173 26 -156 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:70,tag:{Unbreakable:1}}],Tags:["char","roberto"],Rotation:[180f,0f],CustomName:"Roberto",Team:black,CustomNameVisible:1}
		summon armor_stand 173 30 -161 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:33,tag:{Unbreakable:1}}],Tags:["char","wife"],Rotation:[90f,0f],CustomName:"Wife",Team:light_purple,CustomNameVisible:1}
		summon armor_stand -48 31 -203 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:28,tag:{Unbreakable:1}}],Tags:["char","brewer"],Rotation:[0f,0f],CustomName:"Brewer",Team:gold,CustomNameVisible:1}
		summon armor_stand 50 27 -172 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:66,tag:{Unbreakable:1}}],Tags:["char","hermit"],Rotation:[90f,0f],CustomName:"Hermit",Team:yellow,CustomNameVisible:1}
		summon armor_stand 44 27 -148 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:65,tag:{Unbreakable:1}}],Tags:["char","dockmaster"],Rotation:[90f,0f],CustomName:"Dockmaster",Team:red,CustomNameVisible:1}
		summon armor_stand -88.0 40 -231 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:54,tag:{Unbreakable:1}}],Tags:["char","time_traveller"],Rotation:[180f,0f],CustomName:"Time Traveller",Team:gray,CustomNameVisible:1}
		summon armor_stand -86 49 -239 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:24,tag:{Unbreakable:1}}],Tags:["char","astronomer"],Rotation:[90f,0f],CustomName:"Astronomer",Team:white,CustomNameVisible:1}
		summon armor_stand 1 27.1 -101 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:37,tag:{Unbreakable:1}}],Tags:["char","slime"],Rotation:[-165f,0f],CustomName:"Slime",Team:green,CustomNameVisible:1}
		summon armor_stand -11 26 -159 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:22,tag:{Unbreakable:1}}],Tags:["char","skeleton"],Rotation:[140f,0f],CustomName:"Skeleton",Team:dark_gray,CustomNameVisible:1}
		summon armor_stand -24 29 -229 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:68,tag:{Unbreakable:1}}],Tags:["char","zombie"],Rotation:[0f,0f],CustomName:"Zombie",Team:dark_green,CustomNameVisible:1}
		summon armor_stand -81 27 -216 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:59,tag:{Unbreakable:1}}],Tags:["char","ghost1","cnoc"],Rotation:[-20f,0f],CustomName:"Ghost",Team:white,CustomNameVisible:1}
		summon armor_stand -81 27 -202 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:60,tag:{Unbreakable:1}}],Tags:["char","ghost2","cnoc"],Rotation:[-160f,0f],CustomName:"Ghost",Team:white,CustomNameVisible:1}
		summon armor_stand 119 29 -248 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:30,tag:{Unbreakable:1}}],Tags:["char","ender_priest"],Rotation:[90f,0f],CustomName:"Ender Priest",Team:dark_purple,CustomNameVisible:1}
		summon armor_stand 79 26 -220.0 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:63,tag:{Unbreakable:1}}],Tags:["char","mrk"],Rotation:[90f,0f],CustomName:"Mister Konstantin",Team:dark_blue,CustomNameVisible:1}
		summon armor_stand 31.0 26 -171.0 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:55,tag:{Unbreakable:1}}],Tags:["char","marhjo","cnoc"],Rotation:[110f,0f],CustomName:"Mark von Deer",Team:dark_green,CustomNameVisible:1,Pose:{Head:[-20f,20f,20f]}}
		summon armor_stand 28 28 -124 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:2,tag:{Unbreakable:1}}],Tags:["char","enderpig"],Rotation:[0f,0f],CustomName:"Opal Ender",Team:dark_purple,CustomNameVisible:1}
		summon armor_stand -44.0 32.8 -130 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,Damage:67,tag:{Unbreakable:1}}],Rotation:[180f,0f],CustomName:"Ben",Team:red,CustomNameVisible:1,Pose:{Head:[-90f,30f,0f]},NoGravity:1}
		summon armor_stand -43.9 34.0 -129.5 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{}],Tags:["char","bentechy","cnoc"],Rotation:[180f,0f],CustomName:"Ben",Team:red,Pose:{Head:[-90f,30f,0f]},NoGravity:1}
		summon armor_stand 76 23 -253 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:1,tag:{Unbreakable:1}}],Tags:["char","mctsts"],Rotation:[180f,0f],CustomName:"Thomas Rubycrust",Team:green,CustomNameVisible:0}
		summon armor_stand -42 25 -251.0 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:64,tag:{Unbreakable:1}}],Tags:["char","checkminer","cnoc"],Rotation:[90f,0f],CustomName:"Lucas",Team:green,CustomNameVisible:1}
		summon armor_stand 9 26 -269 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:69,tag:{Unbreakable:1}}],Tags:["char","ttextt"],Rotation:[-90f,0f],CustomName:"TTexter Fream",Team:dark_red,CustomNameVisible:1}
#Entity
	#Armor Stands
		summon minecraft:armor_stand 28 27 -200 {ArmorItems:[{id:"golden_boots",Count:1},{id:"leather_leggings",Count:1},{id:"leather_chestplate",Count:1},{}],Rotation:[180f,0f]}
		summon minecraft:armor_stand 27 27 -200 {ArmorItems:[{},{id:"chainmail_leggings",Count:1},{id:"golden_chestplate",Count:1},{id:"leather_helmet",Count:1}],Rotation:[180f,0f]}
	#Item Frames
		summon minecraft:item_frame 8 32 -181 {Facing:1b}
		summon minecraft:item_frame 5 28 -178 {Facing:2b}
		summon minecraft:item_frame 9 28 -178 {Facing:2b}
		summon minecraft:item_frame -8 30 -204 {ItemRotation:4,Item:{id:stone_slab,Count:1},Facing:1b}
		summon minecraft:item_frame 74 27 -257 {ItemRotation:4,Item:{id:stone_slab,Count:1},Facing:0b}
	#Other
		summon minecraft:armor_stand -6 25.1 -148.0 {Small:1b,ArmorItems:[{},{},{},{id:diamond,Count:1}],Pose:{Head:[90f,0f,0f]},Rotation:[180f,0f],NoGravity:1,Invisible:1,Marker:1,Tags:["diamond"],DisabledSlots:2039583}
		summon minecraft:armor_stand 10 26.1 -180.0 {Small:1b,ArmorItems:[{},{},{},{id:paper,Count:1}],Pose:{Head:[90f,0f,0f]},Rotation:[180f,0f],NoGravity:1,Invisible:1,Marker:1,Tags:["paper1"],DisabledSlots:2039583}
		summon minecraft:armor_stand 4 26.1 -179.0 {Small:1b,ArmorItems:[{},{},{},{id:paper,Count:1}],Pose:{Head:[90f,0f,0f]},Rotation:[180f,0f],NoGravity:1,Invisible:1,Marker:1,Tags:["paper2"],DisabledSlots:2039583}
		summon minecraft:armor_stand 73 24.1 -268.0 {Small:1b,ArmorItems:[{},{},{},{id:flint,Count:1}],Pose:{Head:[90f,0f,0f]},Rotation:[180f,0f],NoGravity:1,Invisible:1,Marker:1,Tags:["flint"],DisabledSlots:2039583}
		summon minecraft:armor_stand 71 23.1 -274.0 {Small:1b,ArmorItems:[{},{},{},{id:coal,Count:1}],Pose:{Head:[90f,0f,0f]},Rotation:[180f,0f],NoGravity:1,Invisible:1,Marker:1,Tags:["coal"],DisabledSlots:2039583}
		summon minecraft:armor_stand 75 27.5 -250.8 {ArmorItems:[{},{},{},{id:iron_axe,Count:1}],Pose:{Head:[0f,0f,-180f]},Rotation:[180f,0f],NoGravity:1,Invisible:1,Marker:1,Tags:["axe"],DisabledSlots:2039583}
		summon minecraft:ender_crystal 126 37 -258 {ShowBottom:0b,BeamTarget:{X:119,Y:27,Z:-248}}
	#Rabbit
		summon minecraft:rabbit 31 27 -172
		summon minecraft:rabbit 31 29 -188
		summon minecraft:rabbit 12 26 -199
		summon minecraft:rabbit 32 27 -199
		summon minecraft:rabbit -3 27 -206
		summon minecraft:rabbit -13 27 -200
	#Mobs
		summon minecraft:chicken -6 26 -248 
		summon minecraft:chicken -6 26 -248 
		summon minecraft:chicken -6 26 -248 
		summon minecraft:chicken -6 26 -248 
		summon minecraft:chicken -6 26 -248 
		summon minecraft:cow -5 26 -243
		summon minecraft:wolf -15 26 -211
		summon minecraft:cow -4 26 -253 
		summon minecraft:cow -4 26 -253 
		summon minecraft:cow 39 28 -218
		summon minecraft:cow -33 26 -172
		summon minecraft:cow 31 27 -147
		summon minecraft:cow 31 27 -147
		summon minecraft:cow 31 27 -147
		summon cow 15 26 -270
		summon cow 15 26 -270
		summon chicken 15 26 -270
		summon chicken 15 26 -270
		summon chicken 15 26 -270
		summon cow 68 27 -251
		summon cow 68 27 -251
		summon chicken 68 27 -251
		summon minecraft:chicken -43 31 -255
		summon minecraft:chicken -43 31 -255
		summon minecraft:chicken -43 31 -255
		summon minecraft:chicken -43 31 -255
		summon minecraft:squid -2 24 -139 {PersistenceRequired:1b}
		summon minecraft:squid -2 24 -139 {PersistenceRequired:1b}
		summon minecraft:squid -2 24 -139 {PersistenceRequired:1b}
		summon minecraft:squid -2 24 -139 {PersistenceRequired:1b}
		summon minecraft:pig -48 26 -140
	#Fish
		summon minecraft:item 9 24 -147 {Item:{id:"fish",Count:1},Age:-32768}
		summon minecraft:item -3 24 -146 {Item:{id:"fish",Count:1},Age:-32768}
		summon minecraft:item 6 24 -132 {Item:{id:"fish",Count:1},Age:-32768}
		summon minecraft:item -19 25 -128 {Item:{id:"fish",Count:1},Age:-32768}
	#Name
		summon minecraft:area_effect_cloud 4 26.5 -180 {Radius:0.5f,Duration:2147483647,Particle:"take",CustomName:"Letter",CustomNameVisible:1,Tags:["pickup_name"]}
		summon minecraft:area_effect_cloud 10 26.5 -181 {Radius:0.5f,Duration:2147483647,Particle:"take",CustomName:"Letter",CustomNameVisible:1,Tags:["pickup_name"]}
		summon minecraft:area_effect_cloud 73 24.5 -269 {Radius:0.5f,Duration:2147483647,Particle:"take",CustomName:"Flint",CustomNameVisible:1,Tags:["pickup_name"]}
		summon minecraft:area_effect_cloud 71 23.5 -275 {Radius:0.5f,Duration:2147483647,Particle:"take",CustomName:"Coal",CustomNameVisible:1,Tags:["pickup_name"]}
		summon minecraft:area_effect_cloud -6 25.5 -149 {Radius:0.5f,Duration:2147483647,Particle:"take",CustomName:"Diamond",CustomNameVisible:1,Tags:["pickup_name"]}
	#Sapling
		summon Item 57 26 -205 {Item:{id:"minecraft:sapling",Count:1,Damage:1},Age:-32768}
		summon Item 43 26 -230 {Item:{id:"minecraft:sapling",Count:1,Damage:1},Age:-32768}
		summon Item 31 26 -251 {Item:{id:"minecraft:sapling",Count:1,Damage:1},Age:-32768}
		summon Item 73 27 -254 {Item:{id:"minecraft:sapling",Count:1,Damage:1},Age:-32768}
		summon Item 48 26 -242 {Item:{id:"minecraft:sapling",Count:1,Damage:1},Age:-32768}
#Containers
	#Items
		clone 15 24 -217 15 24 -217 15 26 -217
		clone -2 24 -214 -2 24 -214 -2 30 -214
		clone 18 24 -214 18 24 -214 17 30 -215
		clone 28 20 -216 28 20 -216 28 23 -216
		clone 21 23 -186 21 23 -186 21 26 -186
		clone 17 23 -214 17 23 -214 17 26 -214
		clone 14 23 -217 14 23 -217 14 26 -217
		clone 78 20 -257 78 20 -257 77 28 -257
		clone -53 20 -135 -53 20 -135 -54 33 -137
		clone 3 18 -268 3 18 -268 4 26 -268 
		clone -11 25 -271 -11 25 -271 -11 27 -271
		clone -4 30 -243 -4 30 -243 -5 30 -244
		clone -15 30 -248 -15 30 -248 -15 30 -246
		clone 65 24 -226 65 24 -226 67 25 -228
		clone 26 26 -206 26 26 -206 26 28 -206
		clone -5 23 -210 -5 23 -210 -5 26 -210
		clone -2 24 -216 -2 24 -216 -2 28 -216
		clone 21 25 -203 21 25 -203 20 28 -204
		clone 27 24 -184 27 24 -184 27 26 -184
		clone -12 22 -177 -13 22 -177 -13 24 -177
		clone -12 24 -204 -12 24 -204 -11 26 -204
		clone -15 24 -186 -15 24 -187 -15 26 -184
		clone -69 27 -228 -69 27 -228 -69 29 -228
		clone -79 23 -206 -78 23 -206 -79 25 -206
		clone -78 23 -212 -79 23 -212 -79 25 -212
		clone -82 23 -212 -83 23 -212 -83 25 -212
		clone -82 23 -208 -83 23 -208 -83 25 -208
		clone -50 25 -185 -50 25 -185 -48 27 -184
		clone -54 18 -186 -54 18 -186 -53 31 -186
		clone -49 18 -195 -49 18 -195 -48 31 -196
		clone 129 28 -172 129 28 -172 128 32 -172
		clone -61 18 -134 -61 18 -134 -59 34 -134
		clone -35 18 -178 -35 18 -178 -35 26 -178
		clone -90 37 -232 -90 37 -232 -90 40 -232
		clone 9 18 -98 9 18 -98 10 20 -98
		clone 115 28 -241 115 28 -241 115 28 -239
		clone -112 14 -191 -112 14 -191 -112 22 -191
		clone -14 18 -303 -14 18 -303 -15 27 -304
		clone -47 18 -249 -47 18 -249 -47 30 -249
		clone 10 18 -178 10 18 -178 10 32 -178
		clone 6 18 -170 6 18 -170 6 26 -171
		clone 82 28 -167 82 28 -167 83 32 -167
		clone 21 24 -232 21 24 -232 22 27 -232
		clone 6 24 -179 6 24 -179 7 26 -179
		clone 62 23 -192 62 23 -192 62 26 -192
		clone 27 18 -201 27 18 -201 26 33 -201
		clone -59 18 -195 -59 18 -195 -59 27 -195
		clone 24 18 -224 24 18 -224 18 19 -221
		clone 8 18 -218 8 18 -218 15 19 -218
		clone 75 18 -254 75 18 -254 76 21 -254
		clone 103 23 -192 103 23 -192 103 26 -192
	#Empty
		setblock -3 30 -214 minecraft:furnace 3
		clone 23 19 -207 21 18 -207 21 27 -207
		setblock -10 26 -204 minecraft:furnace 3
		setblock -12 30 -202 minecraft:chest 5
		setblock 77 27 -256 minecraft:furnace 4
		setblock 28 27 -149 minecraft:chest 0
		setblock 30 27 -149 minecraft:furnace facing=north
		fill -7 26 -133 -6 26 -133 chest facing=south
		setblock -54 27 -194 minecraft:furnace facing=west
		fill -58 28 -202 -57 28 -202 minecraft:furnace facing=south
		fill -53 28 -200 -53 27 -200 minecraft:furnace facing=south
		fill 87 33 -191 87 32 -191 minecraft:furnace facing=west
		setblock 87 32 -190 minecraft:furnace facing=west
		setblock -48 32 -189 minecraft:brewing_stand
		setblock -53 32 -189 minecraft:brewing_stand
		setblock -52 32 -193 minecraft:brewing_stand
		setblock -54 32 -195 minecraft:brewing_stand
		setblock 121 32 -189 minecraft:furnace facing=west
		fill 121 33 -188 121 32 -188 minecraft:furnace facing=west
		setblock 26 29 -128 chest facing=north
		setblock 21 28 -126 minecraft:chest facing=east
	#Other
		setblock 16 27 -214 minecraft:cake
		setblock -4 26 -210 minecraft:cauldron 2
		setblock 22 27 -204 minecraft:anvil 1
		setblock -14 30 -202 minecraft:jukebox
		setblock -17 25 -213 minecraft:cauldron 3
		setblock -68 27 -212 lever facing=east,powered=false
		setblock -52 31 -196 minecraft:cauldron level=1
		setblock -48 31 -191 minecraft:cauldron level=2
		setblock 80 26 -220 minecraft:jukebox
		setblock -36 28 -259 minecraft:jukebox
		setblock -49 29 -268 minecraft:jukebox
		setblock -51 29 -268 minecraft:jukebox
		setblock -58 30 -266 minecraft:jukebox
		setblock -63 29 -253 minecraft:jukebox
		setblock -60 28 -246 minecraft:jukebox
		setblock -63 29 -241 minecraft:jukebox
		setblock -66 29 -245 minecraft:jukebox
		setblock -41 28 -256 minecraft:jukebox
		setblock -45 28 -250 minecraft:jukebox
		setblock -46 27 -233 minecraft:jukebox
		setblock -56 28 -233 minecraft:jukebox
		setblock 97 20 -116 lever facing=up_z,powered=false
		setblock 102 22 -142 lever facing=east,powered=false destroy
#Flower Pots
	setblock 11 27 -181 flower_pot 0 destroy {Item:"minecraft:red_flower",Data:3}
	setblock 4 32 -181 flower_pot 0 destroy 
	setblock -8 27 -204 flower_pot 0 destroy
	setblock -13 27 -202 flower_pot 0 destroy {Item:"minecraft:red_flower",Data:4}
	setblock -14 31 -203 flower_pot 0 destroy {Item:"minecraft:red_flower",Data:4}
	setblock -9 27 -211 flower_pot 0 destroy {Item:"minecraft:red_flower",Data:4}
	setblock 0 28 -214 flower_pot 0 destroy {Item:"minecraft:red_flower",Data:4}
	setblock -9 31 -212 flower_pot 0 destroy 
	setblock -16 26 -213 flower_pot 0 destroy 
	setblock -4 31 -209 flower_pot 0 destroy {Item:"minecraft:red_flower",Data:1}
	setblock 13 31 -215 flower_pot 0 destroy {Item:"minecraft:red_flower",Data:7}
	setblock 15 27 -210 flower_pot 0 destroy {Item:"minecraft:red_flower",Data:7}
	setblock -52 30 -136 flower_pot 0 destroy {Item:"minecraft:red_flower",Data:1}
	setblock -59 30 -135 flower_pot 0 destroy {Item:"minecraft:red_flower",Data:1}
	setblock -59 34 -137 flower_pot 0 destroy {Item:"minecraft:red_flower",Data:1}
	setblock -54 34 -135 flower_pot 0 destroy {Item:"minecraft:red_flower",Data:1}
	setblock 28 31 -150 flower_pot 0 destroy {Item:"minecraft:red_flower",Data:0}
	setblock 175 27 -163 flower_pot 0 destroy {Item:"minecraft:tallgrass",Data:2}
	setblock -28 27 -270 flower_pot 0 destroy {Item:"minecraft:red_flower",Data:0}
	setblock 76 27 -222 flower_pot 0  destroy {Item:"minecraft:red_flower",Data:7}
	setblock 73 25 -275 flower_pot 0 destroy {Item:"minecraft:deadbush"}
#Doors
	#Replace
		setblock 26 43 -185 minecraft:trapdoor
		setblock -13 30 -204 minecraft:trapdoor 1
		setblock 2 26 -213 minecraft:spruce_fence_gate 1
		setblock -15 26 -212 minecraft:spruce_fence_gate 2
		setblock -8 28 -199 minecraft:trapdoor 9
		setblock -8 29 -198 minecraft:trapdoor 5
		fill 79 27 -257 79 27 -258 minecraft:trapdoor 3
		setblock -5 26 -213 minecraft:trapdoor 10
		setblock 28 28 -148 minecraft:dark_oak_fence_gate
		setblock 28 28 -151 minecraft:fence_gate facing=north
		setblock 30 28 -151 minecraft:fence_gate facing=north 
		setblock 32 28 -150 minecraft:fence_gate facing=east
		setblock 29 28 -152 minecraft:fence_gate facing=south,open=true
		setblock 9 26 -248 minecraft:spruce_fence_gate facing=west
		setblock -1 28 -132 minecraft:trapdoor half=bottom,facing=east
		setblock -12 27 -132 minecraft:fence_gate facing=north
		fill -48 33 -197 -48 31 -197 minecraft:trapdoor facing=south,half=bottom,open=true
		fill -48 33 -200 -48 31 -200 minecraft:trapdoor facing=north,half=bottom,open=true
		setblock 37 26 -191 minecraft:trapdoor facing=west,half=bottom,open=true
		setblock 41 26 -191 minecraft:trapdoor facing=east,half=bottom,open=true
		setblock 45 29 -157 minecraft:trapdoor facing=north,half=bottom,open=true
		setblock 43 29 -157 minecraft:trapdoor facing=north,half=bottom,open=true
		setblock 41 29 -155 minecraft:trapdoor facing=west,half=bottom,open=true
		setblock 41 29 -153 minecraft:trapdoor facing=west,half=bottom,open=true
		setblock 43 29 -151 minecraft:trapdoor facing=south,half=bottom,open=true
		setblock 45 29 -151 minecraft:trapdoor facing=south,half=bottom,open=true
		setblock 47 29 -153 minecraft:trapdoor facing=east,half=bottom,open=true
		setblock 47 29 -155 minecraft:trapdoor facing=east,half=bottom,open=true
		setblock 44 31 -154 minecraft:trapdoor facing=south,half=top,open=false
		setblock -44 30 -253 minecraft:trapdoor facing=west,half=bottom,open=false
		setblock 25 26 -234 minecraft:trapdoor facing=east,half=bottom,open=true
		setblock 19 26 -228 minecraft:trapdoor facing=south,half=bottom,open=true
		fill 107 21 -127 107 19 -128 minecraft:trapdoor facing=east,half=top,open=true replace minecraft:trapdoor
		fill 108 21 -127 108 19 -128 minecraft:trapdoor facing=west,half=top,open=true replace minecraft:trapdoor
		setblock 16 25 -216 minecraft:trapdoor facing=north,half=top
		setblock 15 25 -221 minecraft:trapdoor facing=south,half=top
	#Close
		summon minecraft:area_effect_cloud 71 27 -257 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 11 27 -213 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 2 27 -216 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -8 27 -200 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 7 27 -185 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 8 31 -179 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 26 27 -188 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 23 26 -185 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 24 27 -202 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 28 27 -213 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -52 29 -135 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 26 27 -150 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 5 27 -271 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -1 28 -245 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -1 28 -246 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -9 26 -132 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -14 27 -193 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -48 27 -188 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -49 29 -187 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -48 29 -186 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -47 29 -186 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -48 29 -185 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -49 29 -184 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -50 27 -185 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -52 29 -184 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -42 28 -176 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -19 28 -123 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 14 27 -234 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 97 20 -130 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 96 20 -130 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 108 20 -130 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 107 20 -130 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 108 20 -137 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 107 20 -137 {Tags:["DR"],Radius:0.5f,Duration:2147483647,Particle:"take"}
	#Lamp Close
		summon minecraft:area_effect_cloud 52 31 -196 {Tags:["DRL"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 43 31 -194 {Tags:["DRL"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 3 30 -237 {Tags:["DRL"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -28 32 -205 {Tags:["DRL"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -27 31 -194 {Tags:["DRL"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -37 31 -197 {Tags:["DRL"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -33 31 -218 {Tags:["DRL"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -45 32 -226 {Tags:["DRL"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -61 32 -227 {Tags:["DRL"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud -63 31 -211 {Tags:["DRL"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 93 19 -143 {Tags:["DRL"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 104 19 -125 {Tags:["DRL"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 111 19 -125 {Tags:["DRL"],Radius:0.5f,Duration:2147483647,Particle:"take"}
#World
	#Doors
		setblock 28 25 -207 air
		setblock 5 24 -267 air
		setblock -9 24 -213 air
		setblock -46 25 -194 air
		setblock 74 24 -256 lever facing=north,powered=false destroy
	#Other
		clone 46 19 -172 37 15 -181 45 23 -190
		clone 56 20 -194 54 17 -195 64 26 -194
		fill 68 26 -157 68 29 -155 minecraft:monster_egg variant=cracked_brick replace air
		clone 67 21 -155 67 19 -157 70 26 -157
		fill -69 30 -208 -69 27 -210 minecraft:iron_bars
		setblock 102 33 -207 minecraft:quartz_ore
		setblock 104 32 -206 minecraft:quartz_ore
		setblock 100 33 -205 minecraft:quartz_ore
		fill -78 26 -212 -83 26 -204 minecraft:soul_sand 0 replace air
		fill 34 26 -194 34 29 -198 minecraft:spruce_fence
		fill -20 29 -194 -20 26 -198 minecraft:spruce_fence
		fill 5 29 -223 9 26 -223 minecraft:spruce_fence
		fill -13 25 -177 -12 25 -176 minecraft:soul_sand
		fill -69 27 -208 -69 30 -210 minecraft:iron_bars
		fill 163 28 -160 163 26 -157 air
		fill 169 29 -153 167 29 -153 air
		setblock -132 30 -167 air
		setblock -130 31 -241 air
		fill -117 25 -203 -117 22 -205 minecraft:nether_brick_fence 0 replace air
		setblock 2 27 -334 minecraft:end_portal_frame facing=north,eye=false
		fill 18 26 -106 13 24 -106 air
		fill 3 27 -331 3 27 -328 air
		setblock 30 26 -172 sand
	#Field
		fill 10 26 -253 23 26 -243 air 0 replace wheat
		fill 10 26 -253 23 26 -243 air 0 replace carrots
		fill 10 26 -253 23 26 -243 air 0 replace beetroots
		fill 10 25 -253 23 25 -243 minecraft:farmland moisture=7 replace dirt
		fill 10 26 -250 23 26 -253 wheat age=7 replace air
		fill 10 26 -249 24 26 -247 carrots age=7 replace air
		fill 10 26 -245 23 26 -243 beetroots age=3 replace air
		fill 13 26 -246 16 26 -246 minecraft:beetroots age=3 replace air
	#Mine Maze
		summon minecraft:area_effect_cloud 106 32 -174 {Tags:["maze"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 109 32 -166 {Tags:["maze"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 114 32 -161 {Tags:["maze"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 117 32 -174 {Tags:["maze"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 109 32 -182 {Tags:["maze"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 104 32 -187 {Tags:["maze"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 106 32 -194 {Tags:["maze"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 116 32 -194 {Tags:["maze"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 122 32 -186 {Tags:["maze"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 113 32 -183 {Tags:["maze"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 108 33 -169 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 106 33 -164 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 111 33 -171 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 112 33 -176 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 118 33 -171 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 116 33 -166 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 111 33 -161 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 110 33 -186 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 115 33 -180 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 118 33 -176 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 121 33 -183 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 117 33 -186 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 119 33 -188 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 116 33 -191 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 112 33 -193 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 105 33 -191 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 107 33 -179 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 126 33 -180 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 123 33 -175 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 127 33 -173 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 120 33 -168 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 123 33 -164 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 118 33 -160 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 130 33 -185 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 126 33 -191 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 124 33 -198 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 119 33 -196 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 115 33 -196 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 112 33 -200 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 103 33 -198 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 98 33 -200 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 99 33 -193 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
		summon minecraft:area_effect_cloud 100 33 -186 {Tags:["maze_torch"],Radius:0.5f,Duration:2147483647,Particle:"take"}
	#Gravel
		fill 97 34 -170 99 32 -170 air 0
		fill 99 25 -169 99 26 -169 minecraft:gravel
		fill 99 25 -168 100 25 -168 minecraft:gravel
		fill 99 26 -165 96 26 -165 minecraft:gravel
		fill 98 27 -165 96 27 -165 minecraft:gravel
		setblock 96 28 -165 minecraft:gravel
		setblock 96 27 -166 minecraft:gravel
		setblock 96 26 -167 minecraft:gravel
		fill 97 25 -166 98 25 -166 minecraft:gravel
		setblock 97 25 -167 minecraft:gravel
		setblock 98 26 -166 minecraft:carpet color=yellow
		setblock 96 27 -167 minecraft:carpet color=yellow
		fill 97 33 -165 98 33 -165 minecraft:gravel
		setblock 99 32 -165 minecraft:gravel
		fill 97 33 -166 97 32 -166 minecraft:gravel
		setblock 98 32 -167 minecraft:gravel
		fill 97 34 -167 97 32 -169 minecraft:gravel
		fill 98 34 -168 99 32 -168 minecraft:gravel
		fill 98 32 -169 99 32 -169 minecraft:gravel
		setblock 98 33 -169 minecraft:gravel
		fill 98 32 -170 97 32 -170 minecraft:gravel
		setblock 97 33 -170 minecraft:gravel
		setblock 97 32 -171 minecraft:gravel
	#Gravel Baker
		fill 18 20 -221 17 20 -221 minecraft:gravel
		fill 17 19 -221 16 19 -221 minecraft:gravel
		fill 18 19 -220 17 19 -220 minecraft:gravel
	#Slime
		fill -6 22 -102 -4 20 -102 minecraft:slime
		fill -5 20 -104 -6 20 -104 minecraft:slime
		fill -6 21 -103 -5 21 -103 minecraft:slime
		fill -6 20 -103 -4 20 -103 minecraft:slime
	#End Reset
		clone 57 20 -200 51 17 -206 42 25 -206
		clone 29 18 -160 25 17 -165 31 26 -165
		clone -23 19 -135 -27 17 -139 -33 25 -139
#Functions
	function bentechy:sapling/spawn
	function bentechy:sapling/spawn
	function bentechy:sapling/spawn
	function bentechy:sapling/spawn
	function bentechy:sapling/spawn
#Quest
	#Quest Remove
		setblock -84 25 -204 minecraft:netherrack
		fill 103 32 -171 103 34 -173 stone
		setblock 103 33 -173 minecraft:gold_ore
		setblock 103 34 -172 stone variant=andesite
		setblock 103 32 -171 minecraft:cobblestone
		setblock 103 32 -173 minecraft:gold_ore
		fill 3 27 -331 3 27 -328 air
		fill -11 33 -221 19 25 -195 minecraft:structure_void 0 replace slime
		setblock 103 33 -171 stone variant=andesite
		setblock -132 33 -167 stone
		setblock -130 33 -241 stone
		fill 9 27 -210 15 33 -215 air 0 replace fire
		setblock 2 27 -334 minecraft:end_portal_frame eye=false,facing=north
		clone -61 19 -260 -63 18 -263 -64 29 -263
		fill -9 19 -129 -9 17 -130 slime
		fill -10 17 -129 -10 16 -129 minecraft:slime
		setblock -10 19 -128 slime
		setblock -11 16 -128 slime
		setblock -9 17 -131 slime
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 2 2
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock 6 26 -171 chest facing=north
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 2
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ fill 97 34 -170 99 32 -170 stone 0 
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ fill 99 34 -170 98 34 -170 minecraft:cobblestone
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock 97 32 -170 stone variant=andesite
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock 97 32 -171 air
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 3 3
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ kill @e[tag=baker]
	#Quest Add	
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 1 1
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand -8 26 -199 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:70,tag:{Unbreakable:1}}],Tags:["char","roberto_fake"],Rotation:[0f,0f],CustomName:"Roberto",Team:black,CustomNameVisible:0,NoGravity:1}
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 2 2
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand 50 28 -130 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:20,tag:{Unbreakable:1}}],Tags:["char","girl","cnoc"],Rotation:[90f,0f],CustomName:"Girl",Team:red,CustomNameVisible:1}
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand 43 26 -190 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:15,tag:{Unbreakable:1}}],Tags:["char","brother","cnoc"],Rotation:[-130f,0f],CustomName:"Boy",Team:blue,CustomNameVisible:1}
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand -6 26 -193 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:71,tag:{Unbreakable:1}}],Tags:["char","citizen"],Rotation:[-150f,0f],CustomName:"Citizen",Team:gold,CustomNameVisible:1}
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ fill 103 32 -171 103 34 -173 air 
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 3 3	
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock -132 33 -167 air
			execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 3 3	
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock -130 33 -241 air
			execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 3 3	
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock -84 25 -204 air
			execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 3 3	
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand 8 26 -214 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:9,tag:{Unbreakable:1}}],Tags:["char","baker2"],Rotation:[-70f,0f],CustomName:"Baker",Team:red,CustomNameVisible:1,NoGravity:1}
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ fill 9 27 -210 15 33 -215 minecraft:fire 0 replace air
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 4 4
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand -36 36 -178 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:34,tag:{Unbreakable:1}}],Tags:["char","assassin"],Rotation:[-90f,0f],CustomName:"Assassin",Team:black,CustomNameVisible:1}
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand -11.0 26 -202 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:73,tag:{Unbreakable:1}}],Tags:["char","uncle"],Rotation:[180f,0f],CustomName:"Uncle",Team:gray,CustomNameVisible:1}
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 5 5
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ tp @e[tag=enderman] 3 30 -203 35 0
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ clone -58 19 -260 -60 18 -263 -64 29 -263 
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon minecraft:armor_stand -5 21 -104 {CustomName:"Left-click with bucket",Tags:["bucket_name"],CustomNameVisible:1,Team:green,Marker:1,NoGravity:1,Invisible:1}
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon minecraft:ghast -5 21 -105 {NoAI:1,Silent:1b,Tags:["bucket_ghast"],ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b},{Id:11,Amplifier:120,Duration:999999,ShowParticles:0b}],Attributes:[{Name:generic.knockbackResistance,Base:10000}],Team:"noc"}
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand 8 26 -211 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:73,tag:{Unbreakable:1}}],Tags:["char","uncle2"],Rotation:[-120f,0f],CustomName:"Uncle",Team:gray,CustomNameVisible:1}
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ fill -11 33 -221 19 25 -195 minecraft:slime 0 replace minecraft:structure_void
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ fill -9 19 -129 -9 17 -130 air
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ fill -10 17 -129 -10 16 -129 air
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock -10 19 -128 air
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock -11 16 -128 air
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock -9 17 -131 air
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 6 6
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand 13 24 -138 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:76,tag:{Unbreakable:1}}],Tags:["char","pufferfish","cnoc"],Rotation:[110f,0f],CustomName:"Pufferfish",Team:yellow,CustomNameVisible:1,Pose:{Head:[-20f,0f,0f]}}
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand -21 34 -123 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:78,tag:{Unbreakable:1}}],Tags:["char","sprite","cnoc"],Rotation:[-45f,0f],CustomName:"Winged Sprite",Team:white,CustomNameVisible:1,NoGravity:1}
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand -34 26 -177 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:74,tag:{Unbreakable:1}}],Tags:["char","vampire"],Rotation:[40f,0f],CustomName:"Vampire",Team:dark_red,CustomNameVisible:1}
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand 44 28 -206 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:75,tag:{Unbreakable:1}}],Tags:["char","ent"],Rotation:[-140f,0f],CustomName:"Ent",Team:dark_green,CustomNameVisible:1}
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand 65 26 -219 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:77,tag:{Unbreakable:1}}],Tags:["char","ent_king"],Rotation:[-125f,0f],CustomName:"Ent King",Team:dark_green,CustomNameVisible:1}
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand -8 27.5 -197 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:61,tag:{Unbreakable:1}}],Tags:["char","ghost_queen","cnoc"],Rotation:[180f,0f],CustomName:"Ghost Queen",Team:white,CustomNameVisible:1,NoGravity:1}
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand -71 27.5 -209 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:57,tag:{Unbreakable:1}}],Tags:["char","percival","cnoc"],Rotation:[-90f,0f],CustomName:"Percival Thornheart",Team:red,CustomNameVisible:1,NoGravity:1}
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand -77 28 -212 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:58,tag:{Unbreakable:1}}],Tags:["char","viktor","cnoc"],Rotation:[-45f,0f],CustomName:"Viktor Thornheart",Team:red,CustomNameVisible:1,NoGravity:1}
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ summon armor_stand -77 28 -206 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:56,tag:{Unbreakable:1}}],Tags:["char","helene","cnoc"],Rotation:[-135f,0f],CustomName:"Helene Thornheart",Team:gold,CustomNameVisible:1,NoGravity:1}
#Beacons
	#Block
		setblock 85 48 -173 stone
		setblock 61 48 -151 stone
		setblock -78 46 -208 stone
		setblock -1 46 -334 stone
		setblock 6 43 -108 stone
	#Open
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 1 1
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock 85 48 -173 air	
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 2 2
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock 61 48 -151 air
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 3 3
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock -78 46 -208 air
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 4 4
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock -1 46 -334 air
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 5 5
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock 6 43 -108 air
#Task Message
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 1 1
		execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ tellraw @a ["",{"translate":"task.1","color":"green"}]
		execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ clone -11 18 -202 -11 18 -202 -12 30 -202
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 2 2
		execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ tellraw @a ["",{"translate":"task.2","color":"green"}]
		execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ clone -11 18 -204 -11 18 -204 -12 30 -202
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 3 3
		execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ tellraw @a ["",{"translate":"task.3","color":"green"}]
		execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ clone -11 18 -206 -11 18 -206 -12 30 -202
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 4 4
		execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ tellraw @a ["",{"translate":"task.4","color":"green"}]
		execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ clone -11 18 -208 -11 18 -208 -12 30 -202
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 5 5
		execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ tellraw @a ["",{"translate":"task.5","color":"green"}]
		execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ clone -11 18 -210 -11 18 -210 -12 30 -202
	execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 6 6
		execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ tellraw @a ["",{"translate":"task.6","color":"green"}]
		execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ clone -11 18 -212 -11 18 -212 -12 30 -202
		
#Advancements
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 1 1
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ advancement grant @a only custom:quests/1
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 2 2
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ advancement grant @a only custom:quests/2
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 3 3
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ advancement grant @a only custom:quests/3
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 4 4
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ advancement grant @a only custom:quests/4
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 5 5
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ advancement grant @a only custom:quests/5
		execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 6 6
			execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ advancement grant @a only custom:quests/6
			
	advancement grant @a only custom:quests

#Decoration
	summon minecraft:armor_stand -2 19.7 -128.0 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:94}],Invisible:1,Marker:1,Rotation:[-90f,0f],NoGravity:1,DisabledSlots:2039583}
	summon minecraft:armor_stand -59 32.0 -136 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:95}],NoGravity:1,Invisible:1,Invulnerable:1,Pose:{Head:[70f,-210f,-90f]},DisabledSlots:2039583}
	summon minecraft:armor_stand 6 30.5 -178 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:96}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[180f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand 11.0 31 -182 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:97}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[0f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand 27 32 -185 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:98}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[90f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand 25 32 -185 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:99}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[-90f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand 28 22.9 -218 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:100}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[0f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand -10 29.8 -202 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:101}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[180f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand -79 24.9 -210 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:92}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[-66f,0f],DisabledSlots:2039583}
	#Blaze Rod
	summon minecraft:armor_stand -144 20.65 -198 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:106}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[155f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand -141 20.65 -208 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:106}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[25f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand -133 20.65 -210 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:106}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[225f,0f],DisabledSlots:2039583}
	#Ice
	summon minecraft:armor_stand 17 26 -304 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:93}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[180f,0f],Pose:{Head:[-50f,0f,-50f]},DisabledSlots:2039583}
	summon minecraft:armor_stand -9.0 28 -320.0 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:93}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[180f,0f],Pose:{Head:[50f,0f,-50f]},DisabledSlots:2039583}
	summon minecraft:armor_stand -8 25.5 -297 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:93}],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583}
	summon minecraft:armor_stand 27 27.5 -310 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:93}],NoGravity:1,Invisible:1,Invulnerable:1,DisabledSlots:2039583}
	#Seeds
	summon minecraft:armor_stand 3 26 -249 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:105}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[0f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand -4 26 -243 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:105}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[40f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand -6 26 -242 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:105}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[80f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand -6 26 -249 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:105}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[120f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand -10 26 -247 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:105}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[160f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand -12 26 -249 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:105}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[200f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand -7 30 -244 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:105}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[240f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand -14 26 -242 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:105}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[280f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand -4 30 -246 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:105}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[320f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand 6 26 -244 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:105}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[360f,0f],DisabledSlots:2039583}
	#Bricks
	summon minecraft:armor_stand 17 27 -173 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:103}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[0f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand 22 27 -180 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:103}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[50f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand 25 25 -175 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:103}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[100f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand 26 26 -173 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:103}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[150f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand 22 26 -171 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:103}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[200f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand 21 26 -175 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:103}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[250f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand 24 28 -180 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:103}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[300f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand 26 26 -178 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:103}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[350f,0f],DisabledSlots:2039583}
	#Bars
	summon minecraft:armor_stand 4 27 -203 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:102}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[20f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand 3 27 -204 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:102}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[80f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand 14 26 -200 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:104}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[120f,0f],DisabledSlots:2039583}
	summon minecraft:armor_stand 29 28 -204 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,Damage:104}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[155f,0f],DisabledSlots:2039583}
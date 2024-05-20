#Rabbit
	summon minecraft:rabbit 31 27 -172 {RabbitType:5}
	summon minecraft:rabbit 31 29 -188 {RabbitType:5}
	summon minecraft:rabbit 12 26 -199 {RabbitType:5}
	summon minecraft:rabbit 32 27 -199 {RabbitType:5}
	summon minecraft:rabbit -3 27 -206 {RabbitType:5}
	summon minecraft:rabbit -13 27 -199 {RabbitType:5}
	summon minecraft:rabbit -17 29 -172 {RabbitType:4,Attributes:[{Name:"generic.movement_speed",Base:0.0d}],DeathLootTable:"glarth:entities/lucky_rabbit"}
#Mobs
	summon minecraft:chicken -6 26 -248 {Team:"mouse"}
	summon minecraft:chicken -6 26 -248 {Team:"mouse"}
	summon minecraft:chicken -6 26 -248 {Team:"mouse"}
	summon minecraft:chicken -6 26 -248 {Team:"mouse"}
	summon minecraft:chicken -6 26 -248 {Team:"mouse"}
	summon minecraft:cow -5 26 -243
	summon minecraft:wolf -15 26 -211 {Tags:["newAnimal"]}
	summon minecraft:cow -4 26 -253 
	summon minecraft:cow -4 26 -253 
	summon minecraft:cow 39 28 -218
	summon minecraft:cow -33 26 -172
	summon minecraft:cow 25 27 -143
	summon minecraft:cow 25 27 -143
	summon minecraft:cow 25 27 -143
	summon cow 15 26 -270
	summon cow 15 26 -270
	summon chicken 15 26 -270 {Team:"mouse"}
	summon chicken 15 26 -270 {Team:"mouse"}
	summon chicken 15 26 -270 {Team:"mouse"}
	summon cow 68 27 -251
	summon cow 68 27 -251
	summon chicken 68 27 -251 {Team:"mouse"}
	summon minecraft:chicken -42 32 -256 {Team:"mouse"}
	summon minecraft:chicken -42 32 -256 {Team:"mouse"}
	summon minecraft:chicken -42 32 -256 {Team:"mouse"}
	summon minecraft:chicken -42 32 -256 {Team:"mouse"}
	summon minecraft:pig -48 26 -140 {Tags:["newAnimal"]}
	summon minecraft:horse -53.61 28.13 -246.00 {Leashed:1b,Leash:{X:-52,Y:29,Z:-244},Attributes:[{Name:"generic.movement_speed",Base:0.2d},{Name:"horse.jump_strength",Base:0.9d}],Tags:["newAnimal"]}
	summon minecraft:fox 65 27 -249 {HandItems:[{id:"rabbit_foot",count:1}],Sleeping:1b,NoAI:1b,Tags:["foxSleep","fox1"],Rotation:[-20.0f,0.0f]}
	summon minecraft:fox 81 27 -254 {HandItems:[{id:"emerald",count:1}],Sleeping:1b,NoAI:1b,Tags:["foxSleep","fox2"],Rotation:[-140.0f,0.0f]}
# Register Wolf/Horse
	scoreboard players operation @e[tag=newAnimal] netherID = id edgeI
	tag @e[tag=newAnimal] remove newAnimal
#Fish & Squid
	execute unless score season winter matches 1 run function glarth:mechanic/setup/aquatic
#Armor Stands
	summon minecraft:armor_stand 28 27 -200 {ArmorItems:[{id:"golden_boots",count:1},{id:"leather_leggings",count:1},{id:"leather_chestplate",count:1},{}],Rotation:[180.0f,0.0f],Tags:["armor_as","asLoader"]}
	summon minecraft:armor_stand 27 27 -200 {ArmorItems:[{},{},{id:"golden_chestplate",count:1},{id:"leather_helmet",count:1}],Rotation:[180.0f,0.0f],Tags:["armor_as","asLoader"]}
	summon minecraft:armor_stand 28 27 -200 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":122}}],Rotation:[180.0f,0.0f],Invisible:1,Marker:1,Tags:["asLoader"]}
	summon minecraft:armor_stand 27 27 -200 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":122}}],Rotation:[180.0f,0.0f],Invisible:1,Marker:1,Tags:["asLoader"]}
# Bee Hive Markers
	summon slime 40 29 -163 {NoAI:1b,PersistenceRequired:1,NoGravity:1b,Silent:1b,Size:1,active_effects:[{id:"minecraft:resistance",amplifier:120,duration:-1,amplifier:0,show_particles:0b},{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:0b}],Tags:["beeHiveSlime","bHS1"],Team:"noc"}
	summon slime -14 29 -258 {NoAI:1b,PersistenceRequired:1,NoGravity:1b,Silent:1b,Size:1,active_effects:[{id:"minecraft:resistance",amplifier:120,duration:-1,amplifier:0,show_particles:0b},{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:0b}],Tags:["beeHiveSlime","bHS1"],Team:"noc"}
	summon slime -52 29 -244 {NoAI:1b,PersistenceRequired:1,NoGravity:1b,Silent:1b,Size:1,active_effects:[{id:"minecraft:resistance",amplifier:120,duration:-1,amplifier:0,show_particles:0b},{id:"minecraft:invisibility",duration:-1,amplifier:0,show_particles:0b}],Tags:["leadSlime","bHS3"],Team:"noc"}
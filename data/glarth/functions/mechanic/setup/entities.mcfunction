#Rabbit
	summon minecraft:rabbit 31 27 -172 {RabbitType:5}
	summon minecraft:rabbit 31 29 -188 {RabbitType:5}
	summon minecraft:rabbit 12 26 -199 {RabbitType:5}
	summon minecraft:rabbit 32 27 -199 {RabbitType:5}
	summon minecraft:rabbit -3 27 -206 {RabbitType:5}
	summon minecraft:rabbit -13 27 -199 {RabbitType:5}
	summon minecraft:rabbit -17 29 -172 {RabbitType:4,Attributes:[{Name:generic.movement_speed,Base:0.0}],DeathLootTable:"glarth:entities/lucky_rabbit"}
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
	summon minecraft:horse -53.61 28.13 -246.00 {Leashed:1b,Leash:{X:-52,Y:29,Z:-244},Attributes:[{Name:generic.movement_speed,Base:0.2},{Name:horse.jump_strength,Base:0.9}],Tags:["newAnimal"]}
	summon minecraft:fox 82 27 -254 {HandItems:[{id:"rabbit_foot",Count:1}]}
	summon minecraft:fox 82 27 -254 {HandItems:[{id:"emerald",Count:1}]}
# Register Wolf/Horse
	scoreboard players operation @e[tag=newAnimal] netherID = id edgeI
	tag @e[tag=newAnimal] remove newAnimal
#Fish & Squid
	execute unless score season winter matches 1 run function glarth:mechanic/setup/aquatic
#Armor Stands
	summon minecraft:armor_stand 28 27 -200 {ArmorItems:[{id:"golden_boots",Count:1},{id:"leather_leggings",Count:1},{id:"leather_chestplate",Count:1},{}],Rotation:[180f,0f],Tags:["armor_as","asLoader"]}
	summon minecraft:armor_stand 27 27 -200 {ArmorItems:[{},{},{id:"golden_chestplate",Count:1},{id:"leather_helmet",Count:1}],Rotation:[180f,0f],Tags:["armor_as","asLoader"]}
	summon minecraft:armor_stand 28 27 -200 {ArmorItems:[{},{},{},{id:"diamond_hoe",tag:{Damage:122},Count:1}],Rotation:[180f,0f],Invisible:1,Marker:1,Tags:["asLoader"]}
	summon minecraft:armor_stand 27 27 -200 {ArmorItems:[{},{},{},{id:"diamond_hoe",tag:{Damage:122},Count:1}],Rotation:[180f,0f],Invisible:1,Marker:1,Tags:["asLoader"]}
# Bee Hive Markers
	summon slime 40 29 -163 {NoAI:1b,PersistenceRequired:1,NoGravity:1b,Silent:1b,Size:1,ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b},{Id:11,Duration:999999,ShowParticles:0b,Amplifier:120}],Tags:["beeHiveSlime","bHS1"],Team:"noc"}
	summon slime -14 29 -258 {NoAI:1b,PersistenceRequired:1,NoGravity:1b,Silent:1b,Size:1,ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b},{Id:11,Duration:999999,ShowParticles:0b,Amplifier:120}],Tags:["beeHiveSlime","bHS1"],Team:"noc"}
	summon slime -52 29 -244 {NoAI:1b,PersistenceRequired:1,NoGravity:1b,Silent:1b,Size:1,ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b},{Id:11,Duration:999999,ShowParticles:0b,Amplifier:120}],Tags:["leadSlime","bHS3"],Team:"noc"}
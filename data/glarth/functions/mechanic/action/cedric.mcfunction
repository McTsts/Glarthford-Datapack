function glarth:mechanic/loader
# Dialogue
execute if score timer cedric matches -500 run tag @e[tag=cedric] remove char
execute if score timer cedric matches -500 run data merge entity @e[tag=cedric,type=armor_stand,limit=1] {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:120,Unbreakable:1}}],NoGravity:1}
execute if score timer cedric matches -420 run scoreboard players set @a MusicSet 39
execute if score timer cedric matches -420 run scoreboard players set @a MusicFade -1
execute if score timer cedric matches -400 run scoreboard players set @a MusicNum 11
execute if score timer cedric matches -300 run function glarth:dialogue/cedric/lines/cutscene1
execute if score timer cedric matches -50 run function glarth:dialogue/cedric/lines/cutscene2
execute if score timer cedric matches 170 run function glarth:dialogue/cedric/lines/cutscene3
execute if score timer cedric matches 380 run function glarth:dialogue/cedric/lines/cutscene4
execute if score timer cedric matches 660 run function glarth:dialogue/cedric/lines/cutscene5
execute if score timer cedric matches 840 run function glarth:dialogue/necromancer/lines/cutscene1
execute if score timer cedric matches 1160 run function glarth:dialogue/cedric/lines/cutscene6
execute if score timer cedric matches 1460 run function glarth:dialogue/necromancer/lines/cutscene2
execute if score timer cedric matches 1600 run function glarth:dialogue/cedric/lines/cutscene7
execute if score timer cedric matches 1700 run function glarth:dialogue/necromancer/lines/cutscene3

#Spawn
execute if score timer cedric matches 1 run summon armor_stand 175.0 6.50 -339.00 {NoGravity:1,Invisible:1,Tags:["cedricScenePov","cedricScene"]}
execute if score timer cedric matches 1 run summon armor_stand 172 6 -359 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:120,Unbreakable:1}}],Tags:["cedricSceneCedric","cedricScene"],Rotation:[160f,0f],CustomName:"{\"translate\":\"cedric\",\"color\":\"blue\"}",CustomNameVisible:1}
execute if score timer cedric matches 1 run summon armor_stand 170 6 -359 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:223,Unbreakable:1}}],Tags:["cedricSceneNecromancer","cedricScene"],Rotation:[-160f,0f],CustomName:"{\"translate\":\"necromancer2\",\"color\":\"gold\"}",CustomNameVisible:1}
execute if score timer cedric matches 1 run summon armor_stand 176 6 -356 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:233,Unbreakable:1}}],Tags:["cedricSceneExtra","cedricScene"],Rotation:[20f,0f],CustomName:"{\"translate\":\"maid\",\"color\":\"yellow\"}",CustomNameVisible:1}
execute if score timer cedric matches 1 run summon armor_stand 180.0 6.00 -352.8 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:236,Unbreakable:1}}],Tags:["cedricSceneExtra","cedricScene"],Rotation:[60f,0f],CustomName:"{\"translate\":\"woman\",\"color\":\"dark_aqua\"}",CustomNameVisible:1}
execute if score timer cedric matches 1 run summon armor_stand 168 6 -351.0 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:235,Unbreakable:1}}],Tags:["cedricSceneExtra","cedricScene"],Rotation:[180f,0f],CustomName:"{\"translate\":\"castle_guard\",\"color\":\"gold\"}",CustomNameVisible:1}
execute if score timer cedric matches 1 run summon armor_stand 181 6 -347 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:244,Unbreakable:1}}],Tags:["cedricSceneExtra","cedricScene"],Rotation:[90f,0f],CustomName:"{\"translate\":\"groundskeeper\",\"color\":\"#8C5800\"}",CustomNameVisible:1}
execute if score timer cedric matches 1 run kill @e[tag=char,tag=necromancer]
execute if score timer cedric matches 1 positioned 97 26 -242 run kill @e[tag=char,distance=..2]
execute if score timer cedric matches 1 run summon armor_stand 95.5 27.00 -243.0 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"chainmail_leggings",Count:1},{id:"chainmail_chestplate",Count:1},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:223,Unbreakable:1}}],Tags:["char","necromancer","tbcLoc083"],Rotation:[-80f,0f],CustomName:"{\"translate\":\"necromancer\",\"color\":\"red\"}",CustomNameVisible:1}
execute if score timer cedric matches 1 run setblock 175 3 -356 redstone_block
execute if score timer cedric matches 1 run clone 173 4 -361 173 4 -361 171 6 -361
execute if score timer cedric matches 1 run setblock 170 6 -362 air
execute if score timer cedric matches 1 run setblock 172 6 -361 air
execute if score timer cedric matches 1 run setblock 110 26 -255 oak_planks
execute if score timer cedric matches 1 run scoreboard players set wait Stats -10000
execute if score timer cedric matches 1 run tag @a[gamemode=adventure] add cedricCutPlayer
execute if score timer cedric matches 1 run gamemode spectator @a[gamemode=adventure] 
execute if score timer cedric matches 1 run scoreboard players set @e[tag=cedric,type=armor_stand,tag=char] cedric 2000
execute if score timer cedric matches 1 positioned 172 6 -357 run function glarth:mechanic/door/to_animated
execute if score timer cedric matches 1 positioned 171 6 -357 run function glarth:mechanic/door/to_animated

# Necromancer Ending
execute if score timer cedric matches 800 run tag @e[tag=cedric] remove char_look
execute if score timer cedric matches 800 run tag @e[tag=cedric] add csD
execute if score timer cedric matches 800 as @e[tag=cedric] at @s facing entity @e[tag=necromancer,limit=1] feet rotated ~ 0 run tp @s ~ ~0.1 ~ ~ ~
execute if score timer cedric matches 800 run summon minecraft:skeleton 101.5 25.5 -241.9 {CustomName:'"Dinnerbone"',Team:noc,NoAI:1,Silent:1b,Invulnerable:1,Tags:["cedricScene","csD"],Passengers:[{id:"armor_stand",Small:1,Invulnerable:1,Invisible:1,Tags:["cedricScene"]}]}
execute if score timer cedric matches 800 run summon minecraft:skeleton 101.5 25.5 -243.1 {CustomName:'"Dinnerbone"',Team:noc,NoAI:1,Silent:1b,Invulnerable:1,Tags:["cedricScene","csD"],Passengers:[{id:"armor_stand",Small:1,Invulnerable:1,Invisible:1,Tags:["cedricScene"]}]}
execute if score timer cedric matches 800 run summon minecraft:skeleton 100.9 25.5 -242.5 {CustomName:'"Dinnerbone"',Team:noc,NoAI:1,Silent:1b,Invulnerable:1,Tags:["cedricScene","csD"],Passengers:[{id:"armor_stand",Small:1,Invulnerable:1,Invisible:1,Tags:["cedricScene"]}],Rotation:[90f,0f]}
execute if score timer cedric matches 800 run summon minecraft:skeleton 102.1 25.5 -242.5 {CustomName:'"Dinnerbone"',Team:noc,NoAI:1,Silent:1b,Invulnerable:1,Tags:["cedricScene","csD"],Passengers:[{id:"armor_stand",Small:1,Invulnerable:1,Invisible:1,Tags:["cedricScene"]}],Rotation:[90f,0f]}
execute if score timer cedric matches 800 run summon minecraft:skeleton 101.0 25.5 -242.0 {CustomName:'"Dinnerbone"',Team:noc,NoAI:1,Silent:1b,Invulnerable:1,Tags:["cedricScene","csD"],Passengers:[{id:"armor_stand",Small:1,Invulnerable:1,Invisible:1,Tags:["cedricScene"]}],Rotation:[45f,0f]}
execute if score timer cedric matches 800 run summon minecraft:skeleton 102.0 25.5 -243.0 {CustomName:'"Dinnerbone"',Team:noc,NoAI:1,Silent:1b,Invulnerable:1,Tags:["cedricScene","csD"],Passengers:[{id:"armor_stand",Small:1,Invulnerable:1,Invisible:1,Tags:["cedricScene"]}],Rotation:[45f,0f]}
execute if score timer cedric matches 800 run summon minecraft:skeleton 102.0 25.5 -242.0 {CustomName:'"Dinnerbone"',Team:noc,NoAI:1,Silent:1b,Invulnerable:1,Tags:["cedricScene","csD"],Passengers:[{id:"armor_stand",Small:1,Invulnerable:1,Invisible:1,Tags:["cedricScene"]}],Rotation:[-45f,0f]}
execute if score timer cedric matches 800 run summon minecraft:skeleton 101.0 25.5 -243.0 {CustomName:'"Dinnerbone"',Team:noc,NoAI:1,Silent:1b,Invulnerable:1,Tags:["cedricScene","csD"],Passengers:[{id:"armor_stand",Small:1,Invulnerable:1,Invisible:1,Tags:["cedricScene"]}],Rotation:[-45f,0f]}
execute if score timer cedric matches 800 run team join noName @e[type=skeleton,tag=cedricScene]
execute if score timer cedric matches 800.. as @e[tag=cedric] at @s run particle minecraft:smoke ~ ~ ~ 1 1 1 0 1
execute if score timer cedric matches 810.. as @e[tag=cedric] at @s run particle minecraft:smoke ~ ~ ~ 1 1 1 0 1
execute if score timer cedric matches 820.. as @e[tag=cedric] at @s run particle minecraft:smoke ~ ~ ~ 1 1 1 0 1
execute if score timer cedric matches 830.. as @e[tag=cedric] at @s run particle minecraft:smoke ~ ~ ~ 1 1 1 0 1
execute if score timer cedric matches 840.. as @e[tag=cedric] at @s run particle minecraft:smoke ~ ~ ~ 1 1 1 0 1
execute if score timer cedric matches 850.. as @e[tag=cedric] at @s run particle minecraft:smoke ~ ~ ~ 1 1 1 0 1
execute if score timer cedric matches 850..860 as @e[tag=csD] at @s run tp @s ~ ~-0.02 ~
execute if score timer cedric matches 1625.. as @e[tag=csD] at @s run tp @s ~ ~-0.02 ~

# Fire
execute if score timer cedric matches 0 run setblock 172 9 -355 air
execute if score timer cedric matches 0 run setblock 173 6 -356 air
execute if score timer cedric matches 0 run setblock 169 11 -357 air
execute if score timer cedric matches 0 run setblock 169 8 -354 air
execute if score timer cedric matches 0 run setblock 175 9 -359 air
execute if score timer cedric matches 0 run setblock 175 6 -358 air
execute if score timer cedric matches 0 run setblock 172 11 -359 air
execute if score timer cedric matches 0 run setblock 169 12 -354 air
execute if score timer cedric matches 0 run setblock 170 11 -359 air
execute if score timer cedric matches 0 run setblock 171 6 -354 air
execute if score timer cedric matches 0 run setblock 166 6 -352 air
execute if score timer cedric matches 0 run setblock 173 8 -356 air
execute if score timer cedric matches 0 run setblock 177 6 -360 air
execute if score timer cedric matches 0 run setblock 167 10 -354 air
execute if score timer cedric matches 0 run setblock 174 9 -357 air
execute if score timer cedric matches 0 run setblock 168 11 -358 air
execute if score timer cedric matches 0 run setblock 166 11 -356 air
execute if score timer cedric matches 0 run setblock 168 6 -354 air
execute if score timer cedric matches 0 run setblock 175 7 -360 air
execute if score timer cedric matches 0 run setblock 173 11 -361 air
execute if score timer cedric matches 0 run setblock 171 6 -358 air
execute if score timer cedric matches 0 run setblock 171 10 -354 air
execute if score timer cedric matches 0 run setblock 174 6 -354 air
execute if score timer cedric matches 0 run setblock 170 9 -355 air
execute if score timer cedric matches 0 run setblock 175 6 -356 air
execute if score timer cedric matches 0 run setblock 170 6 -352 air

#Scene
execute if score timer cedric matches 0 positioned 173 1005 -353 as @e[type=#glarth:as_loader,tag=asLoader,tag=asUnloaded,distance=..30] run function glarth:mechanic/as_load
execute if score timer cedric matches 1..50 as @e[tag=cedricScenePov,type=armor_stand] at @s run tp @s ^ ^ ^0.15 facing 175 6.5 -351
execute if score timer cedric matches 51..60 as @e[tag=cedricScenePov,type=armor_stand] at @s run tp @s ^ ^ ^0.18 ~-1.375 ~0.25
execute if score timer cedric matches 61..70 as @e[tag=cedricScenePov,type=armor_stand] at @s run tp @s ^ ^ ^0.15 ~-1.375 ~0.25
execute if score timer cedric matches 71..120 as @e[tag=cedricScenePov,type=armor_stand] at @s run tp @s ^ ^ ^0.13
execute if score timer cedric matches 121..140 as @e[tag=cedricScenePov,type=armor_stand] at @s run tp @s ^ ^ ^0.1 ~1.302 ~


execute if score timer cedric matches 50 run setblock 175 3 -356 air
execute if score timer cedric matches 45 run scoreboard players set velocity timer_t 3
execute if score timer cedric matches 200 run scoreboard players set velocity timer_t 10

execute if score timer cedric matches 130..162 run particle minecraft:witch 171.5 6.95 -360.5 0.2 0.2 0.2 0 1
execute if score timer cedric matches 135..162 run particle minecraft:witch 171.5 6.95 -360.5 0.2 0.2 0.2 0 1
execute if score timer cedric matches 140..162 run particle minecraft:witch 171.5 6.95 -360.5 0.2 0.2 0.2 0 1
execute if score timer cedric matches 145..162 run particle minecraft:witch 171.5 6.95 -360.5 0.2 0.2 0.2 0 1
execute if score timer cedric matches 150..162 run particle minecraft:witch 171.5 6.95 -360.5 0.2 0.2 0.2 0 1
execute if score timer cedric matches 165 run particle smoke 171.5 6.95 -360.5 0.2 0.2 0.2 0.5 100
execute if score timer cedric matches 165 run particle cloud 171.5 6.95 -360.5 0.2 0.2 0.2 0.5 100

execute if score timer cedric matches 170..180 run particle flame 171.5 6.95 -360.5 0.2 0.2 0.2 0.5 1
execute if score timer cedric matches 173..180 run particle flame 171.5 6.95 -360.5 0.2 0.2 0.2 0.5 2
execute if score timer cedric matches 176..180 run particle flame 171.5 6.95 -360.5 0.2 0.2 0.2 0.5 5
execute if score timer cedric matches 180 as @a[gamemode=spectator] at @s run playsound minecraft:entity.generic.explode hostile @s ~ ~ ~ 1 1
execute if score timer cedric matches 180 run setblock 171 6 -361 minecraft:lectern[facing=south]
execute if score timer cedric matches 180 run setblock 171 6 -361 minecraft:air destroy
execute if score timer cedric matches 185 run setblock 170 6 -362 fire
execute if score timer cedric matches 190 run setblock 172 6 -361 fire
execute if score timer cedric matches 195 run kill @e[tag=cedricSceneExtra]
execute if score timer cedric matches 195 run effect give @a[gamemode=spectator] minecraft:blindness 1
execute if score timer cedric matches 195 run tp @e[tag=cedricScenePov,type=armor_stand] 175 13 -351 145 25
# 175 10 -349
execute if score timer cedric matches 245 run effect give @a[gamemode=spectator] minecraft:blindness 1
execute if score timer cedric matches 245 run tp @e[tag=cedricScenePov,type=armor_stand] 178 13 -339 160 20
execute if score timer cedric matches 295 run effect give @a[gamemode=spectator] minecraft:blindness 1
execute if score timer cedric matches 295 run tp @e[tag=cedricScenePov,type=armor_stand] 105 34 -243 160 20
execute if score timer cedric matches 345 run tp @e[tag=cedricScenePov,type=armor_stand] 101 27 -237 -180 0
execute if score timer cedric matches 346 run gamemode adventure @a[tag=cedricCutPlayer]
execute if score timer cedric matches 346 run tag @a remove cedricCutPlayer

# Fire
execute if score timer cedric matches 195 run setblock 172 9 -355 fire[north=true]
execute if score timer cedric matches 199 run setblock 173 6 -356 fire
execute if score timer cedric matches 203 run setblock 169 11 -357 fire
execute if score timer cedric matches 207 run setblock 169 8 -354 fire[north=true]
execute if score timer cedric matches 211 run setblock 175 9 -359 fire[west=true]
execute if score timer cedric matches 215 run setblock 175 6 -358 fire
execute if score timer cedric matches 219 run setblock 172 11 -359 fire
execute if score timer cedric matches 223 run setblock 169 12 -354 fire[north=true]
execute if score timer cedric matches 227 run setblock 170 11 -359 fire
execute if score timer cedric matches 231 run setblock 171 6 -354 fire
execute if score timer cedric matches 235 run setblock 166 6 -352 fire
execute if score timer cedric matches 239 run setblock 173 8 -356 fire[north=true]
execute if score timer cedric matches 243 run setblock 177 6 -360 fire
execute if score timer cedric matches 247 run setblock 167 10 -354 fire[north=true]
execute if score timer cedric matches 251 run setblock 174 9 -357 fire[north=true,west=true]
execute if score timer cedric matches 255 run setblock 168 11 -358 fire
execute if score timer cedric matches 259 run setblock 166 11 -356 fire
execute if score timer cedric matches 263 run setblock 168 6 -354 fire
execute if score timer cedric matches 267 run setblock 175 7 -360 fire[north=true,west=true]
execute if score timer cedric matches 271 run setblock 173 11 -361 fire
execute if score timer cedric matches 275 run setblock 171 6 -358 fire
execute if score timer cedric matches 279 run setblock 171 10 -354 fire[north=true]
execute if score timer cedric matches 283 run setblock 174 6 -354 fire
execute if score timer cedric matches 287 run setblock 170 9 -355 fire[up=true,north=true]
execute if score timer cedric matches 291 run setblock 175 6 -356 fire
execute if score timer cedric matches 295 run setblock 170 6 -352 fire

# 102 31 -253
# 3
# 3
# 10
# 


execute if score timer cedric matches 140 as @a[gamemode=spectator] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 1 0.5
execute if score timer cedric matches 142 as @a[gamemode=spectator] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 1 0.6
execute if score timer cedric matches 144 as @a[gamemode=spectator] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 1 0.7
execute if score timer cedric matches 146 as @a[gamemode=spectator] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 1 0.8
execute if score timer cedric matches 148 as @a[gamemode=spectator] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 1 0.9
execute if score timer cedric matches 150 as @a[gamemode=spectator] at @s run playsound minecraft:entity.wither.spawn hostile @s ~ ~ ~ 1 1


execute if score timer cedric matches 162 as @e[tag=cedricSceneCedric] at @s run particle minecraft:spit ~ ~ ~ 1 1 1 0.5 30
execute if score timer cedric matches 162 as @e[tag=cedricSceneCedric] at @s run playsound minecraft:entity.villager.hurt hostile @a ~ ~ ~ 1 1.4
execute if score timer cedric matches 162 as @e[tag=cedricSceneCedric] at @s run stopsound @a * minecraft:entity.wither.spawn
execute if score timer cedric matches 162 as @e[tag=cedricSceneCedric] at @s run playsound error hostile @a ~ ~ ~ 1 0.5
execute if score timer cedric matches 163 as @e[tag=cedricSceneCedric] at @s run playsound error hostile @a ~ ~ ~ 1 0.6
execute if score timer cedric matches 164 as @e[tag=cedricSceneCedric] at @s run playsound error hostile @a ~ ~ ~ 1 0.7
execute if score timer cedric matches 165 as @e[tag=cedricSceneCedric] at @s run playsound error hostile @a ~ ~ ~ 1 0.8

# Add
execute as @a[gamemode=spectator] unless score timer cedric matches 346.. run spectate @e[tag=cedricScenePov,type=armor_stand,limit=1] @s
scoreboard players add timer cedric 1
scoreboard players remove tick Dis 1

# End
execute if score timer cedric matches 1721.. run kill @e[tag=cedricScene]
execute if score timer cedric matches 1721.. run kill @e[tag=cedric]
execute if score timer cedric matches 1721.. run scoreboard players reset timer cedric


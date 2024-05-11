## All
execute as @e[tag=endChar] run function glarth:mechanic/char/animated


## Text
execute if score timer end matches 555 run kill @e[tag=cutscenePov]
execute if score timer end matches 555 run scoreboard players set @a MusicSet 6
execute if score timer end matches 557 run scoreboard players set @a MusicSet 6
execute if score timer end matches 560 run scoreboard players set @a MusicSet 6
execute if score timer end matches 555 run summon area_effect_cloud 7 36 -204 {Rotation:[0f,5f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
execute if score timer end matches 555 run scoreboard objectives setdisplay sidebar
execute if score timer end matches 555 run function glarth:mechanic/credits/frame1
# End
execute if score timer end matches 760 run scoreboard players set timer end 6660

## McTsts
execute if score timer end matches 6660 run kill @e[tag=cutscenePov]
execute if score timer end matches 6660 run summon area_effect_cloud 7 27.5 -205 {Rotation:[0f,15f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
# Construct
execute if score timer end matches 6690 run setblock 7 26 -202 minecraft:twisting_vines[age=6]
execute if score timer end matches 6690 as @s at @s run playsound minecraft:block.stone.place block @s 7 26 -202 1 1
execute if score timer end matches 6700..6740 positioned 7 26 -202 run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.5 0.5 0.5 1 1
execute if score timer end matches 6710..6740 positioned 7 26 -202 run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.5 0.5 0.5 1 1
execute if score timer end matches 6719..6740 positioned 7 26 -202 run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.5 0.5 0.5 1 1
execute if score timer end matches 6727..6740 positioned 7 26 -202 run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.5 0.5 0.5 1 1
execute if score timer end matches 6733..6740 positioned 7 26 -202 run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.5 0.5 0.5 1 1
execute if score timer end matches 6738..6740 positioned 7 26 -202 run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.5 0.5 0.5 1 1
execute if score timer end matches 6740 run setblock 7 26 -202 brown_wool destroy
execute if score timer end matches 6740 positioned 7 26 -202 run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.2 10
execute if score timer end matches 6740 positioned 7 26 -202 run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.2 10
execute if score timer end matches 6744 run setblock 6 26 -202 minecraft:lever[face=wall,facing=west,powered=false]
execute if score timer end matches 6748 run setblock 8 26 -202 minecraft:lever[face=wall,facing=east,powered=false]
execute if score timer end matches 6752 run setblock 7 27 -202 minecraft:player_head[rotation=0]{}
# Spawn
execute if score timer end matches 6754 positioned 7 26 -202 run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.2 10
execute if score timer end matches 6754 positioned 7 26 -202 run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.2 10
execute if score timer end matches 6754 positioned 7 26 -202 run summon armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:71,Unbreakable:1}}],Tags:["end_scene","citizen"],Rotation:[180f,0f]}
execute if score timer end matches 6754 run setblock 7 27 -202 air
execute if score timer end matches 6754 run fill 8 26 -202 6 26 -202 air replace minecraft:lever
execute if score timer end matches 6754 run setblock 7 26 -202 air
# Run
execute if score timer end matches 6770..6840 as @e[tag=citizen] at @s run tp @s ^ ^ ^0.1 ~-1 ~
# End
execute if score timer end matches 6860 run scoreboard players set timer end 1800


## Adri
execute if score timer end matches 1800 run kill @e[tag=cutscenePov]
execute if score timer end matches 1800 run summon area_effect_cloud 54.0 31.5 -277.5 {Rotation:[-130f,15f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
execute if score timer end matches 1800 run setblock 56 29 -276 stone
execute if score timer end matches 1800 run summon wolf 56 30 -276 {Tags:["end_scene","adriWolf"],NoAI:1,Silent:1b,Rotation:[180f,0f]}
# Wolf
execute if score timer end matches 1810..1835 as @e[tag=adriWolf] at @s run tp @s ^ ^ ^0.1
execute if score timer end matches 1840 run data merge entity @e[tag=adriWolf,limit=1] {Sitting:1b}
execute if score timer end matches 1830 as @e[tag=adri] at @s facing entity @e[tag=adriWolf,limit=1] eyes run tp @s ~ ~ ~ ~ ~
execute if score timer end matches 1850 run data merge entity @e[tag=adri,limit=1] {Motion:[0.0,0.1,0.0]}
execute if score timer end matches 1870 run data merge entity @e[tag=adri,limit=1] {Motion:[0.0,0.1,0.0]}
execute if score timer end matches 1890 run data merge entity @e[tag=adri,limit=1] {Motion:[0.0,0.1,0.0]}
execute if score timer end matches 1910 run data merge entity @e[tag=adri,limit=1] {Motion:[0.0,0.1,0.0]}
# Reset
execute if score timer end matches 1960 run setblock 56 29 -276 water
# End
execute if score timer end matches 1960 run scoreboard players set timer end 2960



## [Gary] Gary the Gary (Gary) -=- Gary (aka Gary)
execute if score timer end matches 2960 run kill @e[tag=cutscenePov]
execute if score timer end matches 2960 run summon area_effect_cloud 28.5 28.5 -132.5 {Rotation:[-150f,20f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
# Bee Explosin
execute if score timer end matches 2961..2970 as @e[tag=gibbs] at @s run tp @s ~ ~ ~ ~-1 ~
execute if score timer end matches 2971..2990 as @e[tag=gibbs] at @s run tp @s ~ ~ ~ ~1 ~
execute if score timer end matches 2991..3010 as @e[tag=gibbs] at @s run tp @s ~ ~ ~ ~-1 ~
execute if score timer end matches 3011..3020 as @e[tag=gibbs] at @s run tp @s ~ ~ ~ ~1 ~
execute if score timer end matches 3026 as @e[tag=gibbs] at @s run function glarth:mechanic/char/blink/start
execute if score timer end matches 3026 as @e[tag=gibbs] at @s run particle minecraft:dripping_water ^ ^1.25 ^0.2 0.1 0.025 0.1 0 10
execute if score timer end matches 3070 as @e[tag=gibbs] at @s run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.2 30
execute if score timer end matches 3070 as @e[tag=gibbs] at @s run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.2 30
execute if score timer end matches 3070 as @e[tag=gibbs] at @s run summon bee ~ ~ ~ {Tags:["end_scene"]}
execute if score timer end matches 3070 as @e[tag=gibbs] at @s run summon bee ~ ~ ~ {Tags:["end_scene"]}
execute if score timer end matches 3070 as @e[tag=gibbs] at @s run summon bee ~ ~ ~ {Tags:["end_scene"]}
execute if score timer end matches 3070 as @e[tag=gibbs] at @s run summon bee ~ ~ ~ {Tags:["end_scene"]}
execute if score timer end matches 3070 as @e[tag=gibbs] at @s run summon bee ~ ~ ~ {Tags:["end_scene"]}
execute if score timer end matches 3070 as @e[tag=gibbs] at @s run summon bee ~ ~ ~ {Tags:["end_scene"]}
execute if score timer end matches 3070 as @e[tag=gibbs] at @s run playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 1 1.5
execute if score timer end matches 3070 as @e[tag=gibbs] at @s run playsound minecraft:entity.bee.loop_aggressive neutral @a ~ ~ ~ 1 1
execute if score timer end matches 3070 as @e[tag=gibbs] at @s run kill @e[tag=creditsText,distance=..5]
execute if score timer end matches 3070 as @e[tag=gibbs] at @s run kill @s
# End
execute if score timer end matches 3140 run scoreboard players set timer end 4100



## Fed & Bart
execute if score timer end matches 4100 run kill @e[tag=cutscenePov]
execute if score timer end matches 4100 run summon area_effect_cloud -47.5 30.5 -259.5 {Rotation:[-130f,20f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
# Crow
execute if score timer end matches 4120 run summon minecraft:armor_stand -43 28 -263 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:158}}],Tags:["crow","crowPeck","end_scene"],Rotation:[40f,0f]}
execute if score timer end matches 4120 run playsound minecraft:entity.item.pickup neutral @a -43 28 -263 1 1
execute if score timer end matches 4120 run particle smoke -43 28 -263 0.5 0.5 0.5 0.1 10
execute if score timer end matches 4120..4220 as @e[tag=crow] run function glarth:mechanic/animation/crow/pecking
# End
execute if score timer end matches 4220 run scoreboard players set timer end 5180



## Ds & TTEXTT
execute if score timer end matches 5180 run kill @e[tag=cutscenePov]
execute if score timer end matches 5180 run summon area_effect_cloud 14.0 28.0 -266.5 {Rotation:[120f,10f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
# Notes
execute if score timer end matches 5220 run function glarth:mechanic/animation/notes
execute if score timer end matches 5225 run function glarth:mechanic/animation/notes
execute if score timer end matches 5230 run function glarth:mechanic/animation/notes
execute if score timer end matches 5235 run function glarth:mechanic/animation/notes
execute if score timer end matches 5240 run function glarth:mechanic/animation/notes
execute if score timer end matches 5245 run function glarth:mechanic/animation/notes
execute if score timer end matches 5250 run function glarth:mechanic/animation/notes
execute if score timer end matches 5255 run function glarth:mechanic/animation/notes
execute if score timer end matches 5260 run function glarth:mechanic/animation/notes
execute if score timer end matches 5265 run function glarth:mechanic/animation/notes
execute if score timer end matches 5270 run function glarth:mechanic/animation/notes
execute if score timer end matches 5275 run function glarth:mechanic/animation/notes
execute if score timer end matches 5280 run function glarth:mechanic/animation/notes
execute if score timer end matches 5285 run function glarth:mechanic/animation/notes
execute if score timer end matches 5290 run function glarth:mechanic/animation/notes
execute if score timer end matches 5295 run function glarth:mechanic/animation/notes
execute if score timer end matches 5300 run function glarth:mechanic/animation/notes
# End
execute if score timer end matches 5300 run scoreboard players set timer end 7000




## MrK, EnderPig & marhjo
execute if score timer end matches 7000 run kill @e[tag=cutscenePov]
execute if score timer end matches 7000 run summon area_effect_cloud 23.0 28.0 -175.5 {Rotation:[-70f,15f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
#End
execute if score timer end matches 7150 run scoreboard players set timer end 8000


## Timofey & Suso
execute if score timer end matches 8000 run kill @e[tag=cutscenePov]
execute if score timer end matches 8000 run summon area_effect_cloud -87.44 42.00 -244.93 {Rotation:[-70f,8f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
# TImed
execute if score timer end matches 8070 at @e[tag=suso] run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.1 10
execute if score timer end matches 8070 at @e[tag=suso] run summon cat ~ ~ ~ {CatType:3,Sitting:0,Invulnerable:1,NoAI:1,Sitting:1,Rotation:[120f,0f],CustomName:'{"translate":"suso","color":"blue"}',CustomNameVisible:1,Tags:["suso"]}
execute if score timer end matches 8070 run tp @e[tag=suso,type=cat] @e[tag=suso,type=armor_stand,limit=1,sort=nearest]
execute if score timer end matches 8070 run kill @e[tag=suso,type=armor_stand]
#End
execute if score timer end matches 8150 run function glarth:mechanic/win

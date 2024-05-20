#Spawn
execute if score timer end matches 1 run scoreboard players set @a MusicSet 101
execute if score timer end matches 1 run kill @e[tag=end_scene]
execute if score timer end matches 1 run summon minecraft:armor_stand 2 26 -193 {DisabledSlots:4144959,Rotation:[-120.0f,0.0f],Passengers:[{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:1}}],Tags:["charQ","charQ1","end_scene"],Rotation:[-120.0f,0.0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ2","end_scene"],Rotation:[-120.0f,0.0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ3","end_scene"],Rotation:[-120.0f,0.0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ4","end_scene"],Rotation:[-120.0f,0.0f],Pose:{RightArm:[0.0f,0.0f,0.0f]}}],Tags:["charQB","end_scene"],CustomNameVisible:1}
execute if score timer end matches 1 run tag @r[scores={playerid=1..3},gamemode=adventure] add endTemp
execute if score timer end matches 1 unless entity @a[tag=endTemp] run tag @r[gamemode=adventure] add endTemp
execute if score timer end matches 1 as @a[tag=endTemp] run loot replace entity @e[type=armor_stand,tag=charQ4,tag=end_scene] armor.head loot glarth:custom/skull
execute if score timer end matches 1 as @e[tag=charQ4,tag=end_scene,type=armor_stand] run data modify entity @s HandItems[0] merge from entity @s ArmorItems[3]
execute if score timer end matches 1 as @e[tag=charQ4,tag=end_scene,type=armor_stand] run data remove entity @s ArmorItems[3]
execute if score timer end matches 1 at @e[tag=charQB,tag=end_scene] as @a[tag=endTemp] run function glarth:mechanic/make_char
execute if score timer end matches 1 run data merge block 84 26 -123 {front_text:{messages:['""']}}
execute if score timer end matches 1 run data merge block 84 26 -123 {front_text:{messages:['{"entity":"@p[tag=endTemp]","nbt":"EnderItems[{Slot:0b}].tag.name","interpret":true}']}}
execute if score timer end matches 1 run data modify entity @e[type=armor_stand,limit=1,tag=charQB,tag=end_scene] CustomName set from block 84 26 -123 front_text.messages[0]
execute if score timer end matches 1 run tag @a remove endTemp

execute if score timer end matches 1 run summon armor_stand 4 26 -199 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":123,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[-30.0f,0.0f],CustomName:'{"translate":"citizen","color":"gold"}',CustomNameVisible:1,NoGravity:1}
execute if score timer end matches 1 run summon armor_stand 6 26 -203 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":124,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[120.0f,0.0f],CustomName:'{"translate":"merchant2","color":"dark_blue"}',CustomNameVisible:1,NoGravity:1}
execute if score timer end matches 1 run summon armor_stand 12 26 -195 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":125,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[122.0f,0.0f],CustomName:'{"translate":"guard","color":"gray"}',CustomNameVisible:1,NoGravity:1}

#Scene
execute if score timer end matches 1 run gamemode spectator @a[gamemode=adventure]
execute if score timer end matches 1 run summon area_effect_cloud 7 31 -208 {Rotation:[0.0f,25.0f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
execute if score timer end matches 1..125 as @a[gamemode=spectator] run spectate @e[type=area_effect_cloud,tag=cutscenePov,x=7,y=31,z=-208,distance=..1,limit=1] @s
execute if score timer end matches 1..125 run effect clear @a[gamemode=spectator] minecraft:night_vision
execute if score timer end matches 60 run function glarth:dialogue/citizen/lines/end_5
execute if score timer end matches 125 run function glarth:mechanic/win

#Slime
execute if score timer end matches 66 run setblock 5 27 -197 minecraft:structure_void destroy
execute if score timer end matches 72 run setblock 10 27 -197 minecraft:structure_void destroy
execute if score timer end matches 78 run setblock 4 26 -197 minecraft:structure_void destroy
execute if score timer end matches 84 run setblock 4 26 -204 minecraft:structure_void destroy
execute if score timer end matches 90 run setblock 6 27 -198 minecraft:structure_void destroy
execute if score timer end matches 96 run setblock 10 26 -196 minecraft:structure_void destroy
execute if score timer end matches 102 run setblock 6 28 -197 minecraft:structure_void destroy
execute if score timer end matches 108 run setblock 9 28 -196 minecraft:structure_void destroy
execute if score timer end matches 114 run setblock 5 28 -196 minecraft:structure_void destroy
execute if score timer end matches 120 run setblock 10 26 -197 minecraft:structure_void destroy
execute if score timer end matches 1 run scoreboard players set @a MusicSet 101
execute if score timer end matches 1 run kill @e[tag=end_scene]
execute if score timer end matches 1 run summon minecraft:armor_stand -10 26 -198 {DisabledSlots:4144959,Rotation:[-70.0f,0.0f],Passengers:[{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:1}}],Tags:["charQ","charQ1","end_scene"],Rotation:[-70.0f,0.0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ2","end_scene"],Rotation:[-70.0f,0.0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ3","end_scene"],Rotation:[-70.0f,0.0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ4","end_scene"],Rotation:[-70.0f,0.0f],Pose:{RightArm:[0.0f,0.0f,0.0f]}}],Tags:["charQB","end_scene"],CustomNameVisible:1}
execute if score timer end matches 1 run tag @r[scores={playerid=1..3},gamemode=adventure] add endTemp
execute if score timer end matches 1 unless entity @a[tag=endTemp] run tag @r[gamemode=adventure] add endTemp
execute if score timer end matches 1 as @a[tag=endTemp] run loot replace entity @e[type=armor_stand,tag=charQ4,tag=end_scene] armor.head loot glarth:custom/skull
execute if score timer end matches 1 as @e[tag=charQ4,tag=end_scene,type=armor_stand] run data modify entity @s HandItems[0] merge from entity @s ArmorItems[3]
execute if score timer end matches 1 as @e[tag=charQ4,tag=end_scene,type=armor_stand] run data remove entity @s ArmorItems[3]
execute if score timer end matches 1 at @e[tag=charQB,tag=end_scene] as @a[tag=endTemp] run function glarth:mechanic/make_char
execute if score timer end matches 1 run data merge block 84 26 -123 {front_text:{messages:['""','""','""','""']}}
execute if score timer end matches 1 run data merge block 84 26 -123 {front_text:{messages:['{"entity":"@p[tag=endTemp]","nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","interpret":true}','""','""','""']}}
execute if score timer end matches 1 run data modify entity @e[type=armor_stand,limit=1,tag=charQB,tag=end_scene] CustomName set from block 84 26 -123 front_text.messages[0]
execute if score timer end matches 1 run tag @a remove endTemp
execute if score timer end matches 1 run gamemode spectator @a[gamemode=adventure]
execute if score timer end matches 1 run summon area_effect_cloud -7.5 31 -192.5 {Rotation:[170.0f,50.0f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
execute if score timer end matches 1..150 as @a[gamemode=spectator] run spectate @e[type=area_effect_cloud,tag=cutscenePov,x=-7.5,y=31,z=-192.5,distance=..1,limit=1] @s
execute if score timer end matches 1 unless entity @a[scores={playerid=1,charSpouse=2}] run summon armor_stand -4 26 -196 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":33,"minecraft:unbreakable":{}}}],Tags:["end_scene","wife3"],Rotation:[100.0f,0.0f],CustomName:'{"translate":"wife","color":"#FF8488"}',CustomNameVisible:1,NoGravity:1}
execute if score timer end matches 1 if entity @a[scores={playerid=1,charSpouse=2}] run summon armor_stand -4 26 -196 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":157,"minecraft:unbreakable":{}}}],Tags:["end_scene","wife3"],Rotation:[90.0f,0.0f],CustomName:'{"translate":"husband","color":"aqua"}',CustomNameVisible:1}
execute if score timer end matches 1..80 as @e[tag=wife3] at @s run tp @s ~-0.04 ~ ~-0.015
execute if score timer end matches 120 as @e[tag=wife3] at @s unless entity @a[scores={playerid=1,charSpouse=2}] run function glarth:dialogue/wife/lines/end_1
execute if score timer end matches 120 as @e[tag=wife3] at @s if entity @a[scores={playerid=1,charSpouse=2}] run function glarth:dialogue/husband/lines/end_1
execute if score timer end matches 260 run kill @e[tag=end_scene]
execute if score timer end matches 260 run function glarth:mechanic/win


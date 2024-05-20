execute if score timer end matches 1 run scoreboard players set @s MusicSet 101
execute if score timer end matches 1 run kill @e[tag=end_scene]
execute if score timer end matches 1 run summon minecraft:armor_stand 11 26 -206 {DisabledSlots:4144959,Rotation:[130.0f,0.0f],Passengers:[{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:1}}],Tags:["charQ","charQ1","end_scene"],Rotation:[130.0f,0.0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ2","end_scene"],Rotation:[130.0f,0.0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ3","end_scene"],Rotation:[130.0f,0.0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ4","end_scene"],Rotation:[130.0f,0.0f],Pose:{RightArm:[0.0f,0.0f,0.0f]}}],Tags:["charQB","end_scene"],CustomNameVisible:1}
execute if score timer end matches 1 run tag @r[scores={playerid=1..3},gamemode=adventure] add endTemp
execute if score timer end matches 1 unless entity @a[tag=endTemp] run tag @r[gamemode=adventure] add endTemp
execute if score timer end matches 1 as @a[tag=endTemp] run loot replace entity @e[type=armor_stand,tag=charQ4,tag=end_scene] armor.head loot glarth:custom/skull
execute if score timer end matches 1 as @e[tag=charQ4,tag=end_scene,type=armor_stand] run data modify entity @s HandItems[0] merge from entity @s ArmorItems[3]
execute if score timer end matches 1 as @e[tag=charQ4,tag=end_scene,type=armor_stand] run data remove entity @s ArmorItems[3]
execute if score timer end matches 1 at @e[tag=charQB,tag=end_scene] as @a[tag=endTemp] run function glarth:mechanic/make_char
execute if score timer end matches 1 run data merge block 84 26 -123 {front_text:{messages:['""']}}
execute if score timer end matches 1 run data merge block 84 26 -123 {front_text:{messages:['{"entity":"@p[tag=endTemp]","nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","interpret":true}']}}
execute if score timer end matches 1 run data modify entity @e[type=armor_stand,limit=1,tag=charQB,tag=end_scene] CustomName set from block 84 26 -123 front_text.messages[0]
execute if score timer end matches 1 run tag @a remove endTemp

execute if score timer end matches 1 run gamemode spectator @a[gamemode=adventure]
execute if score timer end matches 1..280 run function glarth:mechanic/char/main
execute if score timer end matches 1..280 run effect clear @a[gamemode=spectator] minecraft:night_vision
execute if score timer end matches 1..5 run tp @a[gamemode=spectator,x=4,y=30,z=-206,distance=1..] 4 30 -206 -130 90
execute if score timer end matches 6 run summon area_effect_cloud 4 30 -206 {Rotation:[-130.0f,15.0f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
execute if score timer end matches 6..280 as @a[gamemode=spectator] run spectate @e[type=area_effect_cloud,tag=cutscenePov,x=4,y=30,z=-206,distance=..1,limit=1] @s
execute if score timer end matches 1 run summon armor_stand 7 26 -215 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":9,"minecraft:unbreakable":{}}}],Tags:["end_scene","baker3"],Rotation:[-70.0f,0.0f],CustomName:'{"translate":"baker","color":"#FF8488"}',CustomNameVisible:1}
execute if score timer end matches 1 run summon armor_stand 7 26 -210 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":117,"minecraft:unbreakable":{}}}],Tags:["end_scene","bucketm2"],Rotation:[-135.0f,0.0f],CustomName:'{"translate":"bucketm","color":"red"}',CustomNameVisible:1}
execute if score timer end matches 1 run summon armor_stand 8 24.7 -209 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":116,"minecraft:unbreakable":{}}}],Tags:["end_scene","bucket"],Rotation:[-50.0f,0.0f],NoGravity:1}
execute if score timer end matches 1 run summon armor_stand 9 24.7 -207 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":118,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[-70.0f,0.0f],NoGravity:1}
execute if score timer end matches 1 run summon armor_stand 13 24.7 -208 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":118,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[-110.0f,0.0f],NoGravity:1}
execute if score timer end matches 1 run summon armor_stand 9 24.7 -218 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":118,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[10.0f,0.0f],NoGravity:1}
execute if score timer end matches 1 run summon armor_stand 10 24.7 -220 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":118,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[70.0f,0.0f],NoGravity:1}
execute if score timer end matches 1 run summon armor_stand 5 24.7 -211 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":118,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[170.0f,0.0f],NoGravity:1}
execute if score timer end matches 1 run summon armor_stand 5 24.7 -209 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":118,"minecraft:unbreakable":{}}}],Tags:["end_scene"],Rotation:[0.0f,0.0f],NoGravity:1}
execute if score timer end matches 1 run summon armor_stand 14 24.7 -206 {Invisible:1b,ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":118,"minecraft:unbreakable":{}}}],Tags:[],Rotation:[90.0f,0.0f],NoGravity:1}
execute if score timer end matches 1 run fill 9 27 -210 15 33 -215 air replace fire
execute if score timer end matches 1 run fill 16 27 -209 18 28 -207 air replace fire
execute if score timer end matches 1 run fill 10 26 -217 12 28 -219 air replace fire
execute if score timer end matches 1 run fill 12 26 -208 11 26 -205 air replace fire
execute if score timer end matches 1 run fill 12 29 -203 14 26 -204 air replace fire
execute if score timer end matches 1 run fill 17 33 -220 22 32 -211 air replace fire
execute if score timer end matches 1 run fill 10 26 -221 9 35 -225 air replace fire
execute if score timer end matches 1 run fill 18 26 -206 16 28 -210 air replace fire
execute if score timer end matches 1 run setblock 9 26 -211 fire

execute if score timer end matches 65..70 as @e[tag=bucketm2] at @s run tp @s ~ ~ ~ ~1 ~
execute if score timer end matches 65..70 as @e[tag=bucketm2] at @s run tp @s ~ ~ ~ ~1 ~
execute if score timer end matches 71..80 as @e[tag=bucketm2] at @s run tp @s ~ ~ ~ ~-2 ~
execute if score timer end matches 81..85 as @e[tag=bucketm2] at @s run tp @s ~ ~ ~ ~-0.8 ~

execute if score timer end matches 77 run data merge entity @e[tag=bucket,limit=1] {Pose:{Head:[-1.0f,0.0f,0.0f]}}
execute if score timer end matches 78 run data merge entity @e[tag=bucket,limit=1] {Pose:{Head:[-2.0f,0.0f,1.0f]}}
execute if score timer end matches 79 run data merge entity @e[tag=bucket,limit=1] {Pose:{Head:[-3.0f,0.0f,3.0f]}}
execute if score timer end matches 80 run data merge entity @e[tag=bucket,limit=1] {Pose:{Head:[-5.0f,0.0f,6.0f]}}
execute if score timer end matches 81 run data merge entity @e[tag=bucket,limit=1] {Pose:{Head:[-6.0f,0.0f,10.0f]}}
execute if score timer end matches 82 run data merge entity @e[tag=bucket,limit=1] {Pose:{Head:[-8.0f,0.0f,15.0f]}}
execute if score timer end matches 83 run data merge entity @e[tag=bucket,limit=1] {Pose:{Head:[-9.0f,0.0f,22.0f]}}
execute if score timer end matches 84 run data merge entity @e[tag=bucket,limit=1] {Pose:{Head:[-10.0f,0.0f,30.0f]}}
execute if score timer end matches 85 run data merge entity @e[tag=bucket,limit=1] {Pose:{Head:[-11.0f,0.0f,40.0f]}}
execute if score timer end matches 86 run data merge entity @e[tag=bucket,limit=1] {Pose:{Head:[-12.0f,0.0f,50.0f]}}
execute if score timer end matches 87 run data merge entity @e[tag=bucket,limit=1] {Pose:{Head:[-13.0f,0.0f,60.0f]}}
execute if score timer end matches 88 run data merge entity @e[tag=bucket,limit=1] {Pose:{Head:[-14.0f,0.0f,66.0f]}}
execute if score timer end matches 89 run data merge entity @e[tag=bucket,limit=1] {Pose:{Head:[-15.0f,0.0f,65.0f]}}

execute if score timer end matches 87 as @e[tag=bucket] at @s run particle block{block_state:{Name:"water"}} ^0.5 ^1.5 ^-0.25 0.1 0.1 0.1 0 10
execute if score timer end matches 88 as @e[tag=bucket] at @s run particle block{block_state:{Name:"water"}} ^0.7 ^1.5 ^-0.25 0.1 0.1 0.1 0 10
execute if score timer end matches 89 as @e[tag=bucket] at @s run particle block{block_state:{Name:"water"}} ^0.9 ^1.5 ^-0.25 0.1 0.1 0.1 0 10
execute if score timer end matches 90 as @e[tag=bucket] at @s run particle block{block_state:{Name:"water"}} ^1.1 ^1.5 ^-0.25 0.1 0.1 0.1 0 10
execute if score timer end matches 91 as @e[tag=bucket] at @s run particle block{block_state:{Name:"water"}} ^1.3 ^1.5 ^-0.25 0.1 0.1 0.1 0 10
execute if score timer end matches 92 as @e[tag=bucket] at @s run particle block{block_state:{Name:"water"}} ^1.5 ^1.5 ^-0.25 0.1 0.1 0.1 0 10
execute if score timer end matches 93 as @e[tag=bucket] at @s run particle block{block_state:{Name:"water"}} ^1.7 ^1.5 ^-0.25 0.1 0.1 0.1 0 10
execute if score timer end matches 94 as @e[tag=bucket] at @s run particle block{block_state:{Name:"water"}} ^1.9 ^1.5 ^-0.25 0.1 0.1 0.1 0 10

execute if score timer end matches 92 run setblock 9 26 -211 air 
execute if score timer end matches 92 run particle minecraft:cloud 9 26 -211 0.3 0.3 0.3 0.1 10
execute if score timer end matches 92 as @a at @s run playsound minecraft:block.fire.extinguish block @s ~ ~ ~ 1 1

execute if score timer end matches 100..120 as @e[tag=baker3] at @s run tp @s ~ ~ ~ ~2 ~

execute if score timer end matches 125 as @e[tag=baker3] at @s run summon area_effect_cloud ~ ~2.2 ~ {Radius:0.0f,Duration:2147483647,Tags:["char_msg","end_scene"],Invisible:1,Marker:1,CustomNameVisible:1,CustomName:'{"text":"! ! !","color":"gray"}',NoGravity:1,Team:"gray"}

execute if score timer end matches 180 run function glarth:dialogue/bucketm/lines/end_3

execute if score timer end matches 280 run function glarth:mechanic/win
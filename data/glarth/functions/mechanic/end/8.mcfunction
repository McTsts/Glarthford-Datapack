execute if score timer end matches 1 run scoreboard players set @a MusicSet 101

execute if score timer end matches 1 run summon minecraft:armor_stand -9.0 26 -203 {DisabledSlots:4144959,Rotation:[90.0f,0.0f],Passengers:[{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:1}}],Tags:["charQ","charQ1","end_scene"],Rotation:[90.0f,0.0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ2","end_scene"],Rotation:[90.0f,0.0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ3","end_scene"],Rotation:[90.0f,0.0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ4","end_scene"],Rotation:[90.0f,0.0f],Pose:{RightArm:[0.0f,0.0f,0.0f]}}],Tags:["charQB","end_scene"],CustomNameVisible:1}
execute if score timer end matches 1 run tag @r[scores={playerid=1..3},gamemode=adventure] add endTemp
execute if score timer end matches 1 unless entity @a[tag=endTemp] run tag @r[gamemode=adventure] add endTemp
execute if score timer end matches 1 as @a[tag=endTemp] run loot replace entity @e[type=armor_stand,tag=charQ4,tag=end_scene] armor.head loot glarth:custom/skull
execute if score timer end matches 1 as @e[tag=charQ4,tag=end_scene,type=armor_stand] run data modify entity @s HandItems[0] merge from entity @s ArmorItems[3]
execute if score timer end matches 1 as @e[tag=charQ4,tag=end_scene,type=armor_stand] run data remove entity @s ArmorItems[3]
execute if score timer end matches 1 at @e[tag=charQB,tag=end_scene] as @a[tag=endTemp] run function glarth:mechanic/make_char
execute if score timer end matches 1 run data merge block 84 26 -123 {Text1:'""'}
execute if score timer end matches 1 run data merge block 84 26 -123 {Text1:'{"entity":"@p[tag=endTemp]","nbt":"EnderItems[{Slot:0b}].tag.name","interpret":true}'}
execute if score timer end matches 1 run data modify entity @e[type=armor_stand,limit=1,tag=charQB,tag=end_scene] CustomName set from block 84 26 -123 Text1
execute if score timer end matches 1 run tag @a remove endTemp
execute if score timer end matches 1 as @e[tag=charQB] at @s as @e[tag=charQ3,limit=1,sort=nearest] run data modify entity @s ArmorItems[3].id set value "black_carpet"

execute if score timer end matches 1 run gamemode spectator @a[gamemode=adventure]
execute if score timer end matches 1 run summon area_effect_cloud -8 28 -203 {Rotation:[90.0f,20.0f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
execute if score timer end matches 1 run summon armor_stand -11 26 -202 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":73,"minecraft:unbreakable":{}}}],Tags:["char","uncle","char_look"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"uncle","color":"gray"}',CustomNameVisible:1}


execute if score timer end matches 60 at @e[tag=uncle] run playsound minecraft:entity.generic.drink neutral @a ~ ~ ~ 1 1
execute if score timer end matches 64 at @e[tag=uncle] run playsound minecraft:entity.generic.drink neutral @a ~ ~ ~ 1 1.1
execute if score timer end matches 67 at @e[tag=uncle] run playsound minecraft:entity.generic.drink neutral @a ~ ~ ~ 1 1.2

execute if score timer end matches 70..120 at @e[tag=uncle] run particle entity_effect{color:[0.969,0.549,1.0,1.0]} ~ ~ ~ 0.5 0.5 0.5 1 0 normal
execute if score timer end matches 70..120 at @e[tag=uncle] run particle entity_effect{color:[0.969,0.549,1.0,1.0]} ~ ~ ~ 0.5 0.5 0.5 1 0 normal
execute if score timer end matches 70..120 at @e[tag=uncle] run particle entity_effect{color:[0.969,0.549,1.0,1.0]} ~ ~ ~ 0.5 0.5 0.5 1 0 normal
execute if score timer end matches 70..120 at @e[tag=uncle] run particle entity_effect{color:[0.969,0.549,1.0,1.0]} ~ ~ ~ 0.5 0.5 0.5 1 0 normal
execute if score timer end matches 70..120 at @e[tag=uncle] run particle entity_effect{color:[0.969,0.549,1.0,1.0]} ~ ~ ~ 0.5 0.5 0.5 1 0 normal
execute if score timer end matches 70..120 at @e[tag=uncle] run particle entity_effect{color:[0.969,0.549,1.0,1.0]} ~ ~ ~ 0.5 0.5 0.5 1 0 normal

execute if score timer end matches 130 run function glarth:dialogue/uncle/lines/end_8

execute if score timer end matches 1..200 as @a[gamemode=spectator] run spectate @e[type=area_effect_cloud,tag=cutscenePov,x=-8,y=28,z=-203,distance=..1,limit=1] @s

execute if score timer end matches 230 run function glarth:mechanic/win

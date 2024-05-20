execute if score timer end matches 1 run scoreboard players set @a MusicSet 101
execute if score timer end matches 1 run kill @e[tag=end_scene]
execute if score timer end matches 1 run scoreboard players set allyCount Stats 0
execute if score timer end matches 1 if score allyGibbs Stats matches 1 run scoreboard players add allyCount Stats 1
execute if score timer end matches 1 if score allyJerozgen Stats matches 1 run scoreboard players add allyCount Stats 1
execute if score timer end matches 1 if score allyTs Stats matches 1 run scoreboard players add allyCount Stats 1
execute if score timer end matches 1 if score allyAdri Stats matches 1 run scoreboard players add allyCount Stats 1
execute if score timer end matches 1 if score allySuso Stats matches 1 run scoreboard players add allyCount Stats 1
execute if score timer end matches 1 if score allyCount Stats matches 4.. if score allyGibbs Stats matches 1 run schedule function glarth:dialogue/gibbs/lines/end1 5s 
execute if score timer end matches 1 if score allyCount Stats matches ..3 if score allyGibbs Stats matches 1 run schedule function glarth:dialogue/gibbs/lines/end2 5s
execute if score timer end matches 1 if score allyGibbs Stats matches 1 run summon armor_stand 171 26 -156 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":348,"minecraft:unbreakable":{}}}],Tags:["char","gibbs","end_scene"],Rotation:[120.0f,0.0f],CustomName:'{"translate":"gibbs","color":"gray"}',CustomNameVisible:1}
execute if score timer end matches 1 if score allyJerozgen Stats matches 1 run summon armor_stand 168 26 -162 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":525,"minecraft:unbreakable":{}}}],Tags:["char","jerozgen","end_scene"],Rotation:[-15.0f,0.0f],CustomName:'{"translate":"jerozgen","color":"gold"}',CustomNameVisible:1}
execute if score timer end matches 1 if score allyTs Stats matches 1 run summon armor_stand 172 26 -158 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":1,"minecraft:unbreakable":{}}}],Tags:["char","mctsts","end_scene"],Rotation:[95.0f,0.0f],CustomName:'{"translate":"mctsts","color":"green"}',CustomNameVisible:1}
execute if score timer end matches 1 if score allyAdri Stats matches 1 run summon armor_stand 172 26 -160 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":256,"minecraft:unbreakable":{}}}],Tags:["char","adri","end_scene"],Rotation:[80.0f,0.0f],CustomName:'{"translate":"adri","color":"red"}',CustomNameVisible:1}
execute if score timer end matches 1 if score allySuso Stats matches 1 run summon armor_stand 170 26 -161 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":360,"minecraft:unbreakable":{}}}],Tags:["char","suso","char_look","end_scene"],Rotation:[0.0f,0.0f],CustomName:'{"translate":"suso","color":"blue"}',CustomNameVisible:1}
execute if score timer end matches 1 run summon minecraft:armor_stand 167 26 -158 {DisabledSlots:4144959,Rotation:[-110.0f,0.0f],Passengers:[{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:1}}],Tags:["charQ","charQ1","end_scene"],Rotation:[-110.0f,0.0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ2","end_scene"],Rotation:[-110.0f,0.0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ3","end_scene"],Rotation:[-110.0f,0.0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ4","end_scene"],Rotation:[-110.0f,0.0f],Pose:{RightArm:[0.0f,0.0f,0.0f]}}],Tags:["charQB","end_scene"],CustomNameVisible:1}
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
execute if score timer end matches 1 run scoreboard players set @a[gamemode=adventure] unlockQ11 1
execute if score timer end matches 1 run scoreboard players set @a[gamemode=adventure] unlockQ10 1
execute if score timer end matches 1 run scoreboard players set @a[gamemode=adventure] winQ10 1
execute if score timer end matches 1 run gamemode spectator @a[gamemode=adventure]
execute if score timer end matches 1 run summon area_effect_cloud 166.05 29.5 -154.88 {Rotation:[-128.0f,30.0f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
execute if score timer end matches 1..260 as @a[gamemode=spectator] run spectate @e[type=area_effect_cloud,tag=cutscenePov,x=166.05,y=29.5,z=-154.88,distance=..1,limit=1] @s

execute if score timer end matches 60 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 75 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 88 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 99 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 108 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 115 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 120 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 123 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 124 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 125 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 126 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 127 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 128 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 129 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 130 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 132 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 134 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 136 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 139 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 142 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 145 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 149 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 153 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 157 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 162 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 167 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 172 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 178 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 184 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 190 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 197 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 204 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 212 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}
execute if score timer end matches 220 as @e[tag=end_scene,sort=random,limit=1,nbt={OnGround:1b}] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}


execute if score timer end matches 260 run kill @e[tag=end_scene]
execute if score timer end matches 260 run tag @a remove doneGarySapphire
execute if score timer end matches 260 run scoreboard players set winMessage Stats 2
execute if score timer end matches 260 run function glarth:mechanic/win

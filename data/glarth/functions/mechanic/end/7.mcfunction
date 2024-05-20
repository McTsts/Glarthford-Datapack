# Spawn
execute if score timer end matches 1 run time set 6000
execute if score timer end matches 1.. run weather clear
execute if score timer end matches 1 run function glarth:mechanic/setup/quest/7
execute if score timer end matches 1 run kill @e[tag=cedric]
execute if score timer end matches 1 run scoreboard players set @a MusicSet 101
execute if score timer end matches 1 run kill @e[tag=end_scene]
execute if score timer end matches 1 run summon minecraft:armor_stand 101 27 -239 {DisabledSlots:4144959,Rotation:[-120.0f,0.0f],Passengers:[{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:1}}],Tags:["charQ","charQ1","end_scene"],Rotation:[-120.0f,0.0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ2","end_scene"],Rotation:[-120.0f,0.0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ3","end_scene"],Rotation:[-120.0f,0.0f]},{DisabledSlots:4144959,Invisible:1,NoGravity:1,Silent:1b,Marker:1,id:"armor_stand",Tags:["charQ","charQ4","end_scene"],Rotation:[-120.0f,0.0f],Pose:{RightArm:[0.0f,0.0f,0.0f]}}],Tags:["charQB","end_scene"],CustomNameVisible:1}
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
execute if score timer end matches 10 run effect clear @a blindness

execute if score timer end matches 1 run summon area_effect_cloud 87 38 -230 {Rotation:[-100.0f,40.0f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
execute if score timer end matches 1..150 as @a[gamemode=spectator] run spectate @e[type=area_effect_cloud,tag=cutscenePov,x=87,y=38,z=-230,distance=..1,limit=1] @s

execute if score timer end matches 1 run tag @e[tag=hzombie] add zombie_all
execute if score timer end matches 1 run tag @e[tag=kzombie] add zombie_all
execute if score timer end matches 1 run tag @e[tag=kzombie2] add zombie_all
execute if score timer end matches 1 run tag @e[tag=gzombie] add zombie_all
execute if score timer end matches 1 run tag @e[tag=gzombie2] add zombie_all
execute if score timer end matches 1 run tag @e[tag=szombie] add zombie_all
execute if score timer end matches 1 run tag @e[tag=pzombie] add zombie_all
execute if score timer end matches 1 run tag @e[tag=zombie] add zombie_all
execute if score timer end matches 1 run tag @e[tag=zombie2] add zombie_all
execute if score timer end matches 1 run tag @e[tag=zombie3] add zombie_all
execute if score timer end matches 1 run tag @e[tag=zombie4] add zombie_all
execute if score timer end matches 1 run tag @e[tag=zombie5] add zombie_all
execute if score timer end matches 1 run tag @e[tag=zombie6] add zombie_all
execute if score timer end matches 1 run tag @e[tag=baby_zombie] add zombie_all
execute if score timer end matches 1 run tag @e[tag=baby_zombie2] add zombie_all
execute if score timer end matches 1 run tag @e[tag=husk] add zombie_all
execute if score timer end matches 1 run tag @e[tag=husk2] add zombie_all
execute if score timer end matches 1 run tag @e[tag=zombie_villager] add zombie_all
execute if score timer end matches 1 run tag @e[tag=zombie_villager2] add zombie_all
execute if score timer end matches 1 run tag @e[tag=ender_zombie] add zombie_all
execute if score timer end matches 1 run tag @e[tag=ender_zombie2] add zombie_all


execute if score timer end matches 70.. at @e[tag=zombie_all] run particle flame ~ ~0.5 ~ 0.5 0.5 0.5 0 1
execute if score timer end matches 80.. at @e[tag=zombie_all] run particle flame ~ ~0.5 ~ 0.5 0.5 0.5 0 1
execute if score timer end matches 100.. at @e[tag=zombie_all] run particle flame ~ ~0.5 ~ 0.5 0.5 0.5 0 1

execute if score timer end matches 80 run tag @e[tag=zombie_all,sort=random,limit=1] add zombie_death
execute if score timer end matches 84 run tag @e[tag=zombie_all,sort=random,limit=1] add zombie_death
execute if score timer end matches 88 run tag @e[tag=zombie_all,sort=random,limit=1] add zombie_death
execute if score timer end matches 92 run tag @e[tag=zombie_all,sort=random,limit=1] add zombie_death
execute if score timer end matches 96 run tag @e[tag=zombie_all,sort=random,limit=1] add zombie_death
execute if score timer end matches 100 run tag @e[tag=zombie_all,sort=random,limit=1] add zombie_death
execute if score timer end matches 104 run tag @e[tag=zombie_all,sort=random,limit=1] add zombie_death
execute if score timer end matches 108 run tag @e[tag=zombie_all,sort=random,limit=1] add zombie_death
execute if score timer end matches 112 run tag @e[tag=zombie_all,sort=random,limit=1] add zombie_death
execute if score timer end matches 116 run tag @e[tag=zombie_all,sort=random,limit=1] add zombie_death
execute if score timer end matches 120 run tag @e[tag=zombie_all,sort=random,limit=1] add zombie_death
execute if score timer end matches 124 run tag @e[tag=zombie_all,sort=random,limit=1] add zombie_death
execute if score timer end matches 128 run tag @e[tag=zombie_all,sort=random,limit=1] add zombie_death
execute if score timer end matches 132 run tag @e[tag=zombie_all,sort=random,limit=1] add zombie_death
execute if score timer end matches 136 run tag @e[tag=zombie_all,sort=random,limit=1] add zombie_death
execute if score timer end matches 140.. run tag @e[tag=zombie_all,sort=random,limit=1] add zombie_death

execute if score timer end matches 80.. at @e[tag=zombie_death] run particle smoke ~ ~0.5 ~ 0.5 0.5 0.1 0.1 3
execute if score timer end matches 80.. at @e[tag=zombie_death] run particle cloud ~ ~0.5 ~ 0.5 0.5 0.1 0.1 10
execute if score timer end matches 80.. at @e[tag=zombie_death] run playsound minecraft:entity.zombie.death hostile @a ~ ~ ~ 3 1
execute if score timer end matches 80.. run kill @e[tag=zombie_death] 


execute if score timer end matches 270 run function glarth:mechanic/win

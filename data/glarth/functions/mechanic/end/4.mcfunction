execute if score timer end matches 1 run gamemode spectator @a[gamemode=adventure]
execute if score timer end matches 1 if score day Dis matches ..0 run scoreboard players remove time Dis 2400

execute if score timer end matches 20 run summon area_effect_cloud -47 83 -734 {Rotation:[180f,20f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
execute if score timer end matches 20 run kill @e[tag=ender_priest]
execute if score timer end matches 20 run summon armor_stand -47 81 -741 {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:394,Unbreakable:1}}],Tags:["end_scene","ender_priest"],Rotation:[0f,0f],CustomName:"{\"translate\":\"ender_priest\",\"color\":\"dark_purple\"}",CustomNameVisible:1}
execute if score timer end matches 300 run kill @e[tag=cutscenePov]
execute if score timer end matches 300 unless score time Dis matches ..859 run summon area_effect_cloud 128.5 88.5 -103.0 {Rotation:[-144f,18f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
execute if score timer end matches 300 if score time Dis matches ..859 run summon area_effect_cloud 82.5 91.0 -95.0 {Rotation:[135f,20f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}
execute if score timer end matches 400 unless score time Dis matches ..859 run kill @e[tag=cutscenePov]
execute if score timer end matches 400 unless score time Dis matches ..859 run summon area_effect_cloud 82.5 91.0 -95.0 {Rotation:[135f,20f],Radius:0.0f,Duration:2147483647,Tags:["cutscenePov"]}

execute if score timer end matches 1 run function glarth:mechanic/end/4/spawn_creators
execute if score timer end matches 1..550 run function glarth:mechanic/end/4/graveyard
execute if score timer end matches 550.. run function glarth:mechanic/end/4/credits

execute if score timer end matches 40.. as @a[gamemode=spectator] run spectate @e[type=area_effect_cloud,tag=cutscenePov,limit=1] @s

execute if score timer end matches 1 run effect give @a blindness 2 0 true 
execute if score timer end matches 230 as @e[tag=ender_priest] at @s run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.2 10
execute if score timer end matches 230 as @e[tag=ender_priest] at @s run particle cloud ~ ~ ~ 0.5 0.5 0.5 0.2 10
execute if score timer end matches 230 as @e[tag=ender_priest] at @s run playsound minecraft:entity.enderman.death hostile @a ~ ~ ~ 1 0.7
execute if score timer end matches 230 as @e[tag=ender_priest] at @s run kill @s
execute if score timer end matches 270 run effect give @a blindness 3 0 true 
execute if score timer end matches 270 run kill @e[tag=cutscenePov]
execute if score timer end matches 270 run tp @a[gamemode=spectator] 128.5 88.5 -103.0
execute if score timer end matches 1 run tp @a[gamemode=spectator] -47 83 -734 180 20
execute if score timer end matches 299 run effect clear @a blindness
execute if score timer end matches 550 run effect give @a blindness 1 0 true 
execute if score timer end matches 550 if score day Dis matches ..0 run scoreboard players add time Dis 2400
execute unless score time Dis matches ..859 if score timer end matches 550 run scoreboard players set timer end 554
execute if score time Dis matches ..859 if score timer end matches 450 run scoreboard players set timer end 554

# debug
#execute if score timer end matches ..5 run scoreboard players set timer end 554


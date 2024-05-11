tag @a remove holdsEye 
tag @a[nbt={SelectedItem:{id:"minecraft:ender_eye"}}] add holdsEye 
tag @a[nbt={SelectedItem:{id:"minecraft:ender_eye",tag:{CanPlaceOn:["end_portal_frame"]}}}] remove holdsEye 
replaceitem entity @a[tag=holdsEye] weapon minecraft:ender_eye{CanPlaceOn:["end_portal_frame"]} 1 

execute if score endStarted Stats matches 1 run weather rain


function glarth:mechanic/dim_end/update

execute positioned 3 25 -329 as @a[gamemode=adventure,distance=..10] at @s if block ~ ~ ~ lava run effect give @s minecraft:regeneration 1 4 true
execute positioned 3 25 -329 as @a[gamemode=adventure,distance=..20] at @s unless block ~ ~ ~ lava run effect give @s[scores={health=..2}] minecraft:fire_resistance 2 0 true
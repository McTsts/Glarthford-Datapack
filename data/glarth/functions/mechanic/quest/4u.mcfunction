tag @a remove holdsEye 
tag @a[nbt={SelectedItem:{id:"minecraft:ender_eye"}}] add holdsEye 
tag @a[nbt={SelectedItem:{id:"minecraft:ender_eye",tag:{CanPlaceOn:["end_portal_frame"]}}}] remove holdsEye 
item replace entity @a[tag=holdsEye] weapon with minecraft:ender_eye{CanPlaceOn:["end_portal_frame"]} 1

execute if score endStarted Stats matches 1 run weather rain


function glarth:mechanic/dim_end/update

execute positioned 3 25 -329 as @a[gamemode=adventure,distance=..10] at @s if block ~ ~ ~ lava run effect give @s minecraft:regeneration 1 4 true
execute positioned 3 25 -329 as @a[gamemode=adventure,distance=..20] at @s unless block ~ ~ ~ lava run effect give @s[scores={health=..2}] minecraft:fire_resistance 2 0 true

# items in end portal
execute positioned 2 1 -336 as @e[type=item,distance=..7] run tp 2 28 -339
execute positioned 2 22 -336 as @e[type=item,distance=..3] run tp 2 28 -339

# character moves
execute as @e[tag=mctsts,tag=move_to_gary,type=armor_stand] at @s unless entity @a[gamemode=adventure,distance=..10] run function glarth:mechanic/action/gary_move/mctsts
execute as @e[tag=adri,tag=move_to_gary,type=armor_stand] at @s unless entity @a[gamemode=adventure,distance=..10] run function glarth:mechanic/action/gary_move/adri
execute as @e[tag=jerozgen,tag=move_to_gary,type=armor_stand] at @s unless entity @a[gamemode=adventure,distance=..10] run function glarth:mechanic/action/gary_move/jerozgen








# End Posters Town
setblock 3 27 -208 air
setblock 5 26 -203 air
setblock -6 27 -199 air
setblock 12 26 -199 air
setblock 10 28 -221 air
setblock -7 28 -180 air
setblock -17 28 -180 air
setblock 32 28 -193 air
setblock 3 27 -208 acacia_wall_sign[facing=east]{Text1:'{"storage":"glarth:translations","nbt":"Posters.EndDisease.East[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}'}
setblock 5 26 -203 acacia_wall_sign[facing=east]{Text1:'{"storage":"glarth:translations","nbt":"Posters.EndDisease.East[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}'}
setblock -6 27 -199 acacia_wall_sign[facing=south]{Text1:'{"storage":"glarth:translations","nbt":"Posters.EndDisease.South[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}'}
setblock 12 26 -199 acacia_wall_sign[facing=south]{Text1:'{"storage":"glarth:translations","nbt":"Posters.EndDisease.South[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}'}
setblock 10 28 -221 acacia_wall_sign[facing=south]{Text1:'{"storage":"glarth:translations","nbt":"Posters.EndDisease.South[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}'}
setblock -7 28 -180 acacia_wall_sign[facing=south]{Text1:'{"storage":"glarth:translations","nbt":"Posters.EndDisease.South[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}'}
setblock -17 28 -180 acacia_wall_sign[facing=south]{Text1:'{"storage":"glarth:translations","nbt":"Posters.EndDisease.South[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}'}
setblock 32 28 -193 acacia_wall_sign[facing=west]{Text1:'{"storage":"glarth:translations","nbt":"Posters.EndDisease.West[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}'}

# Farm
setblock 0 27 -244 air
setblock 0 28 -247 air
setblock 8 26 -247 air
setblock 0 27 -244 acacia_wall_sign[facing=east]{Text1:'{"storage":"glarth:translations","nbt":"Posters.EndDisease.East[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}'}
setblock 0 28 -247 acacia_wall_sign[facing=east]{Text1:'{"storage":"glarth:translations","nbt":"Posters.EndDisease.East[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}'}
setblock 8 26 -247 acacia_wall_sign[facing=west]{Text1:'{"storage":"glarth:translations","nbt":"Posters.EndDisease.West[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}'}

# Misc
setblock 41 27 -190 air
setblock -21 29 -124 air
setblock 70 28 -254 air
setblock 41 27 -190 acacia_wall_sign[facing=north]{Text1:'{"storage":"glarth:translations","nbt":"Posters.EndDisease.North[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}'}
setblock -21 29 -124 acacia_wall_sign[facing=north]{Text1:'{"storage":"glarth:translations","nbt":"Posters.EndDisease.North[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}'}
setblock 70 28 -254 acacia_wall_sign[facing=west]{Text1:'{"storage":"glarth:translations","nbt":"Posters.EndDisease.West[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}'}

# gary + sewers
execute as @a at @s if block ~ 0 ~ brown_concrete if block ~ ~ ~ water unless block ~ ~1 ~ air run effect give @s minecraft:dolphins_grace 3 5 true
execute as @a at @s if block ~ 0 ~ brown_concrete if block ~ ~ ~ water unless block ~ ~1 ~ air run effect give @s minecraft:water_breathing 3 5 true
execute as @a at @s if block ~ 0 ~ brown_concrete unless block ~ ~ ~ water run effect clear @s minecraft:water_breathing
execute as @a at @s if block ~ 0 ~ brown_concrete unless block ~ ~ ~ water run effect clear @s minecraft:dolphins_grace 

function glarth:combat/remove/set
execute if score @s blocked matches 0 if entity @s[tag=!tbcAlly] if data storage glarth:main inv.all[{id:"minecraft:shield"}] run function glarth:combat/action/shield

scoreboard players set @s blocking 0
scoreboard players set @s inBlock 0
scoreboard players set @s tbcMenuX 102
function glarth:combat/menu

clear @s iron_ingot
clear @s iron_nugget

execute if score @s[tag=!tip26] blocked matches 1 run tag @s add tip26
execute if score @s[tag=!tip26] blocked matches 0 if entity @s[tag=failedBlockOnce] run function glarth:mechanic/tip/26
execute if score @s[tag=!tip26] blocked matches 0 run tag @s add failedBlockOnce
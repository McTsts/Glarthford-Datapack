function glarth:combat/remove/set
execute if score @s blocked matches 0 if data storage glarth:main inv.all[{id:"minecraft:shield"}] run function glarth:combat/action/shield

scoreboard players set @s blocking 0
scoreboard players set @s inBlock 0
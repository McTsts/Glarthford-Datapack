scoreboard players set r Random 1
scoreboard players operation r Random += difficulty Stats 
function glarth:util/rand_tbc
execute if score n Random matches 1 run scoreboard players set @s blocked 1
execute if score n Random matches 1 run clear @s iron_ingot
execute if score n Random matches 1 run clear @s iron_nugget
execute if score n Random matches 1 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@e[tag=tbcTurn]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.shield","color":"white","with":[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s","interpret":true}]}]
execute if score n Random matches 1 at @s run playsound minecraft:item.shield.block player @a ~ ~ ~ 1 1
execute if score n Random matches 1 run function glarth:combat/remove/shield
tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@p[tag=tbcTurn]","interpret":true},{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@e[tag=tbcTurn,type=!player]","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.flee.sp","with":[[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@e[tag=tbcTurn,type=!player]","interpret":true}]]}]
execute if score @s tbcSel matches 1.. at @s run tag @e[tag=tbcEnemy,distance=0.1..] add rand_sel
execute if score @s tbcSel matches 1.. at @s run function glarth:util/rand_sel/1
execute if score @s tbcSel matches 1.. at @s run scoreboard players set @e[tag=rand_sel_result,limit=1] tbcSel 1
scoreboard players set @s tbcSel 0
execute at @s unless entity @e[tag=tbcEnemy,distance=0.1..] run kill @e[tag=tbcSelector]
function glarth:combat/selection
execute if entity @s[tag=tbcBoss] at @s unless entity @e[tag=tbcBoss,distance=0.1..] run function glarth:combat/kill_boss
kill @e[type=armor_stand,tag=charQE,limit=1,sort=nearest,distance=..1]
kill @e[type=armor_stand,tag=charQEBee,limit=1,sort=nearest,distance=..1]
kill @s



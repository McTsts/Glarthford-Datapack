execute if score enemies tbcStats matches 2.. run function glarth:combat/action_enemy/util/extra
execute if score enemies tbcStats matches 2.. run scoreboard players set @s tbcAttack 236
execute if score enemies tbcStats matches 2.. run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.236","bold":true}]}]
execute if score enemies tbcStats matches 2.. if score tbcVa tbcStats matches 0 if entity @e[tag=tbcEvilTs,tag=!4a] run function glarth:dialogue/evil_ts/lines/tbc4a
execute if score enemies tbcStats matches 2.. run function glarth:combat/attack_init
execute if score enemies tbcStats matches ..1 run function glarth:combat/attack
execute if score enemiesAll tbcStats matches ..4 run scoreboard players set @s tbcAttack 230
execute if score enemiesAll tbcStats matches ..4 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.230","bold":true}]}]
execute if score enemiesAll tbcStats matches ..4 if score tbcVa tbcStats matches 0 if entity @e[tag=tbcEvilTs,tag=!3a] run function glarth:dialogue/evil_ts/lines/tbc3a
execute if score enemiesAll tbcStats matches ..4 run function glarth:combat/attack_init
execute if score enemiesAll tbcStats matches ..4 if score @s attack_230 matches 1000.. run scoreboard players remove @s attack_230 1000
execute if score enemiesAll tbcStats matches 5.. run function glarth:combat/attack

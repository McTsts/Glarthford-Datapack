scoreboard players set @s tbcAttack 153
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.153","bold":true}]}]
function glarth:combat/attack_init
tag @s add tbcAnotherTurn

scoreboard players set r Random 2
function glarth:util/random
execute if score n Random matches 1 if entity @s[tag=tbcSummoner] run function glarth:dialogue/summoner/lines/attack3
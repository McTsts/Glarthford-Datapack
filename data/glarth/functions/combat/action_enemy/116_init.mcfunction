scoreboard players set @s tbcAttack 116
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.116","bold":true}]}]
function glarth:combat/attack_init
scoreboard players add @s tbcCharge 1

execute if score @s attack_116 matches 1000.. run scoreboard players remove @s attack_116 1000
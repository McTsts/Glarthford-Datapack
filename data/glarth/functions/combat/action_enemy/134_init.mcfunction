execute if score enemies tbcStats < maxEnemies tbcStats run scoreboard players set @s tbcAttack 134
execute if score enemies tbcStats < maxEnemies tbcStats run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.134","bold":true}]}]
execute if score enemies tbcStats < maxEnemies tbcStats run scoreboard players set @e[tag=tbcEnemy] attack_134 0
execute if score enemies tbcStats < maxEnemies tbcStats run function glarth:combat/attack_init
execute if score enemies tbcStats >= maxEnemies tbcStats run function glarth:combat/attack

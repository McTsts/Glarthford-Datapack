execute if score enemiesAll tbcStats matches ..2 run scoreboard players set @s tbcAttack 152
execute if score enemiesAll tbcStats matches ..2 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.152","bold":true}]}]
execute if score enemiesAll tbcStats matches ..2 run scoreboard players set r Random 4
execute if score enemiesAll tbcStats matches ..2 run function glarth:util/random
execute if score enemiesAll tbcStats matches ..2 if score n Random matches 1 run function glarth:dialogue/summoner/lines/attack1
execute if score enemiesAll tbcStats matches ..2 if score n Random matches 2 run function glarth:dialogue/summoner/lines/attack2
execute if score enemiesAll tbcStats matches ..2 run function glarth:combat/attack_init
execute if score enemiesAll tbcStats matches 3.. run function glarth:combat/action_enemy/153_init
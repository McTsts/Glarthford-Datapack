execute if score enemiesAll tbcStats matches ..1 run scoreboard players set @s tbcAttack 199
execute if score enemiesAll tbcStats matches ..1 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.199","bold":true}]}]
execute if score enemiesAll tbcStats matches ..1 run scoreboard players set doLaser tbcStats 1
execute if score enemiesAll tbcStats matches ..1 run scoreboard players set @s attack_199 0
execute if score enemiesAll tbcStats matches ..1 run scoreboard players set @s tbcFire 0
execute if score enemiesAll tbcStats matches ..1 run scoreboard players set @s tbcPoison 0
execute if score enemiesAll tbcStats matches ..1 run scoreboard players set @s tbcBee 0
execute if score enemiesAll tbcStats matches ..1 run function glarth:combat/attack_init
execute if score enemiesAll tbcStats matches 2.. run function glarth:combat/attack

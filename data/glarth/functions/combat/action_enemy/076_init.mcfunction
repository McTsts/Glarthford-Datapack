execute if score enemies tbcStats matches ..4 run scoreboard players set @s tbcAttack 76
execute if score enemies tbcStats matches ..4 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.76","bold":true}]}]
execute if score enemies tbcStats matches ..4 run function glarth:combat/attack_init
execute if score enemies tbcStats matches 5.. run function glarth:combat/attack

scoreboard players set @s attack_076 0
scoreboard players add @s[tag=!tbcEnderPriest] attack_079 1
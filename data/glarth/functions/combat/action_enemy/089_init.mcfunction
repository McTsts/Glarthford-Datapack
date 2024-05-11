scoreboard players set @s tbcAttack 89
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.89","bold":true}]}]
function glarth:combat/attack_init

# Enable Sword, Disable this (beast)
scoreboard players set @s attack_086 1
scoreboard players set @s attack_087 1
scoreboard players set @s attack_089 0
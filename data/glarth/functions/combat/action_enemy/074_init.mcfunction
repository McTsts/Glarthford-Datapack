scoreboard players set @s tbcAttack 74
execute as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.74","bold":true}]}]
replaceitem entity @s armor.head diamond_hoe{CustomModelData:239}
function glarth:combat/attack_init
tag @s remove tbcDontShield
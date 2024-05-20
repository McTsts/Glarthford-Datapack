scoreboard players set @s tbcAttack 20
tag @e remove tbcTarget
tag @e remove tbcTargetAS
tag @e[tag=tbcAlly] add tbcTarget
tag @e[tag=tbcAlly] add tbcTargetAS
scoreboard players set @e[tag=tbcTarget,limit=1] blocked 1
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.20","bold":true}]}]
function glarth:combat/attack_init
scoreboard players set @e[tag=tbcMinerChief] tbcQueue 100
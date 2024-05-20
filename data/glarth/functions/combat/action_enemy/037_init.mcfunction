scoreboard players set @s tbcAttack 37
execute as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
scoreboard players set creeperTimer Temp 0
execute at @s run playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 3 1
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.37","bold":true}]}]
function glarth:combat/attack_init
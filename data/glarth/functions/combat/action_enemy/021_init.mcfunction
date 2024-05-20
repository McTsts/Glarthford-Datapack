scoreboard players set @s tbcAttack 21
tag @e remove tbcTarget
tag @e remove tbcTargetAS
tag @r[tag=inTBC,gamemode=adventure] add tbcTarget
scoreboard players operation @a[tag=inTBC] tbcStamina > 2 Const
execute as @e[tag=tbcTarget,scores={playerid=1}] run tag @e[tag=tbcPlayerAS1] add tbcTargetAS
execute as @e[tag=tbcTarget,scores={playerid=2}] run tag @e[tag=tbcPlayerAS2] add tbcTargetAS
execute as @e[tag=tbcTarget,scores={playerid=3}] run tag @e[tag=tbcPlayerAS3] add tbcTargetAS
execute as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.21","bold":true}]}]
function glarth:combat/attack_init
scoreboard players set @e[tag=tbcMinerChief] tbcQueue 100
execute as @e[tag=tbcArrowP,type=armor_stand] at @s run tp @s ^ ^ ^0.3 ~ ~
execute as @e[tag=tbcArrowP,type=armor_stand] at @s run particle minecraft:portal ~ ~0.5 ~ 0.1 0.1 0.1 0 2
execute as @e[tag=tbcArrowP,type=armor_stand] at @s if entity @e[tag=tbcTargetAS,distance=..2.5,type=armor_stand] as @e[tag=tbcTarget,limit=1] unless score @s blocking matches 1 unless score @s blocked matches 1 run function glarth:combat/action/blocking_start
execute as @e[tag=tbcArrowP,type=armor_stand] at @s if entity @e[tag=tbcTargetAS,distance=..0.2,type=armor_stand] run tag @s add func
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s run scoreboard players remove damage tbcStats 10
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:dragon_breath ~ ~0.5 ~ 0.2 0.2 0.2 0.05 30
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run playsound minecraft:entity.dragon_fireball.explode hostile @a ~ ~ ~ 1 1
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s run function glarth:combat/action_enemy/util/get_target
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s run tag @e[tag=tbcTurn] add tbcReady
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s run kill @s
execute as @e[tag=tbcArrowP,type=armor_stand] at @s run tp @s ^ ^ ^0.3 ~ ~
execute as @e[tag=tbcArrowP,type=armor_stand] at @s run particle minecraft:firework ~ ~0.85 ~ 0.05 0.05 0.05 00.01 1
execute as @e[tag=tbcArrowP,type=armor_stand,tag=tbcArrowFire] at @s run particle minecraft:flame ~ ~0.85 ~ 0.1 0.1 0.1 0.1 1
execute as @e[tag=tbcArrowP,type=armor_stand,tag=tbcArrowSlowness] at @s run particle block snow_block ~ ~0.85 ~ 0.1 0.1 0.1 0 1
execute as @e[tag=tbcArrowP,type=armor_stand] at @s if entity @e[tag=tbcTargetAS,distance=..3.0,type=armor_stand] as @e[tag=tbcTarget,limit=1] unless score @s blocking matches 1 unless score @e[tag=tbcTarget,limit=1] blocked matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute as @e[tag=tbcArrowP,type=armor_stand] at @s if entity @e[tag=tbcTargetAS,distance=..0.2,type=armor_stand] run tag @s add func
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s run scoreboard players remove damage tbcStats 10
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_start
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 1.. run function glarth:combat/action_enemy/util/next_stage
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 1.. as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 1.. as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s run function glarth:combat/action_enemy/util/next_stage
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s run kill @s
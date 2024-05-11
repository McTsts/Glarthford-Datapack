execute as @e[tag=tbcArrowP,type=turtle] at @s facing entity @e[tag=tbcTargetAS] feet rotated ~ 0 run tp @s ^ ^ ^0.3
execute as @e[tag=tbcArrowP,type=turtle] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=tbcArrowP,type=turtle] at @s if entity @e[tag=tbcTargetAS,distance=..2.0,type=armor_stand] as @e[tag=tbcTarget,limit=1] unless score @s blocking matches 1 unless score @s blocked matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute as @e[tag=tbcArrowP,type=turtle] at @s if entity @e[tag=tbcTargetAS,distance=..0.2,type=armor_stand] run tag @s add func
execute as @e[tag=tbcArrowP,tag=func,type=turtle] at @s as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute as @e[tag=tbcArrowP,tag=func,type=turtle] at @s run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute as @e[tag=tbcArrowP,tag=func,type=turtle] at @s run scoreboard players remove damage tbcStats 10
execute as @e[tag=tbcArrowP,tag=func,type=turtle] at @s as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute as @e[tag=tbcArrowP,tag=func,type=turtle] at @s run function glarth:combat/action_enemy/util/get_target
execute as @e[tag=tbcArrowP,tag=func,type=turtle] at @s run function glarth:combat/action_enemy/util/next_stage
execute as @e[tag=tbcArrowP,tag=func,type=turtle] at @s run data merge entity @s {DeathTime:19s,Health:0.0f}
execute as @e[tag=tbcArrowP,type=armor_stand] at @s run tp @s ^ ^ ^0.2 ~ ~
execute as @e[tag=tbcArrowP,type=armor_stand,tag=tbcArrowFire] at @s run particle minecraft:flame ~ ~0.5 ~ 0.1 0.1 0.1 0.1 1
execute as @e[tag=tbcArrowP,type=armor_stand] at @s if entity @e[scores={tbcSel=1},type=armor_stand,distance=..0.2] run tag @s add func
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute as @e[tag=tbcArrowP,tag=func,tag=tbcArrowFire,type=armor_stand] at @s run scoreboard players set fire tbcStats 2
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s as @e[scores={tbcSel=1},type=armor_stand] run function glarth:combat/action_ally/util/damage
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s as @e[tag=tbcTurn] run function glarth:combat/action_ally/util/next_stage
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s run function glarth:combat/action_ally/helper/get_target
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s run kill @s
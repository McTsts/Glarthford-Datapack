execute as @e[tag=tbcTNTSel,type=armor_stand,tag=tbcTNTwither] at @s positioned ~ ~1.7 ~ run particle smoke ~ ~ ~ 0.2 0.2 0.2 0.05 5
execute as @e[tag=tbcTNTSel,type=armor_stand] at @s positioned ~ ~1 ~ facing entity @e[tag=tbcTargetAS] feet positioned ~ ~-1 ~ run tp @s ^ ^ ^0.25
execute as @e[tag=tbcTNTSel,type=armor_stand] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=tbcTNTSel,type=armor_stand] at @s positioned ~ ~1 ~ if entity @e[tag=tbcTargetAS,distance=..1.6,type=armor_stand] unless score @s blocking matches 1 unless score @s blocked matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute as @e[tag=tbcTNTSel,type=armor_stand] at @s positioned ~ ~1 ~ if entity @e[tag=tbcTargetAS,distance=..0.2,type=armor_stand] run tag @s add func
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand,tag=tbcTNTwither] at @s run scoreboard players set wither tbcStats 2
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_start
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 1.. run function glarth:combat/action_enemy/util/next_stage
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 1.. as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 1.. as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run function glarth:combat/action_enemy/util/get_target
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run function glarth:combat/action_enemy/util/next_stage
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run kill @s

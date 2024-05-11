execute as @e[tag=tbcTNTSel,type=armor_stand] at @s run particle snowflake ~ ~1 ~ 0 0 0 0.01 1
execute as @e[tag=tbcTNTSel,type=armor_stand] at @s positioned ~ ~1 ~ facing entity @e[tag=tbcTargetAS] feet positioned ~ ~-1 ~ run tp @s ^ ^ ^0.3
execute as @e[tag=tbcTNTSel,type=armor_stand] at @s positioned ~ ~1 ~ if entity @e[tag=tbcTargetAS,distance=..1.9,type=armor_stand] as @e[tag=tbcTarget,limit=1] unless score @s blocking matches 1 unless score @s blocked matches 1 run function glarth:combat/action/blocking_start
execute as @e[tag=tbcTNTSel,type=armor_stand] at @s positioned ~ ~1 ~ if entity @e[tag=tbcTargetAS,distance=..0.2,type=armor_stand] run tag @s add func
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run scoreboard players set slowness tbcStats 2
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run function glarth:combat/action_enemy/util/get_target
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run function glarth:combat/action_enemy/util/next_stage
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run kill @s
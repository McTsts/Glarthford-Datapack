execute as @e[tag=tbcTNTSel,type=armor_stand] at @s positioned ~ ~1 ~ facing entity @e[tag=tbcTargetAS] feet positioned ~ ~-1 ~ run tp @s ^ ^ ^0.3
execute as @e[tag=tbcTNTSel,type=armor_stand] at @s store result score pose Temp run data get entity @s Pose.Head[0] 1
execute as @e[tag=tbcTNTSel,type=armor_stand] at @s store result entity @s Pose.Head[0] float 1 run scoreboard players add pose Temp 15
execute as @e[tag=tbcTNTSel,type=armor_stand] at @s store result score pose Temp run data get entity @s Pose.Head[1] 1
execute as @e[tag=tbcTNTSel,type=armor_stand] at @s store result entity @s Pose.Head[1] float 1 run scoreboard players remove pose Temp 10
execute as @e[tag=tbcTNTSel,type=armor_stand] at @s store result score pose Temp run data get entity @s Pose.Head[2] 1
execute as @e[tag=tbcTNTSel,type=armor_stand] at @s store result entity @s Pose.Head[2] float 1 run scoreboard players add pose Temp 5
execute as @e[tag=tbcTNTSel,type=armor_stand,tag=!tbcBlockFake] at @s positioned ~ ~1 ~ if entity @e[tag=tbcTargetAS,distance=..1.9,type=armor_stand] as @e[tag=tbcTarget,limit=1] unless score @s blocking matches 1 unless score @s blocked matches 1 run function glarth:combat/action/blocking_start
execute as @e[tag=tbcTNTSel,type=armor_stand,tag=tbcBlockFake] at @s positioned ~ ~1 ~ if entity @e[tag=tbcTargetAS,distance=..2.9,type=armor_stand] run particle cloud ~ ~ ~ 0.2 0.2 0. 0.05 10
execute as @e[tag=tbcTNTSel,type=armor_stand,tag=tbcBlockFake] at @s positioned ~ ~1 ~ if entity @e[tag=tbcTargetAS,distance=..2.9,type=armor_stand] run playsound minecraft:entity.item.pickup hostile @a ~ ~ ~ 1 0.7
execute as @e[tag=tbcTNTSel,type=armor_stand,tag=tbcBlockFake] at @s positioned ~ ~1 ~ if entity @e[tag=tbcTargetAS,distance=..2.9,type=armor_stand] as @e[tag=tbcTarget,limit=1] run tag @s add tbcBlockSkip
execute as @e[tag=tbcTNTSel,type=armor_stand,tag=tbcBlockFake] at @s positioned ~ ~1 ~ if entity @e[tag=tbcTargetAS,distance=..2.9,type=armor_stand] run function glarth:combat/action_enemy/util/next_stage
execute as @e[tag=tbcTNTSel,type=armor_stand,tag=tbcBlockFake] at @s positioned ~ ~1 ~ if entity @e[tag=tbcTargetAS,distance=..2.9,type=armor_stand] run kill @s
execute as @e[tag=tbcTNTSel,type=armor_stand] at @s positioned ~ ~1 ~ if entity @e[tag=tbcTargetAS,distance=..0.2,type=armor_stand] run tag @s add func
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run function glarth:combat/action_enemy/util/next_stage
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run kill @s
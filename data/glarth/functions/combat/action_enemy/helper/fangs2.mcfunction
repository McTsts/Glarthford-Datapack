execute as @e[tag=tbcFang,type=armor_stand] at @s run tp @s ^ ^ ^0.38 ~ ~
execute as @e[tag=tbcFang,type=armor_stand] at @s if entity @e[tag=tbcTargetAS,distance=..2.5,type=armor_stand] as @e[tag=tbcTarget,limit=1] unless score @s blocking matches 1 unless score @s blocked matches 1 run function glarth:combat/action/blocking_start
execute as @e[tag=tbcFang,type=armor_stand] at @s at @e[tag=tbcTargetAS,type=armor_stand] positioned ^ ^ ^ if entity @s[distance=..0.2] run tag @s add func
execute as @e[tag=tbcFang,tag=func,type=armor_stand] at @s as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute as @e[tag=tbcFang,tag=func,type=armor_stand] at @s run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute as @e[tag=tbcFang,tag=func,type=armor_stand] at @s as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute as @e[tag=tbcFang,tag=func,type=armor_stand] at @s run function glarth:combat/action_enemy/util/get_target
execute as @e[tag=tbcFang,tag=func,type=armor_stand] at @s run function glarth:combat/action_enemy/util/next_stage
execute as @e[tag=tbcFang,tag=func,type=armor_stand] at @s run kill @s

execute as @e[tag=tbcFang,type=armor_stand] at @s run particle block dirt ~ ~ ~ 0.3 0 0.3 0.1 10
execute as @e[tag=tbcFang,type=armor_stand] at @s run summon minecraft:evoker_fangs ~ ~-0.5 ~

execute as @e[tag=tbcFang,type=armor_stand] run scoreboard players add @s tbcFangs 1
execute as @e[tag=tbcFang,type=armor_stand] if score @s tbcFangs matches 100.. run function glarth:combat/action_enemy/util/get_target
execute as @e[tag=tbcFang,type=armor_stand] if score @s tbcFangs matches 100.. run function glarth:combat/action_enemy/util/next_stage
execute as @e[tag=tbcFang,type=armor_stand] if score @s tbcFangs matches 100.. run kill @s

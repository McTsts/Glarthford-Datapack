execute as @e[tag=tbcTNTSel,type=armor_stand] at @s unless score @s tbcBlockType matches 7 positioned ~ ~1 ~ facing entity @e[tag=tbcTargetAS] feet positioned ~ ~-1 ~ run tp @s ^ ^ ^0.3
execute as @e[tag=tbcTNTSel,type=armor_stand] at @s if score @s tbcBlockType matches 7 positioned ~ ~1 ~ facing entity @e[tag=tbcTargetAS] feet positioned ~ ~-1 ~ run tp @s ^ ^ ^0.4
execute as @e[tag=tbcTNTSel,type=armor_stand] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=tbcTNTSel,type=armor_stand] at @s positioned ~ ~1 ~ if entity @e[tag=tbcTargetAS,distance=..1.9,type=armor_stand] as @e[tag=tbcTarget,limit=1] unless score @s blocking matches 1 unless score @s blocked matches 1 run function glarth:combat/action/blocking_start
execute as @e[tag=tbcTNTSel,type=armor_stand] at @s positioned ~ ~1 ~ if entity @e[tag=tbcTargetAS,distance=..0.2,type=armor_stand] run tag @s add func
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run scoreboard players set fire tbcStats 0
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run scoreboard players set poison tbcStats 0
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run scoreboard players set pumpkin tbcStats 0
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s if score @s tbcBlockType matches 1 run scoreboard players add damage tbcStats 10
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s if score @s tbcBlockType matches 3 run scoreboard players set poison tbcStats 2
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s if score @s tbcBlockType matches 4 run scoreboard players set fire tbcStats 2
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s if score @s tbcBlockType matches 5 run scoreboard players set pumpkin tbcStats 3
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s if score @s tbcBlockType matches 7 run scoreboard players remove damage tbcStats 10

execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s unless score @s tbcBlockType matches 6 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s unless score @s tbcBlockType matches 6 run function glarth:combat/action_enemy/util/next_stage

execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s if score @s tbcBlockType matches 6 if score @e[tag=tbcTarget,limit=1] blocked matches 0 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_start
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s if score @s tbcBlockType matches 6 if score @e[tag=tbcTarget,limit=1] blocked matches 1.. run function glarth:combat/action_enemy/util/next_stage
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s if score @s tbcBlockType matches 6 if score @e[tag=tbcTarget,limit=1] blocked matches 1.. as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s if score @s tbcBlockType matches 6 if score @e[tag=tbcTarget,limit=1] blocked matches 1.. as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_end

execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run function glarth:combat/action_enemy/util/get_target
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run function glarth:combat/action_enemy/util/next_stage
execute as @e[tag=tbcTNTSel,tag=func,type=armor_stand] at @s run kill @s
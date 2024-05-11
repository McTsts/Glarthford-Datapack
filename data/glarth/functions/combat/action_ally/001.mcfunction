execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run scoreboard players set @s attack_001 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run scoreboard players set @s attack_002 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run scoreboard players set tbcUnlocked Stats 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 30 run function glarth:dialogue/miner_chief/lines/tbc1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 130 run function glarth:dialogue/miner_chief/lines/tbc2
execute if score @s tbcAttackStage matches 0 unless entity @a[tag=tbcTutNoWeapon] if score @s tbcAttackTimer matches 130 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 300 run function glarth:dialogue/miner_chief/lines/tbc3
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 300 run tellraw @a ""
execute if score @s tbcAttackStage matches 0 if entity @a[tag=tbcTutNoWeapon] if score @s tbcAttackTimer matches 350 run function glarth:combat/action_ally/util/next_stage
execute if score @s tbcAttackStage matches 0 unless entity @a[tag=tbcTutNoWeapon] if score @s tbcAttackTimer matches 180 run function glarth:combat/action_ally/util/next_stage



execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,distance=..0.3,type=area_effect_cloud] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 2 facing entity @e[scores={tbcSel=1},type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 2 if entity @e[scores={tbcSel=1},distance=..1.4,type=armor_stand] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run scoreboard players set damage tbcStats 20
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run scoreboard players operation damage tbcStats -= @e[scores={tbcSel=1}] tbcArmor
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 as @e[scores={tbcSel=1},type=armor_stand] run function glarth:combat/action_enemy/dodge
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 as @e[scores={tbcSel=1},type=armor_stand] run function glarth:combat/action_ally/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 4 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcMarkerMiddle,distance=..0.1,type=area_effect_cloud] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcMarkerAlly,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcMarkerAlly,distance=..0.1,type=area_effect_cloud] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 2 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 10 run tag @a remove tbcTutNoWeapon
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_ally/util/done
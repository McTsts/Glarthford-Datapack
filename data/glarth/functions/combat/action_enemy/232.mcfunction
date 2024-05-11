execute if score @s tbcAttackStage matches 0..1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 1 run tag @s add tbcNoAnim
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 1 run function glarth:mechanic/char/blink/end
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 01 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=1]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 02 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=2]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 03 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=3]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 04 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=4]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 05 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=5]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 06 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=6]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 07 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=7]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 08 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=8]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 09 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=9]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 10 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=10]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 11 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=11]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 12 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=12]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 13 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=13]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 14 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=14]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 15 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=15]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 16 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=16]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 17 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=17]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 18 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=18]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 19 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=19]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 20 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=20]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 21 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=21]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 22 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=22]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 23 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=23]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 24 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=24]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 25 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=25]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 26 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=26]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 27 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=27]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 28 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=28]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 29 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=29]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 30 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=30]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 31 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=31]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 32.. run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run scoreboard players set @s tbcAttackStage 1

execute if score @s tbcAttackStage matches 2 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 2 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.25] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run data merge entity @s {Motion:[0.0d,0.35d,0.0d],NoGravity:0}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run data merge entity @e[tag=tbcTargetAS,limit=1] {Motion:[0.0d,0.65d,0.0d],NoGravity:0}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 20 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 26 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 26 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 26 run scoreboard players operation damage tbcStats *= 2 Const
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 26 run scoreboard players set damageType tbcStats 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 26 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 18..32 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.15 ~ ~
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 32 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2] facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2] run scoreboard players set @s tbcAttackStage 6

execute if score @s tbcAttackStage matches 5..6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 01 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=31]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 02 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=30]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 03 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=29]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 04 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=28]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 05 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=27]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 06 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=26]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 07 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=25]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 08 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=24]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 09 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=23]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 10 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=22]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 11 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=21]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 12 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=20]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 13 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=19]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 14 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=18]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 15 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=17]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 16 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=16]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 17 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=15]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 18 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=14]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 19 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=13]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 20 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=12]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 21 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=11]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 22 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=10]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 23 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=9]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 24 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=8]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 25 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=7]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 26 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=6]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 27 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=5]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 28 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=4]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 29 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=3]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 30 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=2]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 31 run item replace entity @s armor.head with minecraft:netherite_axe[custom_model_data=1]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 32 run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=524]
execute if score @s tbcAttackStage matches 5..6 if score @s tbcAttackTimer matches 35 run tag @s remove tbcNoAnim
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 35.. run function glarth:combat/action_enemy/util/done
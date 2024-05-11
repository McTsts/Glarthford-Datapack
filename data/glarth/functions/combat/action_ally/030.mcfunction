execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run function glarth:combat/action_ally/helper/store_target
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_ally/util/next_stage


execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.5 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,distance=..2.5,type=area_effect_cloud] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run setblock 318 34 -21 minecraft:dispenser
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_ally/util/next_stage


execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_ally/helper/summon_fireball
execute if score @s tbcAttackStage matches 4 run tp @e[tag=tbcArrowPN,type=armor_stand] 318.0 34 -22 facing entity @e[scores={tbcSel=1},type=armor_stand,limit=1,sort=nearest]
execute if score @s tbcAttackStage matches 4 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_ally/helper/summon_fireball
execute if score @s tbcAttackStage matches 6 run tp @e[tag=tbcArrowPN,type=armor_stand] 318.0 34 -22 facing entity @e[scores={tbcSel=1},type=armor_stand,limit=1,sort=nearest]
execute if score @s tbcAttackStage matches 6 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 8 run function glarth:combat/action_ally/helper/summon_fireball
execute if score @s tbcAttackStage matches 8 run tp @e[tag=tbcArrowPN,type=armor_stand] 318.0 34 -22 facing entity @e[scores={tbcSel=1},type=armor_stand,limit=1,sort=nearest]
execute if score @s tbcAttackStage matches 8 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 8 run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 10 run function glarth:combat/action_ally/helper/summon_fireball
execute if score @s tbcAttackStage matches 10 run tp @e[tag=tbcArrowPN,type=armor_stand] 318.0 34 -22 facing entity @e[scores={tbcSel=1},type=armor_stand,limit=1,sort=nearest]
execute if score @s tbcAttackStage matches 10 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 10 run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 12 run function glarth:combat/action_ally/helper/summon_fireball
execute if score @s tbcAttackStage matches 12 run tp @e[tag=tbcArrowPN,type=armor_stand] 318.0 34 -22 facing entity @e[scores={tbcSel=1},type=armor_stand,limit=1,sort=nearest]
execute if score @s tbcAttackStage matches 12 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 12 run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 3..13 run function glarth:combat/action_ally/helper/fireball


execute if score @s tbcAttackStage matches 14 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 1 run setblock 318 34 -21 minecraft:air destroy
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 1 run function glarth:combat/action_ally/helper/load_target
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_ally/util/next_stage


execute if score @s tbcAttackStage matches 15 run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 16 facing entity @e[tag=tbcSelMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.5 ~ ~
execute if score @s tbcAttackStage matches 16 if entity @e[tag=tbcSelMarker,distance=..0.3,type=area_effect_cloud] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 17 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 2 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_ally/util/done
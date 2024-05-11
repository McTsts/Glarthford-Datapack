execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 as @e[tag=charQA,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=273]
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_ally/helper/store_target
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_ally/helper/get_target
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_ally/util/next_stage


execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,distance=..0.3,type=area_effect_cloud] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 run tp @s ~ ~ ~ facing entity @e[scores={tbcSel=1},type=armor_stand,limit=1,sort=nearest]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_ally/util/next_stage


execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_ally/helper/summon_arrow
execute if score @s tbcAttackStage matches 3 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[scores={tbcSel=1},type=armor_stand,limit=1,sort=nearest]
execute if score @s tbcAttackStage matches 3 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_ally/helper/summon_arrow
execute if score @s tbcAttackStage matches 5 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[scores={tbcSel=1},type=armor_stand,limit=1,sort=nearest]
execute if score @s tbcAttackStage matches 5 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_ally/helper/summon_arrow
execute if score @s tbcAttackStage matches 7 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[scores={tbcSel=1},type=armor_stand,limit=1,sort=nearest]
execute if score @s tbcAttackStage matches 7 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_ally/util/next_stage


execute if score @s tbcAttackStage matches 3..9 run function glarth:combat/action_ally/helper/arrow


execute if score @s tbcAttackStage matches 9 facing entity @e[tag=tbcSelMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 9 if entity @e[tag=tbcSelMarker,distance=..0.2,type=area_effect_cloud] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 10 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 3 as @e[tag=charQA,limit=1,sort=nearest] run item replace entity @s armor.head with air
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_ally/helper/load_target
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_ally/util/done
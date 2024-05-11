execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run function glarth:combat/action_ally/helper/store_target
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run function glarth:combat/action_ally/helper/get_target
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_ally/util/next_stage


execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,distance=..3.0,type=area_effect_cloud] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 rotated ~ 0 positioned ^ ^ ^1.5 run function ench:table/place
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 run tag @e[tag=etMain] add faceJerozgen
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 run tag @e[tag=etMain] add forceOpen
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run kill @e[tag=et]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1..50 run function ench:main
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20..40 at @e[tag=etMain] run function glarth:combat/action_ally/helper/ray
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 40 run scoreboard players set damage tbcStats 30
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 40 as @e[scores={tbcSel=1},type=armor_stand] run function glarth:combat/action_ally/util/damage
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 40 if score dodged tbcStats matches 0 run scoreboard players add @s tbcHealth 3
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 40 if score dodged tbcStats matches 0 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.heal_enemy_self","with":[{"text":"3.±","color":"red"}]}]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 3 facing entity @e[tag=tbcSelMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 3 if entity @e[tag=tbcSelMarker,distance=..0.3,type=area_effect_cloud] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 2 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 2 run function glarth:combat/action_ally/helper/load_target
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_ally/util/done
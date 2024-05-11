execute if score @s tbcAttackStage matches 0 run item replace entity @s armor.head with diamond_hoe{CustomModelData:345}
execute if score @s tbcAttackStage matches 0 run playsound minecraft:entity.chicken.ambient neutral @a ~ ~ ~ 1 1.5
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run item replace entity @s armor.head with diamond_hoe{CustomModelData:344}
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 6..25 run tp @s ~ ~ ~ ~9 ~
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 30 run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 30 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 30 run scoreboard players operation n Random += n Random
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 30 run scoreboard players remove n Random 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 30 run scoreboard players operation @s tbcAttackStage += n Random

execute if score @s tbcAttackStage matches 4 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/helper/summon_egg
execute if score @s tbcAttackStage matches 4 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 4 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 6 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/helper/summon_egg
execute if score @s tbcAttackStage matches 6 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 6 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 8 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 8 run function glarth:combat/action_enemy/helper/summon_egg
execute if score @s tbcAttackStage matches 8 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 8 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 8 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 10 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage
execute if score @s tbcAttackStage matches 4..10 run function glarth:combat/action_enemy/helper/arrow_egg

execute if score @s tbcAttackStage matches 11 run item replace entity @s armor.head with diamond_hoe{CustomModelData:345}
execute if score @s tbcAttackStage matches 11 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 12 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 12 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 13 run item replace entity @s armor.head with diamond_hoe{CustomModelData:344}
execute if score @s tbcAttackStage matches 13 run playsound minecraft:entity.chicken.ambient neutral @a ~ ~ ~ 1 1.5
execute if score @s tbcAttackStage matches 13 run function glarth:combat/action_enemy/util/done

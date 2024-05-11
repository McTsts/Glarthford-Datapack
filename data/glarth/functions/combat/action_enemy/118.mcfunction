execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 10 run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 10 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 10 run scoreboard players operation n Random += n Random
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 10 run scoreboard players remove n Random 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 10 run scoreboard players operation @s tbcAttackStage += n Random

execute if score @s tbcAttackStage matches 2 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/helper/summon_fireball_ghast
execute if score @s tbcAttackStage matches 2 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with minecraft:diamond_hoe[custom_model_data=361]
execute if score @s tbcAttackStage matches 2 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 2 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with minecraft:diamond_hoe[custom_model_data=264]

execute if score @s tbcAttackStage matches 4 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/helper/summon_fireball_ghast
execute if score @s tbcAttackStage matches 4 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with minecraft:diamond_hoe[custom_model_data=361]
execute if score @s tbcAttackStage matches 4 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 4 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 10 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with minecraft:diamond_hoe[custom_model_data=264]

execute if score @s tbcAttackStage matches 6 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/helper/summon_fireball_ghast
execute if score @s tbcAttackStage matches 6 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with minecraft:diamond_hoe[custom_model_data=361]
execute if score @s tbcAttackStage matches 6 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 6 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 10 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with minecraft:diamond_hoe[custom_model_data=264]

execute if score @s tbcAttackStage matches 8 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 8 run function glarth:combat/action_enemy/helper/summon_fireball_ghast
execute if score @s tbcAttackStage matches 8 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with minecraft:diamond_hoe[custom_model_data=361]
execute if score @s tbcAttackStage matches 8 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 8 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 8 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 10 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with minecraft:diamond_hoe[custom_model_data=264]

execute if score @s tbcAttackStage matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 10 run function glarth:combat/action_enemy/helper/summon_fireball_ghast
execute if score @s tbcAttackStage matches 10 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with minecraft:diamond_hoe[custom_model_data=361]
execute if score @s tbcAttackStage matches 10 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 10 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 11 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 10 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with minecraft:diamond_hoe[custom_model_data=264]

execute if score @s tbcAttackStage matches 12 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage
execute if score @s tbcAttackStage matches 2..12 run function glarth:combat/action_enemy/helper/fireball_ghast2

execute if score @s tbcAttackStage matches 13 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 13 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done

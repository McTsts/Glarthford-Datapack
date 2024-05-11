execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 1 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=26]
execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 2 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=273]
execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 3 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=27]
execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcStrength 30
execute if score @s tbcAttackStage matches 0 if score evilAttackData Temp matches 2..3 run scoreboard players add @s tbcStrength 30
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run scoreboard players set arrows Temp 10
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run scoreboard players operation arrows Temp -= evilAttackCount Temp
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run scoreboard players operation arrows Temp > 0 Const
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run scoreboard players operation arrows Temp *= 2 Const
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run scoreboard players add arrows Temp 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run scoreboard players operation @s tbcAttackStage += arrows Temp

execute if score @s tbcAttackStage matches 3 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 3 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 3 if score evilAttackData Temp matches 3 run tag @e[tag=tbcArrowPN,type=armor_stand] add tbcArrowFire
execute if score @s tbcAttackStage matches 3 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 5 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 5 if score evilAttackData Temp matches 3 run tag @e[tag=tbcArrowPN,type=armor_stand] add tbcArrowFire
execute if score @s tbcAttackStage matches 5 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 7 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 7 if score evilAttackData Temp matches 3 run tag @e[tag=tbcArrowPN,type=armor_stand] add tbcArrowFire
execute if score @s tbcAttackStage matches 7 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 9 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 9 run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 9 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 9 if score evilAttackData Temp matches 3 run tag @e[tag=tbcArrowPN,type=armor_stand] add tbcArrowFire
execute if score @s tbcAttackStage matches 9 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 9 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 11 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 11 run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 11 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 11 if score evilAttackData Temp matches 3 run tag @e[tag=tbcArrowPN,type=armor_stand] add tbcArrowFire
execute if score @s tbcAttackStage matches 11 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 11 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 13 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 13 run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 13 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 13 if score evilAttackData Temp matches 3 run tag @e[tag=tbcArrowPN,type=armor_stand] add tbcArrowFire
execute if score @s tbcAttackStage matches 13 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 13 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 15 run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 15 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 15 if score evilAttackData Temp matches 3 run tag @e[tag=tbcArrowPN,type=armor_stand] add tbcArrowFire
execute if score @s tbcAttackStage matches 15 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 15 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 17 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 17 run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 17 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 17 if score evilAttackData Temp matches 3 run tag @e[tag=tbcArrowPN,type=armor_stand] add tbcArrowFire
execute if score @s tbcAttackStage matches 17 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 17 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 19 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 19 run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 19 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 19 if score evilAttackData Temp matches 3 run tag @e[tag=tbcArrowPN,type=armor_stand] add tbcArrowFire
execute if score @s tbcAttackStage matches 19 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 19 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 21 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 21 run function glarth:combat/action_enemy/helper/summon_arrow
execute if score @s tbcAttackStage matches 21 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 21 if score evilAttackData Temp matches 3 run tag @e[tag=tbcArrowPN,type=armor_stand] add tbcArrowFire
execute if score @s tbcAttackStage matches 21 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 21 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 23 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 23 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage
execute if score @s tbcAttackStage matches 3..23 run function glarth:combat/action_enemy/helper/arrow

execute if score @s tbcAttackStage matches 24 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 24 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 25 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with air
execute if score @s tbcAttackStage matches 25 run scoreboard players remove @s tbcStrength 30
execute if score @s tbcAttackStage matches 25 if score evilAttackData Temp matches 2..3 run scoreboard players remove @s tbcStrength 30
execute if score @s tbcAttackStage matches 25 run function glarth:combat/action_enemy/util/done

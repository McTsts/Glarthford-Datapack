# Ender Fireball
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/helper/summon_fireball_ender
execute if score @s tbcAttackStage matches 0 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 0 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/helper/fireball_ender2
execute if score @s tbcAttackStage matches 1 if entity @s[tag=tbcReady] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/helper/summon_fireball_ender
execute if score @s tbcAttackStage matches 3 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 3 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/helper/fireball_ender2
execute if score @s tbcAttackStage matches 4 if entity @s[tag=tbcReady] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 6 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/helper/summon_fireball_ender
execute if score @s tbcAttackStage matches 6 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 6 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_enemy/helper/fireball_ender2
execute if score @s tbcAttackStage matches 7 if entity @s[tag=tbcReady] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 8 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 9 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 9 run function glarth:combat/action_enemy/helper/summon_fireball_ender
execute if score @s tbcAttackStage matches 9 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 9 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 9 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 10 run function glarth:combat/action_enemy/helper/fireball_ender2
execute if score @s tbcAttackStage matches 10 if entity @s[tag=tbcReady] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 11 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 12 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 12 run function glarth:combat/action_enemy/helper/summon_fireball_ender
execute if score @s tbcAttackStage matches 12 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 12 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 12 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 13 run function glarth:combat/action_enemy/helper/fireball_ender2
execute if score @s tbcAttackStage matches 13 if entity @s[tag=tbcReady] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 14 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/done
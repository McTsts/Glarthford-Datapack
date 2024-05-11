execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with diamond_hoe{CustomModelData:361}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 1 run scoreboard players set ghastTemp tbcStats 50
execute if score @s tbcAttackStage matches 1 run scoreboard players operation ghastTemp tbcStats -= @s tbcBar
execute if score @s tbcAttackStage matches 1 run scoreboard players operation ghastTemp tbcStats /= 5 Const
execute if score @s tbcAttackStage matches 1 run scoreboard players set ghastBallSpeed tbcStats -4
execute if score @s tbcAttackStage matches 1 run scoreboard players operation ghastBallSpeed tbcStats += ghastTemp tbcStats
execute if score @s tbcAttackStage matches 1 run scoreboard players operation ghastBallSpeed tbcStats > 1 Const
execute if score @s tbcAttackStage matches 1 run scoreboard players set ghastBallBlock tbcStats 0
execute if score @s tbcAttackStage matches 1 run scoreboard players operation ghastBallMax tbcStats = @s tbcCharge
execute if score @s tbcAttackStage matches 1 run scoreboard players operation ghastBallBlock tbcStats += ghastTemp tbcStats
execute if score @s tbcAttackStage matches 1 run scoreboard players operation ghastBallBlock tbcStats += ghastTemp tbcStats
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/helper/summon_fireball_ghast
execute if score @s tbcAttackStage matches 1 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 1 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/done

execute if score @s tbcAttackStage matches 1..2 run function glarth:combat/action_enemy/helper/fireball_ghast
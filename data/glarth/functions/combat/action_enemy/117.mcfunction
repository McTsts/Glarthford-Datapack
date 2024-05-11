execute if score @s tbcAttackStage matches 0..1 run scoreboard players add @s tbcAttackTimerX 1
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimerX matches 2 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimerX matches 5..34 at @s run tp @s ~ ~0.1 ~
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimerX matches 5..34 as @e[tag=tbcGhastDis] at @s run tp @s ~ ~0.1 ~
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimerX matches 35 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with diamond_hoe{CustomModelData:361}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimerX matches 35 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimerX matches 35 run function glarth:combat/action_enemy/helper/summon_fireball_ghast 
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimerX matches 35 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimerX matches 35 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimerX matches 55 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with diamond_hoe{CustomModelData:264}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimerX matches 40..79 at @s run tp @s ~ ~0.1 ~
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimerX matches 40..79 as @e[tag=tbcGhastDis] at @s run tp @s ~ ~0.1 ~
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimerX matches 90 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players set @s tbcAttackTimerX 0
execute if score @s tbcAttackStage matches 2 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with diamond_hoe{CustomModelData:361}
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/helper/summon_fireball_ghast 
execute if score @s tbcAttackStage matches 2 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 2 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 20 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with diamond_hoe{CustomModelData:264}

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 2 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 5..74 at @s run tp @s ~ ~-0.1 ~
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 5..74 as @e[tag=tbcGhastDis] at @s run tp @s ~ ~-0.1 ~
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 80 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with diamond_hoe{CustomModelData:361}
execute if score @s tbcAttackStage matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/helper/summon_fireball_ghast 
execute if score @s tbcAttackStage matches 5 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 5 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 20 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with diamond_hoe{CustomModelData:264}

execute if score @s tbcAttackStage matches 7 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/done

execute if score @s tbcAttackStage matches 0..6 run function glarth:combat/action_enemy/helper/fireball_ghast2
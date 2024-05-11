execute as @e[tag=lava_dragon4,type=armor_stand] at @s run function glarth:mechanic/animation/lava_dragon/main
execute unless score @s tbcAttackStage matches 2..3 run particle minecraft:lava 319 28 -51 1 0 1 0 1

execute if score @s tbcAttackStage matches 0 positioned ~ ~-10 ~ run function glarth:mechanic/animation/lava_dragon/s4
execute if score @s tbcAttackStage matches 0 run clone 322 22 -48 316 22 -54 316 28 -54
execute if score @s tbcAttackStage matches 0 run particle minecraft:lava 319 28 -51 1 0 1 0 50
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 15
execute if score @s tbcAttackStage matches 2 run scoreboard players operation @e[tag=lava_dragonQ3] lavaDragonAngle = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 run tag @e[tag=lava_dragonP] add ldNoParticle
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 100.. as @e[tag=lava_dragonQ3] at @s positioned ^ ^1 ^-0.6 run particle flame ~ ~ ~ 0.0 0.0 0.0 0 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 175.. as @e[tag=lava_dragonQ3] at @s positioned ^ ^1 ^-0.6 run particle flame ~ ~ ~ 0.05 0.05 0.05 0 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 250.. as @e[tag=lava_dragonQ3] at @s positioned ^ ^1 ^-0.6 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.05 3
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 290.. as @e[tag=lava_dragonQ3] at @s positioned ^ ^1 ^-0.6 run particle flame ~ ~ ~ 0.15 0.15 0.15 0.075 5
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 300.. run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1.. as @e[tag=lava_dragonQ3] at @s positioned ^ ^1 ^-0.6 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1] feet positioned ^ ^ ^0.00 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 2.. as @e[tag=lava_dragonQ3] at @s positioned ^ ^1 ^-0.6 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1] feet positioned ^ ^ ^0.33 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 3.. as @e[tag=lava_dragonQ3] at @s positioned ^ ^1 ^-0.6 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1] feet positioned ^ ^ ^0.66 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 4.. as @e[tag=lava_dragonQ3] at @s positioned ^ ^1 ^-0.6 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1] feet positioned ^ ^ ^1.00 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5.. as @e[tag=lava_dragonQ3] at @s positioned ^ ^1 ^-0.6 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1] feet positioned ^ ^ ^1.33 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 6.. as @e[tag=lava_dragonQ3] at @s positioned ^ ^1 ^-0.6 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1] feet positioned ^ ^ ^1.66 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 7.. as @e[tag=lava_dragonQ3] at @s positioned ^ ^1 ^-0.6 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1] feet positioned ^ ^ ^2.00 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 8.. as @e[tag=lava_dragonQ3] at @s positioned ^ ^1 ^-0.6 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1] feet positioned ^ ^ ^2.33 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 9.. as @e[tag=lava_dragonQ3] at @s positioned ^ ^1 ^-0.6 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1] feet positioned ^ ^ ^2.66 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10.. as @e[tag=lava_dragonQ3] at @s positioned ^ ^1 ^-0.6 facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1] feet positioned ^ ^ ^3.00 run particle flame ~ ~ ~ 0.1 0.1 0.1 0.01 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11.. at @e[tag=tbcTargetAS,type=armor_stand,limit=1] run particle flame ~ ~ ~ 0.3 0.3 0.3 0.04 5
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 12.. at @e[tag=tbcTargetAS,type=armor_stand,limit=1] run particle flame ~ ~ ~ 0.6 0.6 0.6 0.08 5
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 13.. at @e[tag=tbcTargetAS,type=armor_stand,limit=1] run particle flame ~ ~ ~ 0.6 0.6 0.6 0.16 5
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 run scoreboard players set fire tbcStats 5
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 run scoreboard players operation damage tbcStats *= 3 Const
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 run scoreboard players operation damage tbcStats /= 2 Const
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 15.. run tag @e[tag=lava_dragonQ3,type=armor_stand] add ldAngle
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 15.. run tag @e[tag=lava_dragon,type=armor_stand] add ldMouth
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 15.. run scoreboard players set @e[tag=lava_dragonQ3] lavaDragonAngle 0
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 15.. run scoreboard players set @e[tag=lava_dragon,type=armor_stand] lavaDragonAnim 6
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 15.. run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 20 run tag @e[tag=lava_dragonP] remove ldNoParticle
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 60.. run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/helper/summon_fireball
execute if score @s tbcAttackStage matches 5 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 5 run tp @e[tag=tbcArrowPN,type=armor_stand] ~ ~ ~ ~-90 ~
execute if score @s tbcAttackStage matches 5 run tag @e[tag=tbcArrowPN,type=armor_stand] add tbcArrowFire
execute if score @s tbcAttackStage matches 5 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 30.. run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 8 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 8 run function glarth:combat/action_enemy/helper/summon_fireball
execute if score @s tbcAttackStage matches 8 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 8 run tp @e[tag=tbcArrowPN,type=armor_stand] ~ ~ ~ ~-90 ~
execute if score @s tbcAttackStage matches 8 run tag @e[tag=tbcArrowPN,type=armor_stand] add tbcArrowFire
execute if score @s tbcAttackStage matches 8 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 8 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5..9 run function glarth:combat/action_enemy/helper/fireball

execute if score @s tbcAttackStage matches 11 run kill @e[tag=lava_dragonP]
execute if score @s tbcAttackStage matches 11 run clone 322 24 -48 316 24 -54 316 28 -54
execute if score @s tbcAttackStage matches 11 run particle minecraft:smoke 319 29 -51 1 0 1 0 150
execute if score @s tbcAttackStage matches 11 run function glarth:combat/action_enemy/util/done
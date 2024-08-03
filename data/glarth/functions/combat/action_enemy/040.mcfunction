# 0 - Select X
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/stages/generic/select_x

# 1 - To Center (X and Not X)
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/speed {speed:"slow",function:"stages/generic/multi/to_x",args:{}}

execute if score @s tbcAttackStage matches 1 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/util/speed {speed:"slow",function:"stages/generic/multi/to_notx",args:{}}

# 2 - To Target (+ Align)
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/stages/generic/multi/to_target {speed:0.2,next_range:2}

execute if score @s tbcAttackStage matches 2 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/stages/generic/multi/align


# 3 - Main Attack
## Flashing & Sound
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches ..2 run scoreboard players set @s tbcAttackTimer 2
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 2 as @e[scores={tbcID=2}] run function glarth:combat/action_enemy/stages/flash/white
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 3 as @e[scores={tbcID=2}] at @s run playsound minecraft:entity.creeper.hurt hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 6 as @e[scores={tbcID=2}] at @s run playsound minecraft:entity.creeper.primed hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 6 as @e[scores={tbcID=2}] run function glarth:combat/action_enemy/stages/flash/normal
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 8 as @e[scores={tbcID=2}] run function glarth:combat/action_enemy/stages/flash/white
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10 as @e[scores={tbcID=2}] run function glarth:combat/action_enemy/stages/flash/normal

## Exclaim Behaivor
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTargetAS,type=armor_stand] at @s run summon minecraft:armor_stand ~ ~ ~ {Invisible:1,Marker:1,NoGravity:1,CustomNameVisible:1,CustomName:'{"text":"! ! !","color":"red"}',Tags:["tbc","tbcExclaim"]}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 3..21 as @e[tag=tbcExclaim] at @s run tp @s ~ ~0.1 ~
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 22 run kill @e[tag=tbcExclaim]

## Main Swipe Attack
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/stages/swipe/attack_multi {speed:0.06,block_end:25,post_block:26,next_stage:32}

## Additional Target Behaivor
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 3..11 as @e[tag=tbcTargetAS,type=armor_stand] at @s run tp @s ^ ^ ^-0.125

## Custom Block Starter (we skip the builtin one by starting with timer set to 2)
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start

## Second Enemy
execute if score @s tbcAttackStage matches 3 as @e[scores={tbcID=2}] run function glarth:combat/action_enemy/util/ready


# 4 - Retreat to Center
execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/util/speed {speed:"slow",function:"stages/generic/multi/to_x",args:{}}

execute if score @s tbcAttackStage matches 4 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/util/speed {speed:"slow",function:"stages/generic/multi/to_notx",args:{}}

# 5 - To Home
execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/util/speed {speed:"slow",function:"stages/generic/multi/to_home",args:{}}

execute if score @s tbcAttackStage matches 5 as @e[scores={tbcID=2}] at @s run function glarth:combat/action_enemy/util/speed {speed:"slow",function:"stages/generic/multi/to_homeid",args:{id:2}}

# 6 - Done
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/util/done
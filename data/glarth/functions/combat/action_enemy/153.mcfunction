execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 as @e[tag=tbcEnemy,tag=!tbcMiniBoss] run function glarth:combat/die_enemy
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage

# Prepare Attack
execute if score @s tbcAttackStage matches 1 run tag @e[tag=tbcMarkerMiddleB] add rand_sel
execute if score @s tbcAttackStage matches 1 run function glarth:util/rand_sel/1
execute if score @s tbcAttackStage matches 1 run tag @e[tag=rand_sel_result,limit=1] add tbcMarkerMiddleX
execute if score @s tbcAttackStage matches 1 run tag @e[tag=tbcMarkerMiddleB,tag=!tbcMarkerMiddleX,type=area_effect_cloud] add tbcMarkerMiddleY
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

# MouseA 1 Spawn
execute if score @s tbcAttackStage matches 2 at @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] positioned ~ ~2 ~ run function glarth:combat/action_enemy/helper/summon_crow
execute if score @s tbcAttackStage matches 2 at @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] run tag @e[tag=tbcMouseN] add tbcMouseA1
execute if score @s tbcAttackStage matches 2 at @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] run tag @e[tag=tbcMouseN] remove tbcMouseN
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/util/next_stage

# MouseA1 Target + MouseB1 Spawn
execute if score @s tbcAttackStage matches 3 as @e[tag=tbcMouseA1] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ ~ run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 3 as @e[tag=tbcMouseA1] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] at @e[tag=tbcMarkerMiddleY] positioned ~ ~2 ~ run function glarth:combat/action_enemy/helper/summon_crow
execute if score @s tbcAttackStage matches 3 as @e[tag=tbcMouseA1] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] at @e[tag=tbcMarkerMiddleY] run tag @e[tag=tbcMouseN] add tbcMouseB1
execute if score @s tbcAttackStage matches 3 as @e[tag=tbcMouseA1] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] at @e[tag=tbcMarkerMiddleY] run tag @e[tag=tbcMouseN] remove tbcMouseN
execute if score @s tbcAttackStage matches 3 as @e[tag=tbcMouseA1] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] run function glarth:combat/action_enemy/util/next_stage

# MouseA1 Attack + MouseB1 Target + MouseA2 Spawn
execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 0..15 as @e[tag=tbcMouseA1] at @s rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 16 as @e[tag=tbcMouseA1] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 16 run scoreboard players set damage tbcStats 10
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 16 run kill @e[tag=tbcMouseA1]
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcMouseB1] at @s unless entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ ~ run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcMouseB1] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. at @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] positioned ~ ~2 ~ run function glarth:combat/action_enemy/helper/summon_crow
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcMouseB1] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. at @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] run tag @e[tag=tbcMouseN] add tbcMouseA2
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcMouseB1] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. at @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] run tag @e[tag=tbcMouseN] remove tbcMouseN
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcMouseB1] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. run function glarth:combat/action_enemy/util/next_stage

# MouseB1 Attack + MouseA2 Target + MouseB2 Spawn
execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 0..15 as @e[tag=tbcMouseB1] at @s rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 16 as @e[tag=tbcMouseB1] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 16 run scoreboard players set damage tbcStats 10
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 16 run kill @e[tag=tbcMouseB1]
execute if score @s tbcAttackStage matches 5 as @e[tag=tbcMouseA2] at @s unless entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ ~ run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 as @e[tag=tbcMouseA2] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. at @e[tag=tbcMarkerMiddleY] positioned ~ ~2 ~ run function glarth:combat/action_enemy/helper/summon_crow
execute if score @s tbcAttackStage matches 5 as @e[tag=tbcMouseA2] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. at @e[tag=tbcMarkerMiddleY] run tag @e[tag=tbcMouseN] add tbcMouseB2
execute if score @s tbcAttackStage matches 5 as @e[tag=tbcMouseA2] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. at @e[tag=tbcMarkerMiddleY] run tag @e[tag=tbcMouseN] remove tbcMouseN
execute if score @s tbcAttackStage matches 5 as @e[tag=tbcMouseA2] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. run function glarth:combat/action_enemy/util/next_stage

# MouseA2 Attack + MouseB2 Target + MouseA3 Spawn
execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 0..15 as @e[tag=tbcMouseA2] at @s rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 16 as @e[tag=tbcMouseA2] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 16 run scoreboard players set damage tbcStats 10
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 16 run kill @e[tag=tbcMouseA2]
execute if score @s tbcAttackStage matches 6 as @e[tag=tbcMouseB2] at @s unless entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ ~ run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 6 as @e[tag=tbcMouseB2] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. at @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] positioned ~ ~2 ~ run function glarth:combat/action_enemy/helper/summon_crow
execute if score @s tbcAttackStage matches 6 as @e[tag=tbcMouseB2] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. at @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] run tag @e[tag=tbcMouseN] add tbcMouseA3
execute if score @s tbcAttackStage matches 6 as @e[tag=tbcMouseB2] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. at @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] run tag @e[tag=tbcMouseN] remove tbcMouseN
execute if score @s tbcAttackStage matches 6 as @e[tag=tbcMouseB2] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. run function glarth:combat/action_enemy/util/next_stage

# MouseB2 Attack + MouseA3 Target + MouseB3 Spawn
execute if score @s tbcAttackStage matches 7 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 0..15 as @e[tag=tbcMouseB2] at @s rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 16 as @e[tag=tbcMouseB2] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 16 run scoreboard players set damage tbcStats 10
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 16 run kill @e[tag=tbcMouseB2]
execute if score @s tbcAttackStage matches 7 as @e[tag=tbcMouseA3] at @s unless entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ ~ run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 7 as @e[tag=tbcMouseA3] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. at @e[tag=tbcMarkerMiddleY] positioned ~ ~2 ~ run function glarth:combat/action_enemy/helper/summon_crow
execute if score @s tbcAttackStage matches 7 as @e[tag=tbcMouseA3] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. at @e[tag=tbcMarkerMiddleY] run tag @e[tag=tbcMouseN] add tbcMouseB3
execute if score @s tbcAttackStage matches 7 as @e[tag=tbcMouseA3] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. at @e[tag=tbcMarkerMiddleY] run tag @e[tag=tbcMouseN] remove tbcMouseN
execute if score @s tbcAttackStage matches 7 as @e[tag=tbcMouseA3] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. run function glarth:combat/action_enemy/util/next_stage

# MouseA3 Attack + MouseB3 Target
execute if score @s tbcAttackStage matches 8 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 0..15 as @e[tag=tbcMouseA3] at @s rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 16 as @e[tag=tbcMouseA3] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 16 run scoreboard players set damage tbcStats 10
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 16 run kill @e[tag=tbcMouseA3]
execute if score @s tbcAttackStage matches 8 as @e[tag=tbcMouseB3] at @s unless entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ ~ run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 8 as @e[tag=tbcMouseB3] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. run function glarth:combat/action_enemy/util/next_stage

# MouseB3 Attack
execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 0..15 as @e[tag=tbcMouseB3] at @s rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 16 as @e[tag=tbcMouseB3] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 16 run scoreboard players set damage tbcStats 10
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 16 run kill @e[tag=tbcMouseB3]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/done


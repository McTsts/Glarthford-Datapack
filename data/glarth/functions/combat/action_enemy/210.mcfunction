# 0 - Prepare Attack
execute if score @s tbcAttackStage matches 0 run summon hoglin 0 0 0 {NoGravity:1,Invisible:1,NoAI:1,Silent:1,CustomNameVisible:1,CustomName:'{"translate":"tbc.enemy.piglin.hoglin","color":"gray"}',Tags:["tbcAttackDummy"]}
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcAttackDummy] at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] facing entity @e[tag=tbcTargetAS,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^-4
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

# 1 - Ravager to Target
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcAttackDummy] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.1 ~ ~
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcAttackDummy] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..5] run function glarth:combat/action_enemy/util/next_stage

# 1 - Ravager to Target
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcAttackDummy] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.4 ~ ~
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcAttackDummy] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2.5] run function glarth:combat/action_enemy/util/next_stage

# 2 - Ravager Swipe
execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1 run playsound minecraft:entity.hoglin.ambient hostile @a ~ ~ ~ 1 1.7
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 0..10 as @e[tag=tbcAttackDummy] at @s rotated ~ 0 run tp @s ^ ^ ^0.075
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 as @e[tag=tbcAttackDummy] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 run scoreboard players operation damage tbcStats += @e[tag=tbcTurn] tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 as @e[tag=tbcAttackDummy] at @s run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.1 100
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 as @e[tag=tbcAttackDummy] at @s run playsound minecraft:entity.hoglin.death hostile @a ~ ~ ~ 1 1.7
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 as @e[tag=tbcAttackDummy] at @s run tp @e[tag=tbcAttackDummy,limit=1] 0 0 0
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 as @e[tag=tbcAttackDummy] at @s run data merge entity @e[tag=tbcAttackDummy,limit=1] {Health:0.0f,DeathTime:19s}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 40 run tag @e[tag=tbcAttackDummy,limit=1,sort=nearest] add tbcAttackDummy
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 40 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 40 run kill @e[tag=tbcAttackDummy]
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 40 run function glarth:combat/action_enemy/util/done


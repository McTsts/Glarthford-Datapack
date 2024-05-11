# pre
execute if score @s tbcAttackStage matches 0 at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] run setblock ~ ~ ~ minecraft:turtle_egg[eggs=3]
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run data merge entity @s {Motion:[0.0d,0.3d,0.0d],NoGravity:0}
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

# 1
execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run data merge entity @s {Motion:[0.0d,0.3d,0.0d],NoGravity:0}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 20 at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] run setblock ~ ~ ~ minecraft:turtle_egg[eggs=2]
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 20 at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] run playsound minecraft:entity.turtle.egg_break hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 20 at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] run particle block turtle_egg ~ ~ ~ 0.3 0.3 0.3 0.1 10
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/helper/summon_turtle
execute if score @s tbcAttackStage matches 4 align y run tp @e[tag=tbcArrowPN,type=turtle] ^ ^ ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 4 run tag @e[tag=tbcArrowPN,type=turtle] remove tbcArrowPN
execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/util/next_stage

# 2
execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 5 run data merge entity @s {Motion:[0.0d,0.3d,0.0d],NoGravity:0}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 20 at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] run setblock ~ ~ ~ minecraft:turtle_egg[eggs=1]
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 20 at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] run playsound minecraft:entity.turtle.egg_break hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 20 at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] run particle block turtle_egg ~ ~ ~ 0.3 0.3 0.3 0.1 10
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_enemy/helper/summon_turtle
execute if score @s tbcAttackStage matches 7 align y run tp @e[tag=tbcArrowPN,type=turtle] ^ ^ ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 7 run tag @e[tag=tbcArrowPN,type=turtle] remove tbcArrowPN
execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_enemy/util/next_stage

# 3
execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 5 run data merge entity @s {Motion:[0.0d,0.3d,0.0d],NoGravity:0}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 20 at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] run setblock ~ ~ ~ minecraft:air
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 20 at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] run playsound minecraft:entity.turtle.egg_break hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 20 at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] run particle block turtle_egg ~ ~ ~ 0.3 0.3 0.3 0.1 10
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 10 run function glarth:combat/action_enemy/helper/summon_turtle
execute if score @s tbcAttackStage matches 10 align y run tp @e[tag=tbcArrowPN,type=turtle] ^ ^ ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 10 run tag @e[tag=tbcArrowPN,type=turtle] remove tbcArrowPN
execute if score @s tbcAttackStage matches 10 run function glarth:combat/action_enemy/util/next_stage

# post
execute if score @s tbcAttackStage matches 12 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage
execute if score @s tbcAttackStage matches 4..11 run function glarth:combat/action_enemy/helper/turtle

execute if score @s tbcAttackStage matches 13 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 13 if entity @e[tag=tbcSelMarker,distance=..0.2] run data merge entity @s {NoGravity:1}
execute if score @s tbcAttackStage matches 13 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done

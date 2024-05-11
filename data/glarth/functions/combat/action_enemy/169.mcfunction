# Ender Fireball
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/helper/summon_fireball_ender
execute if score @s tbcAttackStage matches 0 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 0 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/helper/fireball_ender2
execute if score @s tbcAttackStage matches 1 if entity @s[tag=tbcReady] run function glarth:combat/action_enemy/util/next_stage

# Elytra Swipe
execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 01 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 45 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 positioned ^ ^5 ^10 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] at @s facing entity @e[tag=tbcTurn] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 45 run data merge entity @s {Pose:{Head:[70.0f,0.0f,0.0f]}}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS,type=armor_stand] at @s facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbcTempMarker","tbc"]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 46 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 facing entity @e[tag=tbcTempMarker,type=area_effect_cloud] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 3 if entity @e[tag=tbcTempMarker,type=area_effect_cloud,distance=..0.15] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 0..15 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 20 run data merge entity @s {Pose:{Head:[0.0f,0.0f,0.0f]}}
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 20 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 positioned ^ ^ ^0.75 run tp @s ~ ~ ~
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 21..35 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 35 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 45 at @e[tag=tbcSelMarker] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 55 run function glarth:combat/action_enemy/util/next_stage


# End Rod Slide
execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
# left front
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run data merge entity @s {NoGravity:1}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.6 -84.5 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.6 -84.3 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.6 -84.1 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.6 -83.9 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.6 -83.7 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.6 -83.5 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.6 -83.3 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.6 -83.1 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.6 -82.9 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.6 -82.7 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.6 -82.5 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.4 -84.4 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.4 -84.2 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.4 -84.0 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.4 -83.8 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.4 -83.6 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.4 -83.4 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.4 -83.2 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.4 -83.0 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.4 -82.8 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 387.6 35.4 -82.6 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
# left middle
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.6 -82.3 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.6 -82.1 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.6 -81.9 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.6 -81.7 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.6 -81.5 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.6 -81.3 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.6 -81.1 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.6 -80.9 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.6 -80.7 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.6 -80.5 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.6 -80.3 {Tags:["tbc","tbcSpike","tbcAdjLocA1"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.4 -82.4 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.4 -82.2 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.4 -82.0 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.4 -81.8 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.4 -81.6 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.4 -81.4 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.4 -81.2 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.4 -81.0 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.4 -80.8 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.4 -80.6 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.4 -80.4 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 388.6 35.4 -80.2 {Tags:["tbc","tbcSpike","tbcAdjLocA2"],Rotation:[90.0f,0.0f]}
# right front
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.6 -84.5 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.6 -84.3 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.6 -84.1 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.6 -83.9 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.6 -83.7 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.6 -83.5 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.6 -83.3 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.6 -83.1 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.6 -82.9 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.6 -82.7 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.6 -82.5 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.4 -84.4 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.4 -84.2 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.4 -84.0 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.4 -83.8 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.4 -83.6 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.4 -83.4 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.4 -83.2 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.4 -83.0 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.4 -82.8 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 377.4 35.4 -82.6 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
# right middle
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.6 -82.3 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.6 -82.1 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.6 -81.9 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.6 -81.7 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.6 -81.5 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.6 -81.3 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.6 -81.1 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.6 -80.9 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.6 -80.7 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.6 -80.5 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.6 -80.3 {Tags:["tbc","tbcSpike","tbcAdjLocA3"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.4 -82.4 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.4 -82.2 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.4 -82.0 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.4 -81.8 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.4 -81.6 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.4 -81.4 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.4 -81.2 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.4 -81.0 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.4 -80.8 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.4 -80.6 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.4 -80.4 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 run summon minecraft:armor_stand 376.4 35.4 -80.2 {Tags:["tbc","tbcSpike","tbcAdjLocA4"],Rotation:[-90.0f,0.0f]}
# other stuff
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01 as @e[type=armor_stand,tag=tbcSpike] run data merge entity @s {NoGravity:1,Invisible:1}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01..44 run tag @e[type=armor_stand,tag=tbcSpike,sort=random,limit=2,tag=!tbcSpikeS] add tbcSpikeS
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01..44 as @e[type=armor_stand,tag=tbcSpikeS,tag=!tbcSpikeS2] at @s run particle minecraft:end_rod ~ ~1.5 ~ 0.1 0.1 0.1 0 2
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01..44 as @e[type=armor_stand,tag=tbcSpikeS,tag=!tbcSpikeS2] at @s run playsound minecraft:entity.item.pickup block @a ~ ~1.5 ~ 0.5 2
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01..44 as @e[type=armor_stand,tag=tbcSpikeS,tag=!tbcSpikeS2] run data merge entity @s {ArmorItems:[{},{},{},{id:"end_rod",count:1}]}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 01..44 as @e[type=armor_stand,tag=tbcSpikeS] run tag @s add tbcSpikeS2
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 42 as @e[tag=tbcMarkerMiddle] at @s run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1 0.5
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 42 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:portal ~ ~ ~ 3 1 3 0.5 200
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 42 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:end_rod ~ ~ ~ 3 1 3 0.1 20
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 42 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:dragon_breath ~ ~ ~ 3 1 3 0.1 100
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 46 run scoreboard players set r Random 9
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 46 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 46 run scoreboard players operation angle tbcAdjLoc = n Random
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 46 run scoreboard players remove angle tbcAdjLoc 5
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 46 if score angle tbcAdjLoc matches 0 run scoreboard players set angle tbcAdjLoc 4
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 46 run scoreboard players operation angle tbcAdjLoc *= 10 Const
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 46 run function glarth:combat/action_enemy/helper/adjust_location
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 46 run effect give @a[gamemode=!creative] blindness 1 0 true
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 46 run scoreboard players set @e[tag=tbcPlayerAS1] tbcSlideP 4500
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 46 run scoreboard players set @e[tag=tbcPlayerAS1] tbcSlideN 4500
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 46 run scoreboard players set @e[tag=tbcPlayerAS2] tbcSlideP 1500
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 46 run scoreboard players set @e[tag=tbcPlayerAS2] tbcSlideN 7500
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 46 run scoreboard players set @e[tag=tbcPlayerAS3] tbcSlideP 8500
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 46 run scoreboard players set @e[tag=tbcPlayerAS3] tbcSlideN 2500
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 46 run scoreboard players set @e[tag=tbcEnemy] tbcSlideN 0
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 46 run scoreboard players set @e[tag=tbcEnemy] tbcSlideP 0
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 47 run scoreboard players set damage tbcStats 30
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 47 as @a[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 47 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 if score angle tbcAdjLoc matches 1.. as @e[type=armor_stand,tag=tbcPlayerAS,scores={tbcSlideP=..1250},tag=!tbcSpikeDmg] run function glarth:combat/action/util/via_start
execute if score @s tbcAttackStage matches 7 if score angle tbcAdjLoc matches 1.. as @e[type=armor_stand,tag=tbcPlayerAS,scores={tbcSlideP=..750},tag=!tbcSpikeDmg] run function glarth:combat/action/util/via_end
execute if score @s tbcAttackStage matches 7 if score angle tbcAdjLoc matches 1.. as @e[type=armor_stand,tag=tbcPlayerAS,scores={tbcSlideP=..700},tag=!tbcSpikeDmg] run function glarth:combat/action/util/via_damage
execute if score @s tbcAttackStage matches 7 if score angle tbcAdjLoc matches 1.. as @e[type=armor_stand,tag=tbcPlayerAS,scores={tbcSlideP=..700},tag=!tbcSpikeDmg] run tag @s add tbcSpikeDmg
execute if score @s tbcAttackStage matches 7 if score angle tbcAdjLoc matches 1.. unless entity @e[type=armor_stand,tag=tbcPlayerAS,scores={tbcSlideP=500..}] run function glarth:combat/action_enemy/util/next_stage
execute if score @s tbcAttackStage matches 7 if score angle tbcAdjLoc matches ..1 as @e[type=armor_stand,tag=tbcPlayerAS,scores={tbcSlideN=..1250}] run function glarth:combat/action/util/via_start
execute if score @s tbcAttackStage matches 7 if score angle tbcAdjLoc matches ..1 as @e[type=armor_stand,tag=tbcPlayerAS,scores={tbcSlideN=..750},tag=!tbcSpikeDmg] run function glarth:combat/action/util/via_end
execute if score @s tbcAttackStage matches 7 if score angle tbcAdjLoc matches ..1 as @e[type=armor_stand,tag=tbcPlayerAS,scores={tbcSlideN=..700},tag=!tbcSpikeDmg] run function glarth:combat/action/util/via_damage
execute if score @s tbcAttackStage matches 7 if score angle tbcAdjLoc matches ..1 as @e[type=armor_stand,tag=tbcPlayerAS,scores={tbcSlideN=..700},tag=!tbcSpikeDmg] run tag @s add tbcSpikeDmg
execute if score @s tbcAttackStage matches 7 if score angle tbcAdjLoc matches ..1 unless entity @e[type=armor_stand,tag=tbcPlayerAS,scores={tbcSlideN=500..}] run function glarth:combat/action_enemy/util/next_stage
execute if score @s tbcAttackStage matches 7 as @e[tag=tbcPlayerAS] run function glarth:combat/action_enemy/helper/slide

execute if score @s tbcAttackStage matches 8 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 1 run tag @e[type=armor_stand,tag=tbcPlayerAS] remove tbcSpikeDmg
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 1 as @e[tag=tbcMarkerMiddle] at @s run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1 0.5
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 1 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:portal ~ ~ ~ 3 1 3 0.5 200
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 1 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:end_rod ~ ~ ~ 3 1 3 0.1 20
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 1 as @e[tag=tbcMarkerMiddle] at @s run particle minecraft:dragon_breath ~ ~ ~ 3 1 3 0.1 100
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 3 run scoreboard players set angle tbcAdjLoc 0
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/helper/adjust_location
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 3 positioned 382 35.2 -79.25 run function glarth:mechanic/dim_end/spawn_arena
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 3 run effect give @a[gamemode=!creative] blindness 1 0 true
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 10 run kill @e[tag=tbcSpike]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 10 as @e[tag=tbcPlayerAS1,tag=!tbcTargetAS,type=armor_stand] at @s unless entity @e[tag=tbcMarkerPos1,distance=..0.3] facing entity @e[tag=tbcMarkerPos1] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 10 as @e[tag=tbcPlayerAS2,tag=!tbcTargetAS,type=armor_stand] at @s unless entity @e[tag=tbcMarkerPos2,distance=..0.3] facing entity @e[tag=tbcMarkerPos2] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 10 as @e[tag=tbcPlayerAS3,tag=!tbcTargetAS,type=armor_stand] at @s unless entity @e[tag=tbcMarkerPos3,distance=..0.3] facing entity @e[tag=tbcMarkerPos3] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 10 as @e[tag=tbcTargetAS,type=armor_stand] at @s facing entity @e[tag=tbcTargetMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.15 ~ ~
execute if score @s tbcAttackStage matches 10 as @e[tag=tbcTargetAS,type=armor_stand] at @s if entity @e[tag=tbcTargetMarker,distance=..0.2] as @e[scores={tbcID=1}] run function glarth:combat/action_enemy/util/next_stage

# Fast Ender Swipe
execute if score @s tbcAttackStage matches 11 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 01 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 45 run scoreboard players set r Random 4 
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 45 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 45 if score n Random matches 1 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~000 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 45 if score n Random matches 2 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~090 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 45 if score n Random matches 3 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~-90 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 45 if score n Random matches 4 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~180 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] at @s facing entity @e[tag=tbcTurn] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 46 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 12 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 9 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 0..9 rotated ~ 0 run tp @s ^ ^ ^0.083
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 10 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 10 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 12 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 13 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 1..9 run tp @s ^ ^ ^-0.083
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 10 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 45 at @e[tag=tbcSelMarker] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 65 run function glarth:combat/action_enemy/util/done
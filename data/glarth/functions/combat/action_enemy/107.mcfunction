# 0 - Phanterra Fly Animation
execute if score @s tbcAttackStage matches 0 run function glarth:mechanic/animation/phanterra/do/fly
execute if score @s tbcAttackStage matches 0 if entity @e[tag=phanterra,scores={phanterraState=4}] run tag @e[tag=tbcMarkerPhanterraPlayer] remove tbcMarkerPhanterraTargetAEC
execute if score @s tbcAttackStage matches 0 if entity @e[tag=phanterra,scores={phanterraState=4}] at @e[tag=tbcTargetAS] run tag @e[tag=tbcMarkerPhanterraPlayer,limit=1,sort=nearest] add tbcMarkerPhanterraTargetAEC
execute if score @s tbcAttackStage matches 0 if entity @e[tag=phanterra,scores={phanterraState=4}] run function glarth:combat/action_enemy/util/next_stage

# 1 - Phanterra Fly to Middle
execute if score @s tbcAttackStage matches 1 as @e[tag=phanterra] at @s facing entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:mechanic/animation/phanterra/do/glide
execute if score @s tbcAttackStage matches 1 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud,distance=..0.3] as @e[tag=tbcMarkerPhanterraPlayer] at @s run tp @s ~ ~-1.5 ~
execute if score @s tbcAttackStage matches 1 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

# 2 - Phanterra Fly to Player
execute if score @s tbcAttackStage matches 2 as @e[tag=phanterra] at @s facing entity @e[tag=tbcMarkerPhanterraTargetAEC,type=area_effect_cloud] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 2 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraTargetAEC,type=area_effect_cloud,distance=..2] run function glarth:combat/action_enemy/util/next_stage

# 3 - Phanterra Swipe
execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 13 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 0..40 as @e[tag=phanterra] at @s rotated ~ 0 run tp @s ^ ^ ^0.2 ~ 0
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 14 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 14 if score @e[tag=tbcTarget,limit=1] blocked matches 1 run playsound minecraft:entity.phantom.hurt hostile @a ~ ~ ~ 2 0.5
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 14 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~ 2 0.5
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 14 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 14 run scoreboard players operation damage tbcStats *= 2 Const
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 14 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 run function glarth:mechanic/animation/phanterra/do/fly
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 30 as @e[tag=tbcMarkerPhanterraPlayer] at @s run tp @s ~ ~1.5 ~
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 30 as @e[tag=tbcMarkerPhanterraMiddle] at @s run tp @s ~ ~3 ~
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 30 run function glarth:combat/action_enemy/util/next_stage

# 4 - Phanterra Fly to Middle
execute if score @s tbcAttackStage matches 4 as @e[tag=phanterra] at @s facing entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

# 4 - Grimsbane to Middle
execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 30.. as @s[tag=!tbcReady] facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 30.. if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run tag @s add tbcReady

# 5 - Phanterra Fly to Pos
execute if score @s tbcAttackStage matches 5 as @e[tag=phanterra] at @s facing entity @e[tag=tbcMarkerPhanterraPos] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraPos,distance=..0.2] as @e[tag=tbcMarkerPhanterraMiddle] at @s run tp @s ~ ~-3 ~
execute if score @s tbcAttackStage matches 5 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraPos,distance=..0.2] run tp @s ~ ~ ~ 90 0
execute if score @s tbcAttackStage matches 5 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraPos,distance=..0.2] as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 5 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraPos,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

# 6 - Phanterra Hover Animation
execute if score @s tbcAttackStage matches 6 run function glarth:mechanic/animation/phanterra/do/hover

# 5 - Grimsbane to Player
execute if score @s tbcAttackStage matches 6 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 6 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/next_stage

# 7 - Grimsbane Swipe
execute if score @s tbcAttackStage matches 7 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

# 8 - Grimsbane to Middle
execute if score @s tbcAttackStage matches 8 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 8 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

# 9 - Grimsbane to Pos
execute if score @s tbcAttackStage matches 9 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 9 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done


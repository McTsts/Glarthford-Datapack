# 0 - Blindness
execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 at @s run playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~ ~ 2 0.7
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 run effect give @a[tag=tbcTarget] blindness 999999 0 true
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 run scoreboard players add @a[tag=tbcTarget] tbcBlindness 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 25 run data merge entity @e[tag=phanterra,limit=1] {Glowing:1b,Team:"dark_blue"}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage

# 1 - Phanterra Fly Animation
execute if score @s tbcAttackStage matches 1 run function glarth:mechanic/animation/phanterra/do/fly
execute if score @s tbcAttackStage matches 1 if entity @e[tag=phanterra,scores={phanterraState=4}] run tag @e[tag=tbcMarkerPhanterraPlayer] remove tbcMarkerPhanterraTargetAEC
execute if score @s tbcAttackStage matches 1 if entity @e[tag=phanterra,scores={phanterraState=4}] at @e[tag=tbcTargetAS] run tag @e[tag=tbcMarkerPhanterraPlayer,limit=1,sort=nearest] add tbcMarkerPhanterraTargetAEC
execute if score @s tbcAttackStage matches 1 if entity @e[tag=phanterra,scores={phanterraState=4}] run function glarth:combat/action_enemy/util/next_stage

# 2 - Phanterra Fly to Middle
execute if score @s tbcAttackStage matches 2 as @e[tag=phanterra] at @s facing entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud] feet run tp @s ^ ^ ^0.4 ~ ~
execute if score @s tbcAttackStage matches 2 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:mechanic/animation/phanterra/do/glide
execute if score @s tbcAttackStage matches 2 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud,distance=..0.3] as @e[tag=tbcMarkerPhanterraPlayer] at @s run tp @s ~ ~-1.5 ~
execute if score @s tbcAttackStage matches 2 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

# 3 - Phanterra Fly to Player
execute if score @s tbcAttackStage matches 3 as @e[tag=phanterra] at @s facing entity @e[tag=tbcMarkerPhanterraTargetAEC,type=area_effect_cloud] feet run tp @s ^ ^ ^0.4 ~ ~
execute if score @s tbcAttackStage matches 3 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraTargetAEC,type=area_effect_cloud,distance=..2] run function glarth:combat/action_enemy/util/next_stage

# 4 - Phanterra Swipe
execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 9 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 0..20 as @e[tag=phanterra] at @s rotated ~ 0 run tp @s ^ ^ ^0.3 ~ 0
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 10 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 10 if score @e[tag=tbcTarget,limit=1] blocked matches 1 run playsound minecraft:entity.phantom.hurt hostile @a ~ ~ ~ 2 0.5
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 10 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~ 2 0.5
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 10 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 10 run scoreboard players operation damage tbcStats *= 2 Const
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 15 run function glarth:mechanic/animation/phanterra/do/fly
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 20 as @e[tag=tbcMarkerPhanterraPlayer] at @s run tp @s ~ ~1.5 ~
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 20 as @e[tag=tbcMarkerPhanterraMiddle] at @s run tp @s ~ ~3 ~
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

# 5 - Phanterra Fly to Middle
execute if score @s tbcAttackStage matches 5 as @e[tag=phanterra] at @s facing entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud] feet run tp @s ^ ^ ^0.4 ~ ~
execute if score @s tbcAttackStage matches 5 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

# 6 - Phanterra Fly to Pos
execute if score @s tbcAttackStage matches 6 as @e[tag=phanterra] at @s facing entity @e[tag=tbcMarkerPhanterraPos] feet run tp @s ^ ^ ^0.4 ~ ~
execute if score @s tbcAttackStage matches 6 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraPos,distance=..0.2] as @e[tag=tbcMarkerPhanterraMiddle] at @s run tp @s ~ ~-3 ~
execute if score @s tbcAttackStage matches 6 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraPos,distance=..0.2] run tp @s ~ ~ ~ 90 0
execute if score @s tbcAttackStage matches 6 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraPos,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

# 7 - Phanterra Hover Animation
execute if score @s tbcAttackStage matches 7 run function glarth:mechanic/animation/phanterra/do/hover
execute if score @s tbcAttackStage matches 7 if entity @e[tag=phanterra,scores={phanterraState=1}] run data merge entity @e[tag=phanterra,limit=1] {Glowing:0b}
execute if score @s tbcAttackStage matches 7 if entity @e[tag=phanterra,scores={phanterraState=1}] run scoreboard players remove @a[tag=tbcTarget] tbcBlindness 1
execute if score @s tbcAttackStage matches 7 if entity @e[tag=phanterra,scores={phanterraState=1}] run effect clear @a[tag=tbcTarget] blindness
execute if score @s tbcAttackStage matches 7 if entity @e[tag=phanterra,scores={phanterraState=1}] run effect give @a[tag=tbcTarget] blindness 1 0 true
execute if score @s tbcAttackStage matches 7 if entity @e[tag=phanterra,scores={phanterraState=1}] run function glarth:combat/action_enemy/util/done


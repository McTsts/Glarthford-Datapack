# 0 - Prepare Attack
execute if score @s tbcAttackStage matches 0 run tag @e[tag=tbcMarkerMiddleB] add rand_sel
execute if score @s tbcAttackStage matches 0 run function glarth:util/rand_sel/1
execute if score @s tbcAttackStage matches 0 run tag @e[tag=rand_sel_result,limit=1] add tbcMarkerMiddleX
execute if score @s tbcAttackStage matches 0 run tag @e[tag=tbcMarkerMiddleB,tag=!tbcMarkerMiddleX,type=area_effect_cloud] add tbcMarkerMiddleY
execute if score @s tbcAttackStage matches 0 at @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] run particle cloud ~ ~ ~ 1 1 1 0 100
execute if score @s tbcAttackStage matches 0 at @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] run summon phantom ~ ~-5 ~ {NoAI:1,Size:0,NoGravity:1,Invisible:1,Tags:["tbcAttackDummy","tbc"]}
execute if score @s tbcAttackStage matches 0 at @e[tag=tbcMarkerMiddleY] run particle cloud ~ ~ ~ 1 1 1 0 100
execute if score @s tbcAttackStage matches 0 at @e[tag=tbcMarkerMiddleY] run summon phantom ~ ~-5 ~ {NoAI:1,Size:0,NoGravity:1,Invisible:1,Tags:["tbcAttackDummy","tbc"]}
execute if score @s tbcAttackStage matches 0 run function glarth:mechanic/animation/phanterra/do/fly
execute if score @s tbcAttackStage matches 0 run tag @e[tag=tbcMarkerPhanterraPlayer] remove tbcMarkerPhanterraTargetAEC
execute if score @s tbcAttackStage matches 0 at @e[tag=tbcTargetAS] run tag @e[tag=tbcMarkerPhanterraPlayer,limit=1,sort=nearest] add tbcMarkerPhanterraTargetAEC
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcMarkerPhanterraPlayer] at @s run tp @s ~ ~-1.5 ~
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

# 1 - Summon Phantoms & Phanterra to Fly
execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5 as @e[tag=tbcAttackDummy] at @s run tp @s ~ ~5 ~ facing entity @e[tag=tbcTargetAS,limit=1]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 10 run tag @e[tag=tbcAttackDummy,limit=1,sort=nearest] add tbcAD_Sel
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 10.. if entity @e[tag=phanterra,scores={phanterraState=4}] run function glarth:combat/action_enemy/util/next_stage

# 2 - First Phantom to Target
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcAD_Sel] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcAD_Sel] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/next_stage

# 3 - First Phantom Attack
execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 0..10 as @e[tag=tbcAD_Sel] at @s rotated ~ 0 run tp @s ^ ^ ^0.075
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 as @e[tag=tbcAD_Sel] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 11 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 as @e[tag=tbcAD_Sel] at @s run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.1 100
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 as @e[tag=tbcAD_Sel] at @s run playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 1 1.7
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 25 as @e[tag=tbcAD_Sel] at @s run data merge entity @e[tag=tbcAD_Sel,limit=1] {DeathTime:19s,Health:0.0f}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 40 run tag @e[tag=tbcAttackDummy,limit=1,sort=nearest] add tbcAD_Sel
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 40 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 40 run function glarth:combat/action_enemy/util/next_stage

# 2..4 - Phanterra to Middle
execute if score @s tbcAttackStage matches 2..4 as @e[tag=phanterra,tag=!tbcReady] at @s facing entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud] feet run tp @s ^ ^ ^0.1 ~ ~
execute if score @s tbcAttackStage matches 2..4 as @e[tag=phanterra,tag=!tbcReady] at @s if entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:mechanic/animation/phanterra/do/glide
execute if score @s tbcAttackStage matches 2..4 as @e[tag=phanterra,tag=!tbcReady] at @s if entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud,distance=..0.3] run tag @s add tbcReady

# 4 - Second Phantom to Target
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcAD_Sel] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcAD_Sel] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/next_stage

# 5 - Phanterra Fly to Player
execute if score @s tbcAttackStage matches 5 as @e[tag=phanterra,tag=!tbcReady] at @s facing entity @e[tag=tbcMarkerPhanterraTargetAEC,type=area_effect_cloud] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 as @e[tag=phanterra,tag=!tbcReady] at @s if entity @e[tag=tbcMarkerPhanterraTargetAEC,type=area_effect_cloud,distance=..2] run tag @s add tbcReady

# 5- Second Phantom Attack
execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 0..10 as @e[tag=tbcAD_Sel] at @s rotated ~ 0 run tp @s ^ ^ ^0.075
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 11 as @e[tag=tbcAD_Sel] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 11 run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 11 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 25 as @e[tag=tbcAD_Sel] at @s run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.1 100
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 25 as @e[tag=tbcAD_Sel] at @s run playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 1 1.7
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 25 as @e[tag=tbcAD_Sel] at @s run data merge entity @e[tag=tbcAD_Sel,limit=1] {DeathTime:19s,Health:0.0f}
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 25 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 30.. if entity @e[tag=phanterra,tag=tbcReady] run function glarth:combat/action_enemy/util/next_stage

# 3 - Phanterra Swipe
execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 13 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 0..40 as @e[tag=phanterra] at @s rotated ~ 0 run tp @s ^ ^ ^0.2 ~ 0
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 14 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 14 if score @e[tag=tbcTarget,limit=1] blocked matches 1 run playsound minecraft:entity.phantom.hurt hostile @a ~ ~ ~ 2 0.5
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 14 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~ 2 0.5
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 14 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 14 run scoreboard players operation damage tbcStats *= 2 Const
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 14 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 25 run function glarth:mechanic/animation/phanterra/do/fly
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 30 as @e[tag=tbcMarkerPhanterraPlayer] at @s run tp @s ~ ~1.5 ~
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 30 as @e[tag=tbcMarkerPhanterraMiddle] at @s run tp @s ~ ~3 ~
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 30 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 30 run function glarth:combat/action_enemy/util/next_stage

# 7 - Summon Phantoms #2 Pt. 1
execute if score @s tbcAttackStage matches 7 at @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] run particle cloud ~ ~ ~ 1 1 1 0 100
execute if score @s tbcAttackStage matches 7 at @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] run summon phantom ~ ~-5 ~ {NoAI:1,Size:0,NoGravity:1,Invisible:1,Tags:["tbcAttackDummy","tbc"]}
execute if score @s tbcAttackStage matches 7 at @e[tag=tbcMarkerMiddleY] run particle cloud ~ ~ ~ 1 1 1 0 100
execute if score @s tbcAttackStage matches 7 at @e[tag=tbcMarkerMiddleY] run summon phantom ~ ~-5 ~ {NoAI:1,Size:0,NoGravity:1,Invisible:1,Tags:["tbcAttackDummy","tbc"]}
execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_enemy/util/next_stage

# 8 - Summon Phantoms #2 Pt. 2
execute if score @s tbcAttackStage matches 8 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 5 as @e[tag=tbcAttackDummy] at @s run tp @s ~ ~5 ~ facing entity @e[tag=tbcTargetAS,limit=1]
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 10 run tag @e[tag=tbcAttackDummy,limit=1,sort=nearest] add tbcAD_Sel

# 8 - Phanterra to Middle
execute if score @s tbcAttackStage matches 8 as @e[tag=phanterra] at @s facing entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 8 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud,distance=..0.2] run tag @s add tbcActivePhanterra
execute if score @s tbcAttackStage matches 8 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

# 9 - Third to Target
execute if score @s tbcAttackStage matches 9 if entity @e[tag=tbcSelMarker,distance=..0.2,type=area_effect_cloud] run tag @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] remove tbcMarkerMiddleX
execute if score @s tbcAttackStage matches 9 if entity @e[tag=tbcSelMarker,distance=..0.2,type=area_effect_cloud] run tag @e[tag=tbcMarkerMiddleY] remove tbcMarkerMiddleY
execute if score @s tbcAttackStage matches 9 if entity @e[tag=tbcSelMarker,distance=..0.2,type=area_effect_cloud] run function glarth:combat/action_enemy/util/next_stage

# 9.. - Phanterra Fly to Pos
execute if score @s tbcAttackStage matches 9.. as @e[tag=phanterra,tag=tbcActivePhanterra] at @s facing entity @e[tag=tbcMarkerPhanterraPos] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 9.. as @e[tag=phanterra,tag=tbcActivePhanterra] at @s if entity @e[tag=tbcMarkerPhanterraPos,distance=..0.2] as @e[tag=tbcMarkerPhanterraMiddle] at @s run tp @s ~ ~-3 ~
execute if score @s tbcAttackStage matches 9.. as @e[tag=phanterra,tag=tbcActivePhanterra] at @s if entity @e[tag=tbcMarkerPhanterraPos,distance=..0.2] run tp @s ~ ~ ~ 90 0
execute if score @s tbcAttackStage matches 9.. as @e[tag=phanterra,tag=tbcActivePhanterra] at @s if entity @e[tag=tbcMarkerPhanterraPos,distance=..0.2] run function glarth:mechanic/animation/phanterra/do/hover
execute if score @s tbcAttackStage matches 9.. as @e[tag=phanterra,tag=tbcActivePhanterra] at @s if entity @e[tag=tbcMarkerPhanterraPos,distance=..0.2] run tag @s remove tbcActivePhanterra

# 10 - Third Phantom to Target
execute if score @s tbcAttackStage matches 10 as @e[tag=tbcAD_Sel] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 10 as @e[tag=tbcAD_Sel] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/next_stage

# 11 - Third Phantom Attack
execute if score @s tbcAttackStage matches 11 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 8 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 0..8 as @e[tag=tbcAD_Sel] at @s rotated ~ 0 run tp @s ^ ^ ^0.1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 8 as @e[tag=tbcAD_Sel] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 8 run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 8 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 11 as @e[tag=tbcAD_Sel] at @s run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.1 100
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 11 as @e[tag=tbcAD_Sel] at @s run playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 1 1.7
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 11 as @e[tag=tbcAD_Sel] at @s run data merge entity @e[tag=tbcAD_Sel,limit=1] {DeathTime:19s,Health:0.0f}
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 14 run tag @e[tag=tbcAttackDummy,limit=1,sort=nearest] add tbcAD_Sel
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 14 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 14 run function glarth:combat/action_enemy/util/next_stage

# 12 - Fourth Phantom to Target
execute if score @s tbcAttackStage matches 12 as @e[tag=tbcAD_Sel] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 12 as @e[tag=tbcAD_Sel] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/next_stage

# 13 - Fourth Phantom Attack
execute if score @s tbcAttackStage matches 13 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 8 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 0..8 as @e[tag=tbcAD_Sel] at @s rotated ~ 0 run tp @s ^ ^ ^0.1
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 8 as @e[tag=tbcAD_Sel] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 8 run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 8 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 11 as @e[tag=tbcAD_Sel] at @s run particle smoke ~ ~ ~ 0.5 0.5 0.5 0.1 100
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 11 as @e[tag=tbcAD_Sel] at @s run playsound minecraft:entity.phantom.death hostile @a ~ ~ ~ 1 1.7
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 11 as @e[tag=tbcAD_Sel] at @s run data merge entity @e[tag=tbcAD_Sel,limit=1] {DeathTime:19s,Health:0.0f}
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 14 run function glarth:combat/action_enemy/util/done
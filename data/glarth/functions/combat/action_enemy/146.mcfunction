execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/hide_hat
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 run summon minecraft:armor_stand ^-0.65 ^0.2 ^ {ArmorItems:[{},{},{},{id:"snowball",count:1}],Small:1,Pose:{Head:[90.0f,-45.0f,-90.0f]},Marker:1,NoGravity:1,Invisible:1,Tags:["tbc","tbcArrowP","tbcArrow1"],Rotation:[-180.0f,0.0f]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 run summon minecraft:armor_stand ^-0.65 ^0.2 ^ {ArmorItems:[{},{},{},{id:"snowball",count:1}],Small:1,Pose:{Head:[90.0f,-45.0f,-90.0f]},Marker:1,NoGravity:1,Invisible:1,Tags:["tbc","tbcArrowP","tbcArrow2"],Rotation:[-180.0f,0.0f]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 31 run summon minecraft:armor_stand ^-0.65 ^0.2 ^ {ArmorItems:[{},{},{},{id:"snowball",count:1}],Small:1,Pose:{Head:[90.0f,-45.0f,-90.0f]},Marker:1,NoGravity:1,Invisible:1,Tags:["tbc","tbcArrowP","tbcArrow3"],Rotation:[-180.0f,0.0f]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1..60 as @e[tag=tbcArrowP] at @s run tp @s ~ ~0.45 ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 61 as @e[tag=tbcArrow1] at @e[tag=tbcTargetAS] positioned ~ ~18.0 ~ run tp @s ^0.35 ^ ^-0.15
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 61 as @e[tag=tbcArrow2] at @e[tag=tbcTargetAS] positioned ~ ~23.5 ~ run tp @s ^0.35 ^ ^-0.15
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 61 as @e[tag=tbcArrow3] at @e[tag=tbcTargetAS] positioned ~ ~29.0 ~ run tp @s ^0.35 ^ ^-0.15
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 61 as @e[tag=tbcArrowP] run data merge entity @s {Pose:{Head:[90.0f,135.0f,-90.0f]}}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 62 run function glarth:combat/action_enemy/util/next_stage 

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1..60 as @e[tag=tbcArrowP] at @s run tp @s ~ ~-0.45 ~
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 2 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 2 run scoreboard players remove damage tbcStats 10
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 29 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 30 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 39 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 39 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 39 as @e[tag=tbcTarget,limit=1] run kill @e[tag=tbcArrow1]
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 41 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 42 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 51 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 51 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 51 as @e[tag=tbcTarget,limit=1] run kill @e[tag=tbcArrow2]
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 53 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 54 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 63 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 63 as @e[tag=tbcTarget,limit=1] run kill @e[tag=tbcArrow3]
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 63 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 63 run kill @e[tag=tbcArrowP]
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 64 run function glarth:combat/action_enemy/util/next_stage 

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/show_hat
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done

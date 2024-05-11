# Prepare Attack
execute if score @s tbcAttackStage matches 0 run item replace entity @s armor.head with minecraft:diamond_hoe[damage=119]
execute if score @s tbcAttackStage matches 0 run tag @e[tag=tbcMarkerMiddleB] add rand_sel
execute if score @s tbcAttackStage matches 0 run function glarth:util/rand_sel/1
execute if score @s tbcAttackStage matches 0 run tag @e[tag=rand_sel_result,limit=1] add tbcMarkerMiddleX
execute if score @s tbcAttackStage matches 0 run tag @e[tag=tbcMarkerMiddleB,tag=!tbcMarkerMiddleX,type=area_effect_cloud] add tbcMarkerMiddleY
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcTargetAS,type=armor_stand] at @s positioned ^-2 ^ ^1 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbcTempMarker","tbc"]}
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

# Main to Middle
execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

# Main to Temp Marker
execute if score @s tbcAttackStage matches 2 facing entity @e[tag=tbcTempMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 2 if entity @e[tag=tbcTempMarker,distance=..2.5,type=area_effect_cloud] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=249]
execute if score @s tbcAttackStage matches 2 if entity @e[tag=tbcTempMarker,distance=..2.5,type=area_effect_cloud] run function glarth:combat/action_enemy/util/next_stage

# Main Attack
execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 13 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 0..13 rotated ~ 0 run tp @s ^ ^ ^0.07
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 14 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 14 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 14 run scoreboard players operation damage tbcStats *= 2 Const
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 14 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 17 run item replace entity @s armor.head with minecraft:diamond_hoe[damage=119]
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 17 run kill @e[tag=tbcTempMarker,type=area_effect_cloud]
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 17 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 17 run function glarth:combat/action_enemy/util/next_stage

# Main to Middle
execute if score @s tbcAttackStage matches 4 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

# Main to Pos 
execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcSelMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2,type=area_effect_cloud] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=223]
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2,type=area_effect_cloud] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2,type=area_effect_cloud] run function glarth:combat/action_enemy/util/next_stage


# MouseA 1 Spawn
execute if score @s tbcAttackStage matches 6 at @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":250}}],Tags:["tbcMouseA1","tbcMouse","tbc"]}
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/util/next_stage

# MouseA1 Target + MouseB1 Spawn
execute if score @s tbcAttackStage matches 7 as @e[tag=tbcMouseA1] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 7 as @e[tag=tbcMouseA1] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] at @e[tag=tbcMarkerMiddleY] run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":250}}],Tags:["tbcMouseB1","tbcMouse","tbc"]}
execute if score @s tbcAttackStage matches 7 as @e[tag=tbcMouseA1] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] run function glarth:combat/action_enemy/util/next_stage

# MouseA1 Attack + MouseB1 Target + MouseA2 Spawn
execute if score @s tbcAttackStage matches 8 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 0..15 as @e[tag=tbcMouseA1] at @s rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 16 as @e[tag=tbcMouseA1] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 16 run scoreboard players set damage tbcStats 10
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 16 run kill @e[tag=tbcMouseA1]
execute if score @s tbcAttackStage matches 8 as @e[tag=tbcMouseB1] at @s unless entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 8 as @e[tag=tbcMouseB1] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. at @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":250}}],Tags:["tbcMouseA2","tbcMouse","tbc"]}
execute if score @s tbcAttackStage matches 8 as @e[tag=tbcMouseB1] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. run function glarth:combat/action_enemy/util/next_stage

# MouseB1 Attack + MouseA2 Target + MouseB2 Spawn
execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 0..15 as @e[tag=tbcMouseB1] at @s rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 16 as @e[tag=tbcMouseB1] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 16 run scoreboard players set damage tbcStats 10
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 16 run kill @e[tag=tbcMouseB1]
execute if score @s tbcAttackStage matches 9 as @e[tag=tbcMouseA2] at @s unless entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 9 as @e[tag=tbcMouseA2] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. at @e[tag=tbcMarkerMiddleY] run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":250}}],Tags:["tbcMouseB2","tbcMouse","tbc"]}
execute if score @s tbcAttackStage matches 9 as @e[tag=tbcMouseA2] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. run function glarth:combat/action_enemy/util/next_stage

# MouseA2 Attack + MouseB2 Target + MouseA3 Spawn
execute if score @s tbcAttackStage matches 10 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 0..15 as @e[tag=tbcMouseA2] at @s rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 16 as @e[tag=tbcMouseA2] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 16 run scoreboard players set damage tbcStats 10
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 16 run kill @e[tag=tbcMouseA2]
execute if score @s tbcAttackStage matches 10 as @e[tag=tbcMouseB2] at @s unless entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 10 as @e[tag=tbcMouseB2] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. at @e[tag=tbcMarkerMiddleX,type=area_effect_cloud] run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":250}}],Tags:["tbcMouseA3","tbcMouse","tbc"]}
execute if score @s tbcAttackStage matches 10 as @e[tag=tbcMouseB2] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. run function glarth:combat/action_enemy/util/next_stage

# MouseB2 Attack + MouseA3 Target + MouseB3 Spawn
execute if score @s tbcAttackStage matches 11 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 0..15 as @e[tag=tbcMouseB2] at @s rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 16 as @e[tag=tbcMouseB2] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 16 run scoreboard players set damage tbcStats 10
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 16 run kill @e[tag=tbcMouseB2]
execute if score @s tbcAttackStage matches 11 as @e[tag=tbcMouseA3] at @s unless entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 11 as @e[tag=tbcMouseA3] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. at @e[tag=tbcMarkerMiddleY] run summon armor_stand ~ ~ ~ {NoGravity:1,Invisible:1,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":250}}],Tags:["tbcMouseB3","tbcMouse","tbc"]}
execute if score @s tbcAttackStage matches 11 as @e[tag=tbcMouseA3] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. run function glarth:combat/action_enemy/util/next_stage

# MouseA3 Attack + MouseB3 Target
execute if score @s tbcAttackStage matches 12 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 0..15 as @e[tag=tbcMouseA3] at @s rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 16 as @e[tag=tbcMouseA3] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 16 run scoreboard players set damage tbcStats 10
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 16 run kill @e[tag=tbcMouseA3]
execute if score @s tbcAttackStage matches 12 as @e[tag=tbcMouseB3] at @s unless entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 12 as @e[tag=tbcMouseB3] at @s if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..1.8] if score @e[tag=tbcTurn,limit=1] tbcAttackTimer matches 22.. run function glarth:combat/action_enemy/util/next_stage

# MouseB3 Attack
execute if score @s tbcAttackStage matches 13 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 0..15 as @e[tag=tbcMouseB3] at @s rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 16 as @e[tag=tbcMouseB3] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 16 run scoreboard players set damage tbcStats 10
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 16 run kill @e[tag=tbcMouseB3]
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/done


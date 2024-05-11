execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 1 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 1 run scoreboard players add n Random 4
execute if score @s tbcAttackStage matches 1 at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1.5
execute if score @s tbcAttackStage matches 1 if score n Random matches 7..7 run summon minecraft:armor_stand ^ ^1.160 ^2.7 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":532}}],Pose:{Head:[0.0f,90.0f,0.0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"dark_aqua"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 6..7 run summon minecraft:armor_stand ^ ^0.820 ^2.7 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":532}}],Pose:{Head:[0.0f,90.0f,0.0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"dark_aqua"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 5..7 run summon minecraft:armor_stand ^ ^0.480 ^2.7 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":532}}],Pose:{Head:[0.0f,90.0f,0.0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"dark_aqua"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 4..7 run summon minecraft:armor_stand ^ ^-0.14 ^2.7 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":532}}],Pose:{Head:[0.0f,90.0f,0.0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"dark_aqua"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 3..7 run summon minecraft:armor_stand ^ ^-0.76 ^2.7 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":532}}],Pose:{Head:[0.0f,90.0f,0.0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"dark_aqua"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 2..7 run summon minecraft:armor_stand ^ ^-1.38 ^2.7 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":532}}],Pose:{Head:[0.0f,90.0f,0.0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"dark_aqua"}
execute if score @s tbcAttackStage matches 1 run tag @e[type=armor_stand,tag=tbcTNT] add rand_sel
execute if score @s tbcAttackStage matches 1 run function glarth:util/rand_sel/2
execute if score @s tbcAttackStage matches 1 run tag @e[tag=rand_sel_result_1] add tbcBlockFake
execute if score @s tbcAttackStage matches 1 run tag @e[tag=rand_sel_result_2] add tbcBlockFake
execute if score @s tbcAttackStage matches 1 if score n Random matches 1..7 run summon minecraft:armor_stand ^ ^-2.00 ^2.7 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":532}}],Pose:{Head:[0.0f,90.0f,0.0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"dark_aqua"}
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcTNT,type=armor_stand] at @s positioned ~ ~1 ~ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand] feet run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score n Random matches 3 run scoreboard players set @s tbcAttackStage 11
execute if score @s tbcAttackStage matches 1 if score n Random matches 4 run scoreboard players set @s tbcAttackStage 9
execute if score @s tbcAttackStage matches 1 if score n Random matches 5 run scoreboard players set @s tbcAttackStage 7
execute if score @s tbcAttackStage matches 1 if score n Random matches 6 run scoreboard players set @s tbcAttackStage 5
execute if score @s tbcAttackStage matches 1 if score n Random matches 7 run scoreboard players set @s tbcAttackStage 3

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1,tag=!tbcBlockSkip] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 3 run tag @e[tag=tbcTarget,limit=1] remove tbcBlockSkip
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1,tag=!tbcBlockSkip] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 3 run tag @e[tag=tbcTarget,limit=1] remove tbcBlockSkip
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1,tag=!tbcBlockSkip] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 3 run tag @e[tag=tbcTarget,limit=1] remove tbcBlockSkip
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1,tag=!tbcBlockSkip] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 3 run tag @e[tag=tbcTarget,limit=1] remove tbcBlockSkip
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 11 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1,tag=!tbcBlockSkip] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 3 run tag @e[tag=tbcTarget,limit=1] remove tbcBlockSkip
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 13 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1,tag=!tbcBlockSkip] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 3 run tag @e[tag=tbcTarget,limit=1] remove tbcBlockSkip
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 15 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1,tag=!tbcBlockSkip] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 3 run tag @e[tag=tbcTarget,limit=1] remove tbcBlockSkip
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3..16 run function glarth:combat/action_enemy/helper/block2

execute if score @s tbcAttackStage matches 17 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 17 if entity @e[tag=tbcSelMarker,distance=..0.2] run tag @e[tag=tbcTarget,limit=1] remove tbcBlockSkip
execute if score @s tbcAttackStage matches 17 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done

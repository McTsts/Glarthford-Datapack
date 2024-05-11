execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 1 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 1 run scoreboard players add n Random 2
execute if score @s tbcAttackStage matches 1 at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1.5
execute if score @s tbcAttackStage matches 1 if score n Random matches 5..5 run summon minecraft:armor_stand ^ ^0.480 ^2.7 {ArmorItems:[{},{},{},{id:"diamond_hoe",tag:{CustomModelData:531},Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"gold"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 4..5 run summon minecraft:armor_stand ^ ^-0.14 ^2.7 {ArmorItems:[{},{},{},{id:"diamond_hoe",tag:{CustomModelData:531},Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"gold"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 3..5 run summon minecraft:armor_stand ^ ^-0.76 ^2.7 {ArmorItems:[{},{},{},{id:"diamond_hoe",tag:{CustomModelData:531},Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"gold"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 2..5 run summon minecraft:armor_stand ^ ^-1.38 ^2.7 {ArmorItems:[{},{},{},{id:"diamond_hoe",tag:{CustomModelData:531},Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"gold"}
execute if score @s tbcAttackStage matches 1 run tag @e[type=armor_stand,tag=tbcTNT] add rand_sel
execute if score @s tbcAttackStage matches 1 run function glarth:util/rand_sel/1
execute if score @s tbcAttackStage matches 1 run tag @e[tag=rand_sel_result] add tbcBlockFake
execute if score @s tbcAttackStage matches 1 if score n Random matches 1..5 run summon minecraft:armor_stand ^ ^-2.00 ^2.7 {ArmorItems:[{},{},{},{id:"diamond_hoe",tag:{CustomModelData:531},Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"gold"}
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcTNT,type=armor_stand] at @s positioned ~ ~1 ~ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand] feet run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score n Random matches 3 run scoreboard players set @s tbcAttackStage 7
execute if score @s tbcAttackStage matches 1 if score n Random matches 4 run scoreboard players set @s tbcAttackStage 5
execute if score @s tbcAttackStage matches 1 if score n Random matches 5 run scoreboard players set @s tbcAttackStage 3

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

execute if score @s tbcAttackStage matches 3..12 run function glarth:combat/action_enemy/helper/block2

execute if score @s tbcAttackStage matches 13 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 13 if entity @e[tag=tbcSelMarker,distance=..0.2] run tag @e[tag=tbcTarget,limit=1] remove tbcBlockSkip
execute if score @s tbcAttackStage matches 13 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done

execute if score @s tbcAttackStage matches 0 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with diamond_hoe{CustomModelData:272}
execute if score @s tbcAttackStage matches 0 as @e[tag=charQE,limit=1,sort=nearest] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..4] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 2 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 2 run scoreboard players add n Random 2
execute if score @s tbcAttackStage matches 2 at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1.5
execute if score @s tbcAttackStage matches 2 if score n Random matches 1..5 run summon minecraft:armor_stand ^ ^-2.00 ^2.0 {ArmorItems:[{},{},{},{id:"spruce_wood",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"gold"}
execute if score @s tbcAttackStage matches 2 if score n Random matches 2..5 run summon minecraft:armor_stand ^ ^-1.38 ^2.0 {ArmorItems:[{},{},{},{id:"spruce_wood",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"gold"}
execute if score @s tbcAttackStage matches 2 if score n Random matches 3..5 run summon minecraft:armor_stand ^ ^-0.76 ^2.0 {ArmorItems:[{},{},{},{id:"spruce_wood",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"gold"}
execute if score @s tbcAttackStage matches 2 if score n Random matches 4..5 run summon minecraft:armor_stand ^ ^-0.14 ^2.0 {ArmorItems:[{},{},{},{id:"spruce_wood",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"gold"}
execute if score @s tbcAttackStage matches 2 if score n Random matches 5..5 run summon minecraft:armor_stand ^ ^0.480 ^2.0 {ArmorItems:[{},{},{},{id:"spruce_wood",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"gold"}
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcTNT,type=armor_stand] at @s positioned ~ ~1 ~ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand] feet run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with diamond_hoe{CustomModelData:274}
execute if score @s tbcAttackStage matches 2 if score n Random matches 3 run scoreboard players set @s tbcAttackStage 8
execute if score @s tbcAttackStage matches 2 if score n Random matches 4 run scoreboard players set @s tbcAttackStage 6
execute if score @s tbcAttackStage matches 2 if score n Random matches 5 run scoreboard players set @s tbcAttackStage 4

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 15 as @e[type=armor_stand,tag=tbcTNT,sort=random,limit=1] positioned ~ ~5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 15 as @e[type=armor_stand,tag=tbcTNT,tag=!tbcTNTSel] at @s run tp @s ~ ~-0.62 ~
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 15 as @e[type=armor_stand,tag=tbcTNT,sort=random,limit=1] positioned ~ ~5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 15 as @e[type=armor_stand,tag=tbcTNT,tag=!tbcTNTSel] at @s run tp @s ~ ~-0.62 ~
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 8 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 15 as @e[type=armor_stand,tag=tbcTNT,sort=random,limit=1] positioned ~ ~5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 15 as @e[type=armor_stand,tag=tbcTNT,tag=!tbcTNTSel] at @s run tp @s ~ ~-0.62 ~
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 10 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 10 as @e[type=armor_stand,tag=tbcTNT,sort=random,limit=1] positioned ~ ~5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 10 as @e[type=armor_stand,tag=tbcTNT,tag=!tbcTNTSel] at @s run tp @s ~ ~-0.62 ~
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 12 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 10 as @e[type=armor_stand,tag=tbcTNT,sort=random,limit=1] positioned ~ ~5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 10 as @e[type=armor_stand,tag=tbcTNT,tag=!tbcTNTSel] at @s run tp @s ~ ~-0.62 ~
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4..13 run function glarth:combat/action_enemy/helper/block_weak
execute if score @s tbcAttackStage matches 4..6 rotated ~ 0 run tp @s ~ ~ ~ ~20 ~
execute if score @s tbcAttackStage matches 7..9 rotated ~ 0 run tp @s ~ ~ ~ ~25 ~
execute if score @s tbcAttackStage matches 10..13 rotated ~ 0 run tp @s ~ ~ ~ ~30 ~


execute if score @s tbcAttackStage matches 14 as @e[tag=charQE,limit=1,sort=nearest] run item replace entity @s armor.head with diamond_hoe{CustomModelData:272}
execute if score @s tbcAttackStage matches 14 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 15 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 15 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done

execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.15 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 2 at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1.5
execute if score @s tbcAttackStage matches 2 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 2 if score n Random matches 1 as @e[tag=tbcTargetAS,type=armor_stand] at @s rotated ~ ~ run summon minecraft:armor_stand ^ ^-1 ^2.2 {ArmorItems:[{},{},{},{id:"nautilus_shell",count:1}],Pose:{Head:[0.0f,90.0f,0.0f]},Tags:["tbcBone","tbc"],Marker:1,Glowing:1,Invulnerable:1,Fire:10000s}
execute if score @s tbcAttackStage matches 2 if score n Random matches 1..3 as @e[tag=tbcTargetAS,type=armor_stand] at @s rotated ~90 ~ run summon minecraft:armor_stand ^ ^-1 ^2.2 {ArmorItems:[{},{},{},{id:"nautilus_shell",count:1}],Pose:{Head:[0.0f,90.0f,0.0f]},Tags:["tbcBone","tbc"],Marker:1,Glowing:1,Invulnerable:1,Fire:10000s}
execute if score @s tbcAttackStage matches 2 if score n Random matches 1..3 as @e[tag=tbcTargetAS,type=armor_stand] at @s rotated ~-90 ~ run summon minecraft:armor_stand ^ ^-1 ^2.2 {ArmorItems:[{},{},{},{id:"nautilus_shell",count:1}],Pose:{Head:[0.0f,90.0f,0.0f]},Tags:["tbcBone","tbc"],Marker:1,Glowing:1,Invulnerable:1,Fire:10000s}
execute if score @s tbcAttackStage matches 2 if score n Random matches 3 as @e[tag=tbcTargetAS,type=armor_stand] at @s rotated ~ ~ run summon minecraft:armor_stand ^ ^-1 ^2.2 {ArmorItems:[{},{},{},{id:"nautilus_shell",count:1}],Pose:{Head:[0.0f,90.0f,0.0f]},Tags:["tbcBone","tbc"],Marker:1,Glowing:1,Invulnerable:1,Fire:10000s}
execute if score @s tbcAttackStage matches 2 if score n Random matches 3 as @e[tag=tbcTargetAS,type=armor_stand] at @s rotated ~180 ~ run summon minecraft:armor_stand ^ ^-1 ^2.2 {ArmorItems:[{},{},{},{id:"nautilus_shell",count:1}],Pose:{Head:[0.0f,90.0f,0.0f]},Tags:["tbcBone","tbc"],Marker:1,Glowing:1,Invulnerable:1,Fire:10000s}
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcBone,type=armor_stand] at @s positioned ~ ~1 ~ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand] feet run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 run tag @e[type=armor_stand,tag=tbcBone] add rand_sel
execute if score @s tbcAttackStage matches 2 run function glarth:util/rand_sel/4
execute if score @s tbcAttackStage matches 2 if score n Random matches 1 run scoreboard players add @s tbcAttackStage 3
execute if score @s tbcAttackStage matches 2 if score n Random matches 2 run scoreboard players add @s tbcAttackStage 5
execute if score @s tbcAttackStage matches 2 if score n Random matches 3 run scoreboard players add @s tbcAttackStage 1

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 20 run tag @e[tag=rand_sel_result_4,limit=1] add tbcBoneSel
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 20 run tag @e[tag=rand_sel_result_3,limit=1] add tbcBoneSel
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 20 run tag @e[tag=rand_sel_result_2,limit=1] add tbcBoneSel
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 20 run tag @e[tag=rand_sel_result_1,limit=1] add tbcBoneSel
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3..10 as @e[tag=tbcBone] at @s facing entity @e[tag=tbcTargetAS,limit=1] feet run tp @s ^0.1 ^ ^ ~ ~
execute if score @s tbcAttackStage matches 3..10 run function glarth:combat/action_enemy/helper/nautilus

execute if score @s tbcAttackStage matches 11 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 11 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done

execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 unless entity @s[tag=tbcCreeper] run scoreboard players set r Random 5
execute if score @s tbcAttackStage matches 1 if entity @s[tag=tbcCreeper] run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 1 at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1.5
execute if score @s tbcAttackStage matches 1 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 1 if score n Random matches 1..5 run summon minecraft:armor_stand ^ ^-2.00 ^2.7 {ArmorItems:[{},{},{},{id:"tnt",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"red"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 2..5 run summon minecraft:armor_stand ^ ^-1.38 ^2.7 {ArmorItems:[{},{},{},{id:"tnt",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"red"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 3..5 run summon minecraft:armor_stand ^ ^-0.76 ^2.7 {ArmorItems:[{},{},{},{id:"tnt",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"red"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 4..5 run summon minecraft:armor_stand ^ ^-0.14 ^2.7 {ArmorItems:[{},{},{},{id:"tnt",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"red"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 5..5 run summon minecraft:armor_stand ^ ^0.480 ^2.7 {ArmorItems:[{},{},{},{id:"tnt",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"red"}
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcTNT,type=armor_stand] at @s positioned ~ ~1 ~ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand] feet run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score n Random matches 1 run scoreboard players set @s tbcAttackStage 15
execute if score @s tbcAttackStage matches 1 if score n Random matches 2 run scoreboard players set @s tbcAttackStage 12
execute if score @s tbcAttackStage matches 1 if score n Random matches 3 run scoreboard players set @s tbcAttackStage 9
execute if score @s tbcAttackStage matches 1 if score n Random matches 4 run scoreboard players set @s tbcAttackStage 6
execute if score @s tbcAttackStage matches 1 if score n Random matches 5 run scoreboard players set @s tbcAttackStage 3

# 1
execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 20 as @e[tag=tbcTNT,limit=1,sort=random] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 1 1 1 0 7
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 10 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

#2
execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 5 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 20 as @e[tag=tbcTNT,limit=1,sort=random] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 8 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 1 1 1 0 7
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 10 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

#3
execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 5 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 20 as @e[tag=tbcTNT,limit=1,sort=random] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 11 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 1 1 1 0 7
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 10 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage
#4
execute if score @s tbcAttackStage matches 12 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 5 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 20 as @e[tag=tbcTNT,limit=1,sort=random] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 14 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 1 1 1 0 7
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 10 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage
#5
execute if score @s tbcAttackStage matches 15 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 5 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 20 as @e[tag=tbcTNT,limit=1,sort=random] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 17 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 1 1 1 0 7
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 10 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

# end
execute if score @s tbcAttackStage matches 3..17 run function glarth:combat/action_enemy/helper/tnt

execute if score @s tbcAttackStage matches 18 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 18 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done

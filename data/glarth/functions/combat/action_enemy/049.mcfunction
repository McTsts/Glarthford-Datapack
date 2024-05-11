execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..2] unless entity @s[tag=tbcEnderPriest] unless entity @s[tag=tbcVishnoldFake] run function glarth:dialogue/slime/lines/attack1
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 if entity @s[tag=tbcVishnoldBig] run scoreboard players set r Random 5
execute if score @s tbcAttackStage matches 1 if entity @s[tag=tbcVishnoldMedium] run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 1 if entity @s[tag=tbcVishnoldSmall] run scoreboard players set r Random 2
execute if score @s tbcAttackStage matches 1 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 1 run scoreboard players add n Random 3
execute if score @s tbcAttackStage matches 1 at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1.5
execute if score @s tbcAttackStage matches 1 if score n Random matches 1..8 run summon minecraft:armor_stand ^ ^-2.00 ^2.7 {ArmorItems:[{},{},{},{id:"slime_block",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"green"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 2..8 run summon minecraft:armor_stand ^ ^-1.38 ^2.7 {ArmorItems:[{},{},{},{id:"slime_block",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"green"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 3..8 run summon minecraft:armor_stand ^ ^-0.76 ^2.7 {ArmorItems:[{},{},{},{id:"slime_block",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"green"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 4..8 run summon minecraft:armor_stand ^ ^-0.14 ^2.7 {ArmorItems:[{},{},{},{id:"slime_block",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"green"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 5..8 run summon minecraft:armor_stand ^ ^0.480 ^2.7 {ArmorItems:[{},{},{},{id:"slime_block",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"green"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 6..8 run summon minecraft:armor_stand ^ ^1.100 ^2.7 {ArmorItems:[{},{},{},{id:"slime_block",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"green"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 7..8 run summon minecraft:armor_stand ^ ^1.720 ^2.7 {ArmorItems:[{},{},{},{id:"slime_block",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"green"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 8..8 run summon minecraft:armor_stand ^ ^2.34 ^2.7 {ArmorItems:[{},{},{},{id:"slime_block",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"green"}
execute if score @s tbcAttackStage matches 1 as @s[tag=tbcEnderPriest] run replaceitem entity @e[tag=tbcTNT] armor.head slime_block{CustomModelData:1}
execute if score @s tbcAttackStage matches 1 as @s[tag=tbcEnderPriest] run team join dark_purple @e[tag=tbcTNT] 
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcTNT,type=armor_stand] at @s positioned ~ ~1 ~ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand] feet run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score n Random matches 4 run scoreboard players set @s tbcAttackStage 11
execute if score @s tbcAttackStage matches 1 if score n Random matches 5 run scoreboard players set @s tbcAttackStage 9
execute if score @s tbcAttackStage matches 1 if score n Random matches 6 run scoreboard players set @s tbcAttackStage 7
execute if score @s tbcAttackStage matches 1 if score n Random matches 7 run scoreboard players set @s tbcAttackStage 5
execute if score @s tbcAttackStage matches 1 if score n Random matches 8 run scoreboard players set @s tbcAttackStage 3

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 11 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 13 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 15 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 17 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3..18 run function glarth:combat/action_enemy/helper/block

execute if score @s tbcAttackStage matches 19 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 19 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done

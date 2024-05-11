execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 if score evilAttackData Temp matches 1 run summon minecraft:armor_stand ^ ^-2.00 ^0.7 {ArmorItems:[{},{},{},{id:"egg",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"white"}
execute if score @s tbcAttackStage matches 1 if score evilAttackData Temp matches 2 run summon minecraft:armor_stand ^ ^-2.00 ^0.7 {ArmorItems:[{},{},{},{id:"snowball",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"white"}
execute if score @s tbcAttackStage matches 1 if score evilAttackData Temp matches 3 run summon minecraft:armor_stand ^ ^-2.00 ^0.7 {ArmorItems:[{},{},{},{id:"ink_sac",Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"gray"}
execute if score @s tbcAttackStage matches 1 if score evilAttackData Temp matches 4 run summon minecraft:armor_stand ^ ^-2.00 ^0.7 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:526}}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"gold"}
execute if score @s tbcAttackStage matches 1 if score evilAttackData Temp matches 5 run summon minecraft:armor_stand ^ ^-2.00 ^0.7 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:38}}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"gray"}
execute if score @s tbcAttackStage matches 1 if score evilAttackData Temp matches 6 run summon minecraft:armor_stand ^ ^-2.00 ^0.7 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:203}}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"green"}
execute if score @s tbcAttackStage matches 1 if score evilAttackData Temp matches 7 run summon minecraft:armor_stand ^ ^-2.00 ^0.7 {ArmorItems:[{},{},{},{id:"gold_nugget",Count:1,tag:{CustomModelData:1}}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"dark_purple"}
execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcStrength 60
execute if score @s tbcAttackStage matches 1 if score evilAttackData Temp matches 5..6 run scoreboard players add @s tbcStrength 50
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcTNT,type=armor_stand] at @s positioned ~ ~ ~ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand] feet run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage
execute if score @s tbcAttackStage matches 2..3 if score evilAttackData Temp matches 1 run function glarth:combat/action_enemy/helper/block_nospin
execute if score @s tbcAttackStage matches 2..3 if score evilAttackData Temp matches 2 run function glarth:combat/action_enemy/helper/block_slow
execute if score @s tbcAttackStage matches 2..3 if score evilAttackData Temp matches 3 run function glarth:combat/action_enemy/helper/block_blind
execute if score @s tbcAttackStage matches 2..3 if score evilAttackData Temp matches 4 run function glarth:combat/action_enemy/helper/block_pumpkin
execute if score @s tbcAttackStage matches 2..3 if score evilAttackData Temp matches 5 run function glarth:combat/action_enemy/helper/block_nospin
execute if score @s tbcAttackStage matches 2..3 if score evilAttackData Temp matches 6 run function glarth:combat/action_enemy/helper/block_poison
execute if score @s tbcAttackStage matches 2..3 if score evilAttackData Temp matches 7 run function glarth:combat/action_enemy/helper/block_poison

execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 6 run scoreboard players remove @s tbcStrength 60
execute if score @s tbcAttackStage matches 6 if score evilAttackData Temp matches 5..6 run scoreboard players remove @s tbcStrength 50
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/util/done

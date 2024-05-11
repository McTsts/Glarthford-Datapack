execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1.5
execute if score @s tbcAttackStage matches 1 run data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.skeleton.conjured","color":"gray"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:364}}]}
execute if score @s tbcAttackStage matches 1 run summon minecraft:armor_stand ^ ^-2.00 ^0.7 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:203}}],Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"green"}
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcTNT,type=armor_stand] at @s positioned ~ ~ ~ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand] feet run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 10 run data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.skeleton.conjured","color":"gray"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:204}}]}
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage
execute if score @s tbcAttackStage matches 2..3 run function glarth:combat/action_enemy/helper/block_poison

execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done

execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.15 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] unless entity @s[tag=tbcEnderPriest] unless entity @s[tag=tbcVishnoldFake] run function glarth:dialogue/slime/lines/attack2
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 if entity @s[tag=tbcVishnoldBig] run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 2 if entity @s[tag=tbcVishnoldMedium] run scoreboard players set r Random 2
execute if score @s tbcAttackStage matches 2 if entity @s[tag=tbcVishnoldFake] run scoreboard players set r Random 2
execute if score @s tbcAttackStage matches 2 if entity @s[tag=tbcVishnoldSmall] run scoreboard players set r Random 1
execute if score @s tbcAttackStage matches 2 at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1.5
execute if score @s tbcAttackStage matches 2 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 2 if score n Random matches 1..3 as @e[tag=tbcTargetAS,type=armor_stand] at @s rotated ~ ~ run summon minecraft:armor_stand ^ ^-1 ^2.2 {ArmorItems:[{},{},{},{id:slime_ball,Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcBone","tbc"],Marker:1,Glowing:1,Invulnerable:1,Fire:10000s,Team:"green"}
execute if score @s tbcAttackStage matches 2 if score n Random matches 1..3 as @e[tag=tbcTargetAS,type=armor_stand] at @s rotated ~90 ~ run summon minecraft:armor_stand ^ ^-1 ^2.2 {ArmorItems:[{},{},{},{id:slime_ball,Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcBone","tbc"],Marker:1,Glowing:1,Invulnerable:1,Fire:10000s,Team:"green"}
execute if score @s tbcAttackStage matches 2 if score n Random matches 1..3 as @e[tag=tbcTargetAS,type=armor_stand] at @s rotated ~-90 ~ run summon minecraft:armor_stand ^ ^-1 ^2.2 {ArmorItems:[{},{},{},{id:slime_ball,Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcBone","tbc"],Marker:1,Glowing:1,Invulnerable:1,Fire:10000s,Team:"green"}
execute if score @s tbcAttackStage matches 2 if score n Random matches 1..3 as @e[tag=tbcTargetAS,type=armor_stand] at @s rotated ~180 ~ run summon minecraft:armor_stand ^ ^-1 ^2.2 {ArmorItems:[{},{},{},{id:slime_ball,Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcBone","tbc"],Marker:1,Glowing:1,Invulnerable:1,Fire:10000s,Team:"green"}
execute if score @s tbcAttackStage matches 2 if score n Random matches 2..3 as @e[tag=tbcTargetAS,type=armor_stand] at @s rotated ~45 ~ run summon minecraft:armor_stand ^ ^-1 ^2.2 {ArmorItems:[{},{},{},{id:slime_ball,Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcBone","tbc"],Marker:1,Glowing:1,Invulnerable:1,Fire:10000s,Team:"green"}
execute if score @s tbcAttackStage matches 2 if score n Random matches 3 as @e[tag=tbcTargetAS,type=armor_stand] at @s rotated ~-45 ~ run summon minecraft:armor_stand ^ ^-1 ^2.2 {ArmorItems:[{},{},{},{id:slime_ball,Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcBone","tbc"],Marker:1,Glowing:1,Invulnerable:1,Fire:10000s,Team:"green"}
execute if score @s tbcAttackStage matches 2 if score n Random matches 3 as @e[tag=tbcTargetAS,type=armor_stand] at @s rotated ~135 ~ run summon minecraft:armor_stand ^ ^-1 ^2.2 {ArmorItems:[{},{},{},{id:slime_ball,Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcBone","tbc"],Marker:1,Glowing:1,Invulnerable:1,Fire:10000s,Team:"green"}
execute if score @s tbcAttackStage matches 2 if score n Random matches 2..3 as @e[tag=tbcTargetAS,type=armor_stand] at @s rotated ~-135 ~ run summon minecraft:armor_stand ^ ^-1 ^2.2 {ArmorItems:[{},{},{},{id:slime_ball,Count:1}],Pose:{Head:[0f,90f,0f]},Tags:["tbcBone","tbc"],Marker:1,Glowing:1,Invulnerable:1,Fire:10000s,Team:"green"}
execute if score @s tbcAttackStage matches 2 as @s[tag=tbcEnderPriest] run item replace entity @e[tag=tbcBone] armor.head with slime_ball{CustomModelData:1}
execute if score @s tbcAttackStage matches 2 as @s[tag=tbcEnderPriest] run team join dark_purple @e[tag=tbcBone] 
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcBone,type=armor_stand] at @s positioned ~ ~1 ~ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand] feet run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 run tag @e[type=armor_stand,tag=tbcBone] add rand_sel
execute if score @s tbcAttackStage matches 2 run function glarth:util/rand_sel/8
execute if score @s tbcAttackStage matches 2 if score n Random matches 1 run scoreboard players set @s tbcAttackStage 11
execute if score @s tbcAttackStage matches 2 if score n Random matches 2 run scoreboard players set @s tbcAttackStage 7
execute if score @s tbcAttackStage matches 2 if score n Random matches 3 run scoreboard players set @s tbcAttackStage 3

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run tag @e[tag=rand_sel_result_8,limit=1] add tbcBoneSel
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 5 run tag @e[tag=rand_sel_result_7,limit=1] add tbcBoneSel
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 5 run tag @e[tag=rand_sel_result_6,limit=1] add tbcBoneSel
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 5 run tag @e[tag=rand_sel_result_5,limit=1] add tbcBoneSel
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 11 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 5 run tag @e[tag=rand_sel_result_4,limit=1] add tbcBoneSel
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 13 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 5 run tag @e[tag=rand_sel_result_3,limit=1] add tbcBoneSel
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 15 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 5 run tag @e[tag=rand_sel_result_2,limit=1] add tbcBoneSel
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 17 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 5 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 5 run tag @e[tag=rand_sel_result_1,limit=1] add tbcBoneSel
execute if score @s tbcAttackStage matches 17 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3..18 as @e[tag=tbcBone] at @s if entity @e[tag=tbcTargetAS,limit=1,distance=..0.4] facing entity @e[tag=tbcTargetAS,limit=1] feet run tp @s ^0.05 ^ ^ ~ ~
execute if score @s tbcAttackStage matches 3..18 as @e[tag=tbcBone] at @s unless entity @e[tag=tbcTargetAS,limit=1,distance=..0.4] facing entity @e[tag=tbcTargetAS,limit=1] feet run tp @s ^0.2 ^ ^ ~ ~
execute if score @s tbcAttackStage matches 3..18 run function glarth:combat/action_enemy/helper/nautilus

execute if score @s tbcAttackStage matches 19 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 19 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done

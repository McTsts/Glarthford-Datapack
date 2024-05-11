execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage


execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 at @s run tp @s ~ ~0.2 ~
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 at @s run tp @s ~ ~-0.4 ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcShockwave"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 run scoreboard players set @s tbcAttackTimerX 0
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimerX 1
execute if score @s tbcAttackStage matches 3 run scoreboard players operation length tbcWhip = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 3 run scoreboard players operation length tbcWhip /= 2 Const
execute if score @s tbcAttackStage matches 5 run scoreboard players set rotation tbcWhip 1
execute if score @s tbcAttackStage matches 3 run scoreboard players set dir tbcWhip -3
execute if score @s tbcAttackStage matches 3 as @e[tag=tbcShockwave,type=area_effect_cloud,limit=1] at @s rotated ~90 ~ run function glarth:combat/action_enemy/helper/whip_fire
execute if score @s tbcAttackStage matches 3 run scoreboard players operation length tbcWhip = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 3 run scoreboard players operation length tbcWhip /= 2 Const
execute if score @s tbcAttackStage matches 5 run scoreboard players set rotation tbcWhip 1
execute if score @s tbcAttackStage matches 3 run scoreboard players set dir tbcWhip 3
execute if score @s tbcAttackStage matches 3 as @e[tag=tbcShockwave,type=area_effect_cloud,limit=1] at @s rotated ~-90 ~ run function glarth:combat/action_enemy/helper/whip_fire
execute if score @s tbcAttackStage matches 3 as @e[tag=tbcShockwave,type=area_effect_cloud,limit=1] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.18 ~ ~
execute if score @s tbcAttackStage matches 3 if entity @e[tag=tbcWhipHit,tag=tbcTargetAS] unless score @s tbcAttackTimerX matches 60.. run scoreboard players set @s tbcAttackTimerX 60
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimerX matches 62.. run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 1 run tag @e[tag=tbcPlayerAS,type=armor_stand] remove tbcWhipHit
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 1 run kill @e[tag=tbcShockwave,type=area_effect_cloud]
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done
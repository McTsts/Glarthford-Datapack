execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 42 run data merge entity @s {NoGravity:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 45 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 positioned ^ ^4 ^4 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 46.. unless block ~ ~-0.1 ~ air run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5 at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcShockwave"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5 run scoreboard players set @s tbcAttackTimerX 0
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimerX 1
execute if score @s tbcAttackStage matches 2 run scoreboard players operation length tbcWhip = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 4 run scoreboard players set rotation tbcWhip 1
execute if score @s tbcAttackStage matches 2 run scoreboard players set dir tbcWhip -3
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcShockwave,type=area_effect_cloud,limit=1] at @s rotated ~90 ~ run function glarth:combat/action_enemy/helper/whip_crit
execute if score @s tbcAttackStage matches 2 run scoreboard players operation length tbcWhip = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 4 run scoreboard players set rotation tbcWhip 1
execute if score @s tbcAttackStage matches 2 run scoreboard players set dir tbcWhip 3
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcShockwave,type=area_effect_cloud,limit=1] at @s rotated ~-90 ~ run function glarth:combat/action_enemy/helper/whip_crit
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcShockwave,type=area_effect_cloud,limit=1] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.25 ~ ~
execute if score @s tbcAttackStage matches 2 if entity @e[tag=tbcWhipHit,tag=tbcTargetAS] unless score @s tbcAttackTimerX matches 30.. run scoreboard players set @s tbcAttackTimerX 30
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimerX matches 32.. run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1 run tag @e[tag=tbcPlayerAS,type=armor_stand] remove tbcWhipHit
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1 run kill @e[tag=tbcShockwave,type=area_effect_cloud]
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done
execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run data merge entity @s {Sitting:0b}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 at @e[tag=tbcMarkerMiddle,type=area_effect_cloud] facing entity @e[tag=tbcBoss] eyes rotated ~ 0 positioned ^ ^ ^2 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbcTempMarker","tbc"]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..4] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 facing entity @e[tag=tbcTempMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 2 if entity @e[tag=tbcTempMarker,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 at @e[tag=tbcSelMarker] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbcTempSelMarker","tbc"]}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run tag @e[tag=tbcSelMarker] add tbcTempSelMarkerX
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run tp @e[tag=tbcSelMarker] @s
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run data merge entity @s {Sitting:1b}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run tag @e[tag=tbcEnemy,type=armor_stand] add tbcLonely
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run tag @e[tag=tbcEnemy,type=armor_stand] add tbcUnselectable
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run scoreboard players set @e[tag=tbcEnemy,type=armor_stand] tbcSel 0
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run scoreboard players set @e[tag=tbcNecromancer] tbcQueue -100000
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run scoreboard players set @s tbcSel 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run function glarth:combat/selection
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run kill @e[tag=tbcTempMarker,type=area_effect_cloud]
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/done
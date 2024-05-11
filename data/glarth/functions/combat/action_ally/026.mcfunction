execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_ally/util/next_stage


execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,distance=..0.3,type=area_effect_cloud] run summon wolf ~1.5 ~ ~ {NoAI:1,Rotation:[180f,0f],Tags:["tbcAdriDog","tbc"]}
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,distance=..0.3,type=area_effect_cloud] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 2 as @e[tag=tbcAdriDog] at @s facing entity @e[scores={tbcSel=1},type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcAdriDog] at @s if entity @e[scores={tbcSel=1},distance=..1.4,type=armor_stand] as @e[tag=tbcTurn] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 2 run particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 2 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 2 run scoreboard players operation damage tbcStats *= 2 Const
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 2 as @e[scores={tbcSel=1},type=armor_stand] run function glarth:combat/action_ally/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 4 run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 4 as @e[tag=tbcAdriDog] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcAdriDog] at @s if entity @e[tag=tbcMarkerMiddle,distance=..2.0,type=area_effect_cloud] as @e[tag=tbcTurn] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 5 as @e[tag=tbcAdriDog] at @s facing entity @e[tag=tbcSelMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcSelMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.11,type=area_effect_cloud] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 2 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 2 as @e[tag=tbcAdriDog] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 2 as @e[tag=tbcAdriDog] run data merge entity @s {Sitting:1b}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 35 run effect give @e[tag=tbcAdriDog] invisibility 10 0 true
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 35 run tp @e[tag=tbcAdriDog] 0 0 0
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 40 run kill @e[tag=tbcAdriDog]
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 40 run function glarth:combat/action_ally/util/done
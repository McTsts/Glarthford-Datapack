execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.1 10
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run summon cat ~ ~ ~ {CatType:3,NoAI:1,Rotation:[150f,0f],CustomName:'{"translate":"suso","color":"blue"}',CustomNameVisible:1,Tags:["tbcSusoCat","tbc"]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run tp @s 0 0 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run data merge entity @s {CustomNameVisible:0,NoGravity:1}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_ally/util/next_stage


execute if score @s tbcAttackStage matches 1 as @e[tag=tbcSusoCat] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcSusoCat] at @s if entity @e[tag=tbcMarkerMiddle,distance=..0.3,type=area_effect_cloud] as @e[tag=tbcTurn] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 2 as @e[tag=tbcSusoCat] at @s facing entity @e[scores={tbcSel=1},type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcSusoCat] at @s if entity @e[scores={tbcSel=1},distance=..1.4,type=armor_stand] as @e[tag=tbcTurn] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 as @e[tag=tbcSusoCat] at @s if score @s tbcAttackTimer matches 5 run particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run scoreboard players operation damage tbcStats *= 2 Const
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run scoreboard players operation damage tbcStats -= @e[scores={tbcSel=1}] tbcArmor
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 as @e[scores={tbcSel=1},type=armor_stand] run function glarth:combat/action_enemy/dodge
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 as @e[scores={tbcSel=1},type=armor_stand] run function glarth:combat/action_ally/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 4 as @e[tag=tbcSusoCat] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcSusoCat] at @s if entity @e[tag=tbcMarkerMiddle,distance=..0.2,type=area_effect_cloud] as @e[tag=tbcTurn] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 5 as @e[tag=tbcSusoCat] at @s facing entity @e[tag=tbcSelMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 5 as @e[tag=tbcSusoCat] at @s if entity @e[tag=tbcSelMarker,distance=..0.2,type=area_effect_cloud] as @e[tag=tbcTurn] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 2 as @e[tag=tbcSusoCat] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 2 at @e[tag=tbcSusoCat] run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 10 run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.1 10
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 10 as @e[tag=tbcSusoCat] run effect give @s invisibility 10 0 true
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 10 as @e[tag=tbcSusoCat] run tp @s 0 0 0
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 20 run kill @e[tag=tbcSusoCat] 
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 10 run data merge entity @s {CustomNameVisible:1,NoGravity:0}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_ally/util/done
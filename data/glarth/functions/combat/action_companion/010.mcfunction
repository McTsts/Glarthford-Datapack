execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run playsound minecraft:entity.cat.ambient neutral @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run tag @e[scores={tbcSel=1}] add tbcTempTarget
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 if entity @e[tag=tbcTempTarget,tag=tbcBlock] run scoreboard players set @e[tag=tbcEnemy] tbcSel 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 if entity @e[tag=tbcTempTarget,tag=tbcBlock] run scoreboard players set @e[tag=tbcEnemy,sort=nearest,limit=1,tag=!tbcUnselectable] tbcSel 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run data merge entity @s {Sitting:0b,NoGravity:1}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,distance=..0.3,type=area_effect_cloud] run playsound minecraft:entity.cat.hiss neutral @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,distance=..0.3,type=area_effect_cloud] run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 2 facing entity @e[scores={tbcSel=1}] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 2 if entity @e[scores={tbcSel=1},distance=..2.4] run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1..5 run tp @s ^ ^0.2 ^0.2 ~ 0
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 1..4 run tp @s ^ ^-0.2 ^ ~ 0
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 5 run particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 5 run scoreboard players set damage tbcStats 50
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 5 if entity @e[scores={tbcSel=1},tag=tbcCreeperType] run scoreboard players set damage tbcStats 200
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 5 run scoreboard players operation damage tbcStats -= @e[scores={tbcSel=1}] tbcArmor
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 5 as @e[scores={tbcSel=1}] run function glarth:combat/action_enemy/dodge
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 5 as @e[scores={tbcSel=1}] run function glarth:combat/action_companion/util/damage
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcMarkerMiddle,distance=..0.11,type=area_effect_cloud] run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 6 facing entity @e[tag=tbcSelcMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 6 if entity @e[tag=tbcSelcMarker,distance=..0.11,type=area_effect_cloud] run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 7 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 2 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 5 run data merge entity @s {Sitting:1b,NoGravity:0}
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 5 if entity @e[tag=tbcTempTarget,tag=!tbcUnselectable] run scoreboard players set @e[tag=tbcEnemy] tbcSel 0
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 5 if entity @e[tag=tbcTempTarget,tag=!tbcUnselectable] run scoreboard players set @e[tag=tbcTempTarget] tbcSel 1
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 5 run tag @e[tag=tbcEnemy] remove tbcTempTarget
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_companion/util/done
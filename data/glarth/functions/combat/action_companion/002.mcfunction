execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run tag @e[scores={tbcSel=1}] add tbcTempTarget
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,distance=..0.3,type=area_effect_cloud] run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 2 facing entity @e[scores={tbcSel=1}] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 2 if entity @e[scores={tbcSel=1},distance=..1.4] run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 if score enemies tbcStats matches 2.. run scoreboard players set damage tbcStats 25
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 if score enemies tbcStats matches ..1 run scoreboard players set damage tbcStats 40
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run scoreboard players operation damage tbcStats -= @e[scores={tbcSel=1}] tbcArmor
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 as @e[scores={tbcSel=1}] run function glarth:combat/action_enemy/dodge
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 as @e[scores={tbcSel=1}] run function glarth:combat/action_companion/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 4 facing entity @e[tag=tbcMarkerMiddleB,type=area_effect_cloud,limit=1,sort=nearest] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcMarkerMiddleB,distance=..0.3,type=area_effect_cloud,limit=1,sort=nearest] run scoreboard players set @e[tag=tbcEnemy] tbcSel 0
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcMarkerMiddleB,distance=..0.3,type=area_effect_cloud,limit=1,sort=nearest] run scoreboard players set @e[tag=tbcEnemy,sort=furthest,limit=1,tag=!tbcUnselectable] tbcSel 1
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcMarkerMiddleB,distance=..0.3,type=area_effect_cloud,limit=1,sort=nearest] if score enemies tbcStats matches ..1 run scoreboard players set @s tbcAttackStage 10
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcMarkerMiddleB,distance=..0.3,type=area_effect_cloud,limit=1,sort=nearest] if entity @e[tag=tbcEnemy] run function glarth:combat/action_companion/util/next_stage
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcMarkerMiddleB,distance=..0.3,type=area_effect_cloud,limit=1,sort=nearest] unless entity @e[tag=tbcEnemy] run scoreboard players set @s tbcAttackStage 10

execute if score @s tbcAttackStage matches 5 facing entity @e[scores={tbcSel=1},limit=1,sort=nearest] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[scores={tbcSel=1},distance=..1.4,limit=1,sort=nearest] run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 5 run particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 5 run scoreboard players set damage tbcStats 25
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 5 run scoreboard players operation damage tbcStats -= @e[scores={tbcSel=1}] tbcArmor
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 5 as @e[scores={tbcSel=1}] run function glarth:combat/action_enemy/dodge
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 5 as @e[scores={tbcSel=1}] run function glarth:combat/action_companion/util/damage
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 7 facing entity @e[tag=tbcMarkerMiddleB,type=area_effect_cloud,limit=1,sort=nearest] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 7 if entity @e[tag=tbcMarkerMiddleB,distance=..0.3,type=area_effect_cloud,limit=1,sort=nearest] run scoreboard players set @e[tag=tbcEnemy] tbcSel 0
execute if score @s tbcAttackStage matches 7 if entity @e[tag=tbcMarkerMiddleB,distance=..0.3,type=area_effect_cloud,limit=1,sort=nearest] run scoreboard players set @e[tag=tbcEnemy,sort=furthest,limit=1,tag=!tbcUnselectable] tbcSel 1
execute if score @s tbcAttackStage matches 7 if entity @e[tag=tbcMarkerMiddleB,distance=..0.3,type=area_effect_cloud,limit=1,sort=nearest] if entity @e[tag=tbcEnemy] run function glarth:combat/action_companion/util/next_stage
execute if score @s tbcAttackStage matches 7 if entity @e[tag=tbcMarkerMiddleB,distance=..0.3,type=area_effect_cloud,limit=1,sort=nearest] unless entity @e[tag=tbcEnemy] run scoreboard players set @s tbcAttackStage 10

execute if score @s tbcAttackStage matches 8 facing entity @e[scores={tbcSel=1},limit=1,sort=nearest] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 8 if entity @e[scores={tbcSel=1},distance=..1.4,limit=1,sort=nearest] run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 5 run particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 5 run scoreboard players set damage tbcStats 25
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 5 run scoreboard players operation damage tbcStats -= @e[scores={tbcSel=1}] tbcArmor
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 5 as @e[scores={tbcSel=1}] run function glarth:combat/action_enemy/dodge
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 5 as @e[scores={tbcSel=1}] run function glarth:combat/action_companion/util/damage
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 10 facing entity @e[tag=tbcSelcMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 10 if entity @e[tag=tbcSelcMarker,distance=..0.3,type=area_effect_cloud] run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 11 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 2 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 5 if entity @e[tag=tbcTempTarget,tag=!tbcUnselectable] run scoreboard players set @e[tag=tbcEnemy] tbcSel 0
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 5 if entity @e[tag=tbcTempTarget,tag=!tbcUnselectable] run scoreboard players set @e[tag=tbcTempTarget] tbcSel 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 5 run tag @e[tag=tbcEnemy] remove tbcTempTarget
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_companion/util/done
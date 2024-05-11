execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run playsound minecraft:entity.cat.ambient neutral @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run data merge entity @s {Sitting:0b}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,distance=..0.3,type=area_effect_cloud] run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 01.. as @e[tag=tbcExclaim] at @s run tp @s ~ ~0.05 ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 01 run data merge entity @s {Sitting:1b}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 facing entity @e[tag=tbcEnemy1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 if entity @e[tag=tbcEnemy1] run playsound minecraft:entity.cat.hiss neutral @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 unless entity @e[tag=tbcEnemy1] run scoreboard players set @s tbcAttackTimer 35
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 as @e[tag=tbcEnemy1] at @s run summon minecraft:armor_stand ^ ^1.5 ^1 {Invisible:1,Marker:1,NoGravity:1,CustomNameVisible:1,CustomName:'{"text":"! ! !","color":"red"}',Tags:["tbc","tbcExclaim"]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 17..35 as @e[tag=tbcEnemy1] at @s run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 35 run kill @e[tag=tbcExclaim]

execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 36 facing entity @e[tag=tbcEnemy2] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 36 if entity @e[tag=tbcEnemy2] run playsound minecraft:entity.cat.hiss neutral @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 36 unless entity @e[tag=tbcEnemy2] run scoreboard players set @s tbcAttackTimer 55
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 36 as @e[tag=tbcEnemy2] at @s run summon minecraft:armor_stand ^ ^1.5 ^1 {Invisible:1,Marker:1,NoGravity:1,CustomNameVisible:1,CustomName:'{"text":"! ! !","color":"red"}',Tags:["tbc","tbcExclaim"]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 37..55 as @e[tag=tbcEnemy2] at @s run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 55 run kill @e[tag=tbcExclaim]

execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 56 facing entity @e[tag=tbcEnemy3] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 56 if entity @e[tag=tbcEnemy3] run playsound minecraft:entity.cat.hiss neutral @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 56 unless entity @e[tag=tbcEnemy3] run scoreboard players set @s tbcAttackTimer 75
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 56 as @e[tag=tbcEnemy3] at @s run summon minecraft:armor_stand ^ ^1.5 ^1 {Invisible:1,Marker:1,NoGravity:1,CustomNameVisible:1,CustomName:'{"text":"! ! !","color":"red"}',Tags:["tbc","tbcExclaim"]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 57..75 as @e[tag=tbcEnemy3] at @s run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 75 run kill @e[tag=tbcExclaim]

execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 76 as @e[tag=tbcEnemy] run scoreboard players set @s tbcQueue 8
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 76 as @e[tag=tbcEnemy] run scoreboard players operation @s tbcQueue -= @s tbcSpeed
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 76 run data merge entity @s {Sitting:0b}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 76 run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 3 facing entity @e[tag=tbcSelcMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 3 if entity @e[tag=tbcSelcMarker,distance=..0.11,type=area_effect_cloud] run function glarth:combat/action_companion/util/next_stage

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 2 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 5 run data merge entity @s {Sitting:1b}
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_companion/util/done
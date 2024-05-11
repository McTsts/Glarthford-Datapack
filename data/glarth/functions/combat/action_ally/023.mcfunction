execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run particle cloud ~ ~ ~ 0.3 0.3 0.3 0.1 10
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run summon cat ~ ~ ~ {CatType:3,NoAI:1,Rotation:[150f,0f],CustomName:'{"translate":"suso","color":"blue"}',CustomNameVisible:1,Tags:["tbcSusoCat","tbc"]}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run tp @s 0 0 0
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run data merge entity @s {CustomNameVisible:0,NoGravity:1}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_ally/util/next_stage


execute if score @s tbcAttackStage matches 1 as @e[tag=tbcSusoCat] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.3 ~ ~
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcSusoCat] at @s if entity @e[tag=tbcMarkerMiddle,distance=..0.3,type=area_effect_cloud] as @e[tag=tbcTurn] run function glarth:combat/action_ally/util/next_stage




execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 01.. as @e[tag=tbcExclaim] at @s run tp @s ~ ~0.05 ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 01 as @e[tag=tbcSusoCat] at @s run data merge entity @s {Sitting:1b}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 10..16 as @e[tag=tbcSusoCat] at @s facing entity @e[tag=tbcEnemy5] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 if entity @e[tag=tbcEnemy5] run playsound minecraft:entity.cat.hiss neutral @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 unless entity @e[tag=tbcEnemy5] run scoreboard players set @s tbcAttackTimer 35
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 as @e[tag=tbcEnemy5] at @s run summon minecraft:armor_stand ^ ^1.5 ^1 {Invisible:1,Marker:1,NoGravity:1,CustomNameVisible:1,CustomName:'{"text":"! ! !","color":"red"}',Tags:["tbc","tbcExclaim"]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 17..35 as @e[tag=tbcEnemy5] at @s run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 35 run kill @e[tag=tbcExclaim]

execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 30..36 as @e[tag=tbcSusoCat] at @s facing entity @e[tag=tbcEnemy3] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 36 if entity @e[tag=tbcEnemy3] run playsound minecraft:entity.cat.hiss neutral @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 36 unless entity @e[tag=tbcEnemy3] run scoreboard players set @s tbcAttackTimer 55
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 36 as @e[tag=tbcEnemy3] at @s run summon minecraft:armor_stand ^ ^1.5 ^1 {Invisible:1,Marker:1,NoGravity:1,CustomNameVisible:1,CustomName:'{"text":"! ! !","color":"red"}',Tags:["tbc","tbcExclaim"]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 37..55 as @e[tag=tbcEnemy3] at @s run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 55 run kill @e[tag=tbcExclaim]

execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50..56 as @e[tag=tbcSusoCat] at @s facing entity @e[tag=tbcEnemy1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 56 if entity @e[tag=tbcEnemy1] run playsound minecraft:entity.cat.hiss neutral @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 56 unless entity @e[tag=tbcEnemy1] run scoreboard players set @s tbcAttackTimer 75
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 56 as @e[tag=tbcEnemy1] at @s run summon minecraft:armor_stand ^ ^1.5 ^1 {Invisible:1,Marker:1,NoGravity:1,CustomNameVisible:1,CustomName:'{"text":"! ! !","color":"red"}',Tags:["tbc","tbcExclaim"]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 57..75 as @e[tag=tbcEnemy1] at @s run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 75 run kill @e[tag=tbcExclaim]

execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 70..76 as @e[tag=tbcSusoCat] at @s facing entity @e[tag=tbcEnemy2] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 76 if entity @e[tag=tbcEnemy2] run playsound minecraft:entity.cat.hiss neutral @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 76 unless entity @e[tag=tbcEnemy2] run scoreboard players set @s tbcAttackTimer 95
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 76 as @e[tag=tbcEnemy2] at @s run summon minecraft:armor_stand ^ ^1.5 ^1 {Invisible:1,Marker:1,NoGravity:1,CustomNameVisible:1,CustomName:'{"text":"! ! !","color":"red"}',Tags:["tbc","tbcExclaim"]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 77..95 as @e[tag=tbcEnemy2] at @s run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 95 run kill @e[tag=tbcExclaim]

execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 90..96 as @e[tag=tbcSusoCat] at @s facing entity @e[tag=tbcEnemy4] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 96 if entity @e[tag=tbcEnemy4] run playsound minecraft:entity.cat.hiss neutral @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 96 unless entity @e[tag=tbcEnemy4] run scoreboard players set @s tbcAttackTimer 115
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 96 as @e[tag=tbcEnemy4] at @s run summon minecraft:armor_stand ^ ^1.5 ^1 {Invisible:1,Marker:1,NoGravity:1,CustomNameVisible:1,CustomName:'{"text":"! ! !","color":"red"}',Tags:["tbc","tbcExclaim"]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 97..115 as @e[tag=tbcEnemy4] at @s run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 115 run kill @e[tag=tbcExclaim]

execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 116 as @e[tag=tbcEnemy] run scoreboard players set @s tbcQueue 8
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 116 as @e[tag=tbcEnemy] run scoreboard players operation @s tbcQueue -= @s tbcSpeed
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 116 as @e[tag=tbcSusoCat] at @s run data merge entity @s {Sitting:0b}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 116 run function glarth:combat/action_companion/util/next_stage


execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_companion/util/next_stage




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
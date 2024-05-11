execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run function glarth:combat/action_ally/helper/store_target
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1 run function glarth:combat/action_ally/helper/get_target
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_ally/util/next_stage


execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,distance=..3.0,type=area_effect_cloud] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 rotated ~ 0 positioned ^ ^ ^1.5 run function ench:table/place
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 run tag @e[tag=etMain] add forceOpen
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 15 run tag @e[tag=etMain] add bookSpin
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 15.. as @e[tag=etMain] at @s facing entity @e[scores={tbcSel=1},type=armor_stand,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^0.2
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 15.. as @e[tag=etMain] at @s if entity @e[scores={tbcSel=1},type=armor_stand,limit=1,distance=..1.5] as @e[tag=tbcTurn] run function glarth:combat/action_ally/util/next_stage
execute if score @s tbcAttackStage matches 2..3 run function ench:main

execute if score @s tbcAttackStage matches 3 run scoreboard players set damage tbcStats 30
execute if score @s tbcAttackStage matches 3 as @e[scores={tbcSel=1},type=armor_stand] run function glarth:combat/action_enemy/dodge
execute if score @s tbcAttackStage matches 3 run scoreboard players set r Random 4
execute if score @s tbcAttackStage matches 3 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 3 if score n Random matches 1 run scoreboard players set fire tbcStats 2
execute if score @s tbcAttackStage matches 3 if score n Random matches 2 run scoreboard players set poison tbcStats 2
execute if score @s tbcAttackStage matches 3 if score n Random matches 3 run scoreboard players set stun tbcStats 2
execute if score @s tbcAttackStage matches 3 if score n Random matches 4 run scoreboard players set freeze tbcStats 2
execute if score @s tbcAttackStage matches 3 if score dodged tbcStats matches 0 if score n Random matches 1 at @e[tag=etMain] run particle flame ~ ~0.5 ~ 1 1 1 0.2 35
execute if score @s tbcAttackStage matches 3 if score dodged tbcStats matches 0 if score n Random matches 1 at @e[tag=etMain] run particle lava ~ ~0.5 ~ 1 1 1 1 35
execute if score @s tbcAttackStage matches 3 if score dodged tbcStats matches 0 if score n Random matches 2 at @e[tag=etMain] run particle witch ~ ~0.5 ~ 1 1 1 1 35
execute if score @s tbcAttackStage matches 3 if score dodged tbcStats matches 0 if score n Random matches 2 at @e[tag=etMain] run particle minecraft:spore_blossom_air ~ ~0.5 ~ 1 1 1 1 35
execute if score @s tbcAttackStage matches 3 if score dodged tbcStats matches 0 if score n Random matches 3 at @e[tag=etMain] run particle crit ~ ~0.5 ~ 1 1 1 1 70
execute if score @s tbcAttackStage matches 3 if score dodged tbcStats matches 0 if score n Random matches 3 at @e[tag=etMain] run summon minecraft:lightning_bolt ~ ~ ~
execute if score @s tbcAttackStage matches 3 if score dodged tbcStats matches 0 if score n Random matches 4 at @e[tag=etMain] run particle snowflake ~ ~0.5 ~ 1 1 1 0.2 35
execute if score @s tbcAttackStage matches 3 if score dodged tbcStats matches 0 if score n Random matches 4 at @e[tag=etMain] run particle splash ~ ~0.5 ~ 1 1 1 0.2 35
execute if score @s tbcAttackStage matches 3 as @e[scores={tbcSel=1},type=armor_stand] run function glarth:combat/action_ally/util/damage
execute if score @s tbcAttackStage matches 3 run kill @e[tag=et]
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 4 facing entity @e[tag=tbcSelMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcSelMarker,distance=..0.3,type=area_effect_cloud] run function glarth:combat/action_ally/util/next_stage

execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 2 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 2 run function glarth:combat/action_ally/helper/load_target
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_ally/util/done
# to middle
execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

# transform
execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTargetAS,type=armor_stand] at @s positioned ^-2 ^ ^1 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbcTempMarker","tbc"]}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=200]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 2 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=199]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 3 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=198]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 4 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=197]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=196]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 6 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=195]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 7 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=194]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 8 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=193]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 9 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=192]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 10 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=191]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 11 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=190]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 12 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=189]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 13 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=188]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 14 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=187]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 15 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=186]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=185]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 17 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=184]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 18 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=183]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 19 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=182]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=181]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 21 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=180]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 22 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=179]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 23 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=178]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 24 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=177]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 25 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=176]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 26 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=175]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 27 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=174]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 28 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=173]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 29 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=172]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 30 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=171]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 31 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=170]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 32 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=169]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 33 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=168]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 34 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=167]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 35 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=166]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 36 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=165]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 37 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=164]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 38 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=163]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 39 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=162]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 40 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=161]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 41 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=160]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 42 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=159]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 43 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=158]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 44 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=157]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 45 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=156]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 46 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=155]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 47 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=154]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 48 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=153]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 49 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=152]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=151]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 51 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=150]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 52 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=149]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 53 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=148]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 54 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=147]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 55 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=146]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 56 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=145]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 57 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=144]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 58 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=143]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 59 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=142]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 60 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=141]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 61 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=140]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 62 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=139]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 63 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=138]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 64 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=137]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 65 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=136]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 66 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=135]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 67 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=134]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 68 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=133]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 69 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=132]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 70 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=131]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 71 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=130]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 72 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=129]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 73 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=128]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 74 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=127]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 75 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=126]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 76 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=125]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 77 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=124]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 78 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=123]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 79 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=122]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 80 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=121]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 81 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=120]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 82 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=119]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 83 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=118]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 84 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=117]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 85 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=116]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 86 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=115]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 87 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=114]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 88 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=113]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 89 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=112]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 90 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=111]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 91 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=110]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 92 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=109]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 93 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=108]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 94 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=107]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 95 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=106]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 96 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=105]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 97 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=104]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 98 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=103]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 99 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=102]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 100 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=101]
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 100 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

# Main to Temp Marker
execute if score @s tbcAttackStage matches 4 facing entity @e[tag=tbcTempMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcTempMarker,distance=..2.5,type=area_effect_cloud] run item replace entity @s armor.head with minecraft:diamond_hoe[custom_model_data=459]
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcTempMarker,distance=..2.5,type=area_effect_cloud] run function glarth:combat/action_enemy/util/next_stage

# Main Attack
execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 7 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 13 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 0..13 rotated ~ 0 run tp @s ^ ^ ^0.07
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 14 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 14 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 14 run scoreboard players operation damage tbcStats *= 2 Const
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 14 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 17 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=101]
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 17 run kill @e[tag=tbcTempMarker,type=area_effect_cloud]
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 17 run function glarth:combat/action_enemy/util/next_stage

# Main to Middle
execute if score @s tbcAttackStage matches 6 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 6 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

# Main to Pos 
execute if score @s tbcAttackStage matches 7 facing entity @e[tag=tbcSelMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 7 if entity @e[tag=tbcSelMarker,distance=..0.2,type=area_effect_cloud] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 7 if entity @e[tag=tbcSelMarker,distance=..0.2,type=area_effect_cloud] run function glarth:combat/action_enemy/util/next_stage

#transform back
execute if score @s tbcAttackStage matches 8 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 1 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=101]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 2 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=102]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 3 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=103]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 4 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=104]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 5 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=105]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 6 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=106]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 7 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=107]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 8 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=108]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 9 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=109]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 10 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=110]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 11 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=111]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 12 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=112]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 13 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=113]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 14 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=114]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 15 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=115]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 16 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=116]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 17 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=117]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 18 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=118]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 19 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=119]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 20 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=120]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 21 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=121]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 22 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=122]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 23 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=123]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 24 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=124]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 25 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=125]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 26 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=126]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 27 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=127]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 28 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=128]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 29 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=129]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 30 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=130]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 31 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=131]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 32 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=132]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 33 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=133]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 34 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=134]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 35 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=135]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 36 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=136]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 37 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=137]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 38 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=138]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 39 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=139]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 40 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=140]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 41 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=141]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 42 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=142]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 43 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=143]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 44 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=144]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 45 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=145]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 46 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=146]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 47 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=147]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 48 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=148]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 49 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=149]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 50 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=150]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 51 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=151]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 52 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=152]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 53 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=153]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 54 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=154]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 55 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=155]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 56 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=156]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 57 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=157]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 58 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=158]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 59 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=159]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 60 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=160]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 61 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=161]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 62 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=162]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 63 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=163]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 64 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=164]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 65 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=165]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 66 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=166]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 67 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=167]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 68 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=168]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 69 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=169]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 70 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=170]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 71 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=171]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 72 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=172]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 73 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=173]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 74 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=174]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 75 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=175]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 76 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=176]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 77 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=177]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 78 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=178]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 79 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=179]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 80 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=180]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 81 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=181]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 82 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=182]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 83 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=183]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 84 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=184]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 85 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=185]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 86 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=186]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 87 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=187]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 88 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=188]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 89 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=189]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 90 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=190]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 91 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=191]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 92 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=192]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 93 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=193]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 94 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=194]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 95 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=195]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 96 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=196]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 97 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=197]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 98 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=198]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 99 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=199]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 100 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=200]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 100 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 10 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

# Ender Swipe
execute if score @s tbcAttackStage matches 11 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 45 run scoreboard players set r Random 4 
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 30 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 45 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 45 if score n Random matches 1 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~000 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 45 if score n Random matches 2 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~090 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 45 if score n Random matches 3 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~-90 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 45 if score n Random matches 4 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~180 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] at @s facing entity @e[tag=tbcTurn] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 46 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 12 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block{block_state:{Name:"stone"}} ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 13 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 1..15 run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 21 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 62 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 65 at @e[tag=tbcSelMarker] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 65 as @e[tag=tbcTargetAS] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 85 run function glarth:combat/action_enemy/util/done

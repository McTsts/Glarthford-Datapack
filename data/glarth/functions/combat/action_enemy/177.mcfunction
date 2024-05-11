# to middle
execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

# transform
execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 10 as @e[tag=tbcTargetAS,type=armor_stand] at @s positioned ^-2 ^ ^1 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbcTempMarker","tbc"]}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 run replaceitem entity @s armor.head diamond_axe{CustomModelData:200}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 2 run replaceitem entity @s armor.head diamond_axe{CustomModelData:199}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 3 run replaceitem entity @s armor.head diamond_axe{CustomModelData:198}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 4 run replaceitem entity @s armor.head diamond_axe{CustomModelData:197}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 run replaceitem entity @s armor.head diamond_axe{CustomModelData:196}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 6 run replaceitem entity @s armor.head diamond_axe{CustomModelData:195}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 7 run replaceitem entity @s armor.head diamond_axe{CustomModelData:194}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 8 run replaceitem entity @s armor.head diamond_axe{CustomModelData:193}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 9 run replaceitem entity @s armor.head diamond_axe{CustomModelData:192}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 10 run replaceitem entity @s armor.head diamond_axe{CustomModelData:191}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 11 run replaceitem entity @s armor.head diamond_axe{CustomModelData:190}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 12 run replaceitem entity @s armor.head diamond_axe{CustomModelData:189}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 13 run replaceitem entity @s armor.head diamond_axe{CustomModelData:188}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 14 run replaceitem entity @s armor.head diamond_axe{CustomModelData:187}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 15 run replaceitem entity @s armor.head diamond_axe{CustomModelData:186}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 run replaceitem entity @s armor.head diamond_axe{CustomModelData:185}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 17 run replaceitem entity @s armor.head diamond_axe{CustomModelData:184}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 18 run replaceitem entity @s armor.head diamond_axe{CustomModelData:183}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 19 run replaceitem entity @s armor.head diamond_axe{CustomModelData:182}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 20 run replaceitem entity @s armor.head diamond_axe{CustomModelData:181}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 21 run replaceitem entity @s armor.head diamond_axe{CustomModelData:180}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 22 run replaceitem entity @s armor.head diamond_axe{CustomModelData:179}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 23 run replaceitem entity @s armor.head diamond_axe{CustomModelData:178}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 24 run replaceitem entity @s armor.head diamond_axe{CustomModelData:177}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 25 run replaceitem entity @s armor.head diamond_axe{CustomModelData:176}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 26 run replaceitem entity @s armor.head diamond_axe{CustomModelData:175}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 27 run replaceitem entity @s armor.head diamond_axe{CustomModelData:174}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 28 run replaceitem entity @s armor.head diamond_axe{CustomModelData:173}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 29 run replaceitem entity @s armor.head diamond_axe{CustomModelData:172}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 30 run replaceitem entity @s armor.head diamond_axe{CustomModelData:171}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 31 run replaceitem entity @s armor.head diamond_axe{CustomModelData:170}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 32 run replaceitem entity @s armor.head diamond_axe{CustomModelData:169}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 33 run replaceitem entity @s armor.head diamond_axe{CustomModelData:168}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 34 run replaceitem entity @s armor.head diamond_axe{CustomModelData:167}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 35 run replaceitem entity @s armor.head diamond_axe{CustomModelData:166}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 36 run replaceitem entity @s armor.head diamond_axe{CustomModelData:165}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 37 run replaceitem entity @s armor.head diamond_axe{CustomModelData:164}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 38 run replaceitem entity @s armor.head diamond_axe{CustomModelData:163}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 39 run replaceitem entity @s armor.head diamond_axe{CustomModelData:162}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 40 run replaceitem entity @s armor.head diamond_axe{CustomModelData:161}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 41 run replaceitem entity @s armor.head diamond_axe{CustomModelData:160}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 42 run replaceitem entity @s armor.head diamond_axe{CustomModelData:159}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 43 run replaceitem entity @s armor.head diamond_axe{CustomModelData:158}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 44 run replaceitem entity @s armor.head diamond_axe{CustomModelData:157}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 45 run replaceitem entity @s armor.head diamond_axe{CustomModelData:156}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 46 run replaceitem entity @s armor.head diamond_axe{CustomModelData:155}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 47 run replaceitem entity @s armor.head diamond_axe{CustomModelData:154}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 48 run replaceitem entity @s armor.head diamond_axe{CustomModelData:153}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 49 run replaceitem entity @s armor.head diamond_axe{CustomModelData:152}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run replaceitem entity @s armor.head diamond_axe{CustomModelData:151}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 51 run replaceitem entity @s armor.head diamond_axe{CustomModelData:150}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 52 run replaceitem entity @s armor.head diamond_axe{CustomModelData:149}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 53 run replaceitem entity @s armor.head diamond_axe{CustomModelData:148}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 54 run replaceitem entity @s armor.head diamond_axe{CustomModelData:147}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 55 run replaceitem entity @s armor.head diamond_axe{CustomModelData:146}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 56 run replaceitem entity @s armor.head diamond_axe{CustomModelData:145}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 57 run replaceitem entity @s armor.head diamond_axe{CustomModelData:144}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 58 run replaceitem entity @s armor.head diamond_axe{CustomModelData:143}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 59 run replaceitem entity @s armor.head diamond_axe{CustomModelData:142}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 60 run replaceitem entity @s armor.head diamond_axe{CustomModelData:141}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 61 run replaceitem entity @s armor.head diamond_axe{CustomModelData:140}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 62 run replaceitem entity @s armor.head diamond_axe{CustomModelData:139}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 63 run replaceitem entity @s armor.head diamond_axe{CustomModelData:138}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 64 run replaceitem entity @s armor.head diamond_axe{CustomModelData:137}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 65 run replaceitem entity @s armor.head diamond_axe{CustomModelData:136}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 66 run replaceitem entity @s armor.head diamond_axe{CustomModelData:135}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 67 run replaceitem entity @s armor.head diamond_axe{CustomModelData:134}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 68 run replaceitem entity @s armor.head diamond_axe{CustomModelData:133}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 69 run replaceitem entity @s armor.head diamond_axe{CustomModelData:132}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 70 run replaceitem entity @s armor.head diamond_axe{CustomModelData:131}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 71 run replaceitem entity @s armor.head diamond_axe{CustomModelData:130}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 72 run replaceitem entity @s armor.head diamond_axe{CustomModelData:129}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 73 run replaceitem entity @s armor.head diamond_axe{CustomModelData:128}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 74 run replaceitem entity @s armor.head diamond_axe{CustomModelData:127}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 75 run replaceitem entity @s armor.head diamond_axe{CustomModelData:126}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 76 run replaceitem entity @s armor.head diamond_axe{CustomModelData:125}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 77 run replaceitem entity @s armor.head diamond_axe{CustomModelData:124}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 78 run replaceitem entity @s armor.head diamond_axe{CustomModelData:123}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 79 run replaceitem entity @s armor.head diamond_axe{CustomModelData:122}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 80 run replaceitem entity @s armor.head diamond_axe{CustomModelData:121}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 81 run replaceitem entity @s armor.head diamond_axe{CustomModelData:120}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 82 run replaceitem entity @s armor.head diamond_axe{CustomModelData:119}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 83 run replaceitem entity @s armor.head diamond_axe{CustomModelData:118}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 84 run replaceitem entity @s armor.head diamond_axe{CustomModelData:117}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 85 run replaceitem entity @s armor.head diamond_axe{CustomModelData:116}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 86 run replaceitem entity @s armor.head diamond_axe{CustomModelData:115}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 87 run replaceitem entity @s armor.head diamond_axe{CustomModelData:114}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 88 run replaceitem entity @s armor.head diamond_axe{CustomModelData:113}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 89 run replaceitem entity @s armor.head diamond_axe{CustomModelData:112}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 90 run replaceitem entity @s armor.head diamond_axe{CustomModelData:111}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 91 run replaceitem entity @s armor.head diamond_axe{CustomModelData:110}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 92 run replaceitem entity @s armor.head diamond_axe{CustomModelData:109}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 93 run replaceitem entity @s armor.head diamond_axe{CustomModelData:108}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 94 run replaceitem entity @s armor.head diamond_axe{CustomModelData:107}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 95 run replaceitem entity @s armor.head diamond_axe{CustomModelData:106}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 96 run replaceitem entity @s armor.head diamond_axe{CustomModelData:105}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 97 run replaceitem entity @s armor.head diamond_axe{CustomModelData:104}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 98 run replaceitem entity @s armor.head diamond_axe{CustomModelData:103}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 99 run replaceitem entity @s armor.head diamond_axe{CustomModelData:102}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 100 run replaceitem entity @s armor.head diamond_axe{CustomModelData:101}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 100 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

# Main to Temp Marker
execute if score @s tbcAttackStage matches 4 facing entity @e[tag=tbcTempMarker,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcTempMarker,distance=..2.5,type=area_effect_cloud] run replaceitem entity @s armor.head diamond_hoe{CustomModelData:459}
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcTempMarker,distance=..2.5,type=area_effect_cloud] run function glarth:combat/action_enemy/util/next_stage

# Main Attack
execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 7 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 13 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 0..13 rotated ~ 0 run tp @s ^ ^ ^0.07
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 14 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 14 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 14 run scoreboard players operation damage tbcStats *= 2 Const
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 14 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 17 run replaceitem entity @s armor.head diamond_axe{CustomModelData:101}
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
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 1 run replaceitem entity @s armor.head diamond_axe{CustomModelData:101}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 2 run replaceitem entity @s armor.head diamond_axe{CustomModelData:102}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 3 run replaceitem entity @s armor.head diamond_axe{CustomModelData:103}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 4 run replaceitem entity @s armor.head diamond_axe{CustomModelData:104}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 5 run replaceitem entity @s armor.head diamond_axe{CustomModelData:105}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 6 run replaceitem entity @s armor.head diamond_axe{CustomModelData:106}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 7 run replaceitem entity @s armor.head diamond_axe{CustomModelData:107}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 8 run replaceitem entity @s armor.head diamond_axe{CustomModelData:108}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 9 run replaceitem entity @s armor.head diamond_axe{CustomModelData:109}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 10 run replaceitem entity @s armor.head diamond_axe{CustomModelData:110}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 11 run replaceitem entity @s armor.head diamond_axe{CustomModelData:111}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 12 run replaceitem entity @s armor.head diamond_axe{CustomModelData:112}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 13 run replaceitem entity @s armor.head diamond_axe{CustomModelData:113}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 14 run replaceitem entity @s armor.head diamond_axe{CustomModelData:114}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 15 run replaceitem entity @s armor.head diamond_axe{CustomModelData:115}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 16 run replaceitem entity @s armor.head diamond_axe{CustomModelData:116}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 17 run replaceitem entity @s armor.head diamond_axe{CustomModelData:117}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 18 run replaceitem entity @s armor.head diamond_axe{CustomModelData:118}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 19 run replaceitem entity @s armor.head diamond_axe{CustomModelData:119}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 20 run replaceitem entity @s armor.head diamond_axe{CustomModelData:120}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 21 run replaceitem entity @s armor.head diamond_axe{CustomModelData:121}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 22 run replaceitem entity @s armor.head diamond_axe{CustomModelData:122}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 23 run replaceitem entity @s armor.head diamond_axe{CustomModelData:123}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 24 run replaceitem entity @s armor.head diamond_axe{CustomModelData:124}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 25 run replaceitem entity @s armor.head diamond_axe{CustomModelData:125}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 26 run replaceitem entity @s armor.head diamond_axe{CustomModelData:126}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 27 run replaceitem entity @s armor.head diamond_axe{CustomModelData:127}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 28 run replaceitem entity @s armor.head diamond_axe{CustomModelData:128}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 29 run replaceitem entity @s armor.head diamond_axe{CustomModelData:129}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 30 run replaceitem entity @s armor.head diamond_axe{CustomModelData:130}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 31 run replaceitem entity @s armor.head diamond_axe{CustomModelData:131}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 32 run replaceitem entity @s armor.head diamond_axe{CustomModelData:132}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 33 run replaceitem entity @s armor.head diamond_axe{CustomModelData:133}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 34 run replaceitem entity @s armor.head diamond_axe{CustomModelData:134}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 35 run replaceitem entity @s armor.head diamond_axe{CustomModelData:135}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 36 run replaceitem entity @s armor.head diamond_axe{CustomModelData:136}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 37 run replaceitem entity @s armor.head diamond_axe{CustomModelData:137}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 38 run replaceitem entity @s armor.head diamond_axe{CustomModelData:138}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 39 run replaceitem entity @s armor.head diamond_axe{CustomModelData:139}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 40 run replaceitem entity @s armor.head diamond_axe{CustomModelData:140}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 41 run replaceitem entity @s armor.head diamond_axe{CustomModelData:141}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 42 run replaceitem entity @s armor.head diamond_axe{CustomModelData:142}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 43 run replaceitem entity @s armor.head diamond_axe{CustomModelData:143}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 44 run replaceitem entity @s armor.head diamond_axe{CustomModelData:144}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 45 run replaceitem entity @s armor.head diamond_axe{CustomModelData:145}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 46 run replaceitem entity @s armor.head diamond_axe{CustomModelData:146}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 47 run replaceitem entity @s armor.head diamond_axe{CustomModelData:147}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 48 run replaceitem entity @s armor.head diamond_axe{CustomModelData:148}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 49 run replaceitem entity @s armor.head diamond_axe{CustomModelData:149}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 50 run replaceitem entity @s armor.head diamond_axe{CustomModelData:150}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 51 run replaceitem entity @s armor.head diamond_axe{CustomModelData:151}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 52 run replaceitem entity @s armor.head diamond_axe{CustomModelData:152}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 53 run replaceitem entity @s armor.head diamond_axe{CustomModelData:153}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 54 run replaceitem entity @s armor.head diamond_axe{CustomModelData:154}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 55 run replaceitem entity @s armor.head diamond_axe{CustomModelData:155}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 56 run replaceitem entity @s armor.head diamond_axe{CustomModelData:156}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 57 run replaceitem entity @s armor.head diamond_axe{CustomModelData:157}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 58 run replaceitem entity @s armor.head diamond_axe{CustomModelData:158}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 59 run replaceitem entity @s armor.head diamond_axe{CustomModelData:159}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 60 run replaceitem entity @s armor.head diamond_axe{CustomModelData:160}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 61 run replaceitem entity @s armor.head diamond_axe{CustomModelData:161}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 62 run replaceitem entity @s armor.head diamond_axe{CustomModelData:162}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 63 run replaceitem entity @s armor.head diamond_axe{CustomModelData:163}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 64 run replaceitem entity @s armor.head diamond_axe{CustomModelData:164}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 65 run replaceitem entity @s armor.head diamond_axe{CustomModelData:165}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 66 run replaceitem entity @s armor.head diamond_axe{CustomModelData:166}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 67 run replaceitem entity @s armor.head diamond_axe{CustomModelData:167}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 68 run replaceitem entity @s armor.head diamond_axe{CustomModelData:168}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 69 run replaceitem entity @s armor.head diamond_axe{CustomModelData:169}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 70 run replaceitem entity @s armor.head diamond_axe{CustomModelData:170}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 71 run replaceitem entity @s armor.head diamond_axe{CustomModelData:171}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 72 run replaceitem entity @s armor.head diamond_axe{CustomModelData:172}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 73 run replaceitem entity @s armor.head diamond_axe{CustomModelData:173}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 74 run replaceitem entity @s armor.head diamond_axe{CustomModelData:174}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 75 run replaceitem entity @s armor.head diamond_axe{CustomModelData:175}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 76 run replaceitem entity @s armor.head diamond_axe{CustomModelData:176}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 77 run replaceitem entity @s armor.head diamond_axe{CustomModelData:177}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 78 run replaceitem entity @s armor.head diamond_axe{CustomModelData:178}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 79 run replaceitem entity @s armor.head diamond_axe{CustomModelData:179}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 80 run replaceitem entity @s armor.head diamond_axe{CustomModelData:180}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 81 run replaceitem entity @s armor.head diamond_axe{CustomModelData:181}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 82 run replaceitem entity @s armor.head diamond_axe{CustomModelData:182}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 83 run replaceitem entity @s armor.head diamond_axe{CustomModelData:183}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 84 run replaceitem entity @s armor.head diamond_axe{CustomModelData:184}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 85 run replaceitem entity @s armor.head diamond_axe{CustomModelData:185}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 86 run replaceitem entity @s armor.head diamond_axe{CustomModelData:186}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 87 run replaceitem entity @s armor.head diamond_axe{CustomModelData:187}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 88 run replaceitem entity @s armor.head diamond_axe{CustomModelData:188}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 89 run replaceitem entity @s armor.head diamond_axe{CustomModelData:189}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 90 run replaceitem entity @s armor.head diamond_axe{CustomModelData:190}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 91 run replaceitem entity @s armor.head diamond_axe{CustomModelData:191}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 92 run replaceitem entity @s armor.head diamond_axe{CustomModelData:192}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 93 run replaceitem entity @s armor.head diamond_axe{CustomModelData:193}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 94 run replaceitem entity @s armor.head diamond_axe{CustomModelData:194}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 95 run replaceitem entity @s armor.head diamond_axe{CustomModelData:195}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 96 run replaceitem entity @s armor.head diamond_axe{CustomModelData:196}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 97 run replaceitem entity @s armor.head diamond_axe{CustomModelData:197}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 98 run replaceitem entity @s armor.head diamond_axe{CustomModelData:198}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 99 run replaceitem entity @s armor.head diamond_axe{CustomModelData:199}
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 100 run replaceitem entity @s armor.head diamond_axe{CustomModelData:200}
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
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
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

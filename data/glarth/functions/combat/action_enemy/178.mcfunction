# transform
execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run data merge entity @s {CustomNameVisible:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run tag @s add tbcEnemyTall
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1 run item replace entity @s armor.head with diamond_axe{CustomModelData:300}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 2 run item replace entity @s armor.head with diamond_axe{CustomModelData:299}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 3 run item replace entity @s armor.head with diamond_axe{CustomModelData:298}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 4 run item replace entity @s armor.head with diamond_axe{CustomModelData:297}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5 run item replace entity @s armor.head with diamond_axe{CustomModelData:296}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 6 run item replace entity @s armor.head with diamond_axe{CustomModelData:295}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 7 run item replace entity @s armor.head with diamond_axe{CustomModelData:294}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 8 run item replace entity @s armor.head with diamond_axe{CustomModelData:293}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 9 run item replace entity @s armor.head with diamond_axe{CustomModelData:292}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 10 run item replace entity @s armor.head with diamond_axe{CustomModelData:291}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 11 run item replace entity @s armor.head with diamond_axe{CustomModelData:290}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 12 run item replace entity @s armor.head with diamond_axe{CustomModelData:289}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 13 run item replace entity @s armor.head with diamond_axe{CustomModelData:288}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 14 run item replace entity @s armor.head with diamond_axe{CustomModelData:287}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 15 run item replace entity @s armor.head with diamond_axe{CustomModelData:286}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 16 run item replace entity @s armor.head with diamond_axe{CustomModelData:285}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 17 run item replace entity @s armor.head with diamond_axe{CustomModelData:284}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 18 run item replace entity @s armor.head with diamond_axe{CustomModelData:283}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 19 run item replace entity @s armor.head with diamond_axe{CustomModelData:282}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run item replace entity @s armor.head with diamond_axe{CustomModelData:281}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 21 run item replace entity @s armor.head with diamond_axe{CustomModelData:280}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 22 run item replace entity @s armor.head with diamond_axe{CustomModelData:279}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 23 run item replace entity @s armor.head with diamond_axe{CustomModelData:278}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 24 run item replace entity @s armor.head with diamond_axe{CustomModelData:277}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 25 run item replace entity @s armor.head with diamond_axe{CustomModelData:276}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 26 run item replace entity @s armor.head with diamond_axe{CustomModelData:275}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 27 run item replace entity @s armor.head with diamond_axe{CustomModelData:274}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 28 run item replace entity @s armor.head with diamond_axe{CustomModelData:273}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 29 run item replace entity @s armor.head with diamond_axe{CustomModelData:272}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 30 run item replace entity @s armor.head with diamond_axe{CustomModelData:271}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 31 run item replace entity @s armor.head with diamond_axe{CustomModelData:270}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 32 run item replace entity @s armor.head with diamond_axe{CustomModelData:269}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 33 run item replace entity @s armor.head with diamond_axe{CustomModelData:268}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 34 run item replace entity @s armor.head with diamond_axe{CustomModelData:267}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 35 run item replace entity @s armor.head with diamond_axe{CustomModelData:266}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 36 run item replace entity @s armor.head with diamond_axe{CustomModelData:265}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 37 run item replace entity @s armor.head with diamond_axe{CustomModelData:264}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 38 run item replace entity @s armor.head with diamond_axe{CustomModelData:263}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 39 run item replace entity @s armor.head with diamond_axe{CustomModelData:262}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 40 run item replace entity @s armor.head with diamond_axe{CustomModelData:261}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 41 run item replace entity @s armor.head with diamond_axe{CustomModelData:260}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 42 run item replace entity @s armor.head with diamond_axe{CustomModelData:259}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 43 run item replace entity @s armor.head with diamond_axe{CustomModelData:258}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 44 run item replace entity @s armor.head with diamond_axe{CustomModelData:257}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 45 run item replace entity @s armor.head with diamond_axe{CustomModelData:256}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 46 run item replace entity @s armor.head with diamond_axe{CustomModelData:255}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 47 run item replace entity @s armor.head with diamond_axe{CustomModelData:254}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 48 run item replace entity @s armor.head with diamond_axe{CustomModelData:253}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 49 run item replace entity @s armor.head with diamond_axe{CustomModelData:252}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 50 run item replace entity @s armor.head with diamond_axe{CustomModelData:251}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 51 run item replace entity @s armor.head with diamond_axe{CustomModelData:250}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 52 run item replace entity @s armor.head with diamond_axe{CustomModelData:249}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 53 run item replace entity @s armor.head with diamond_axe{CustomModelData:248}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 54 run item replace entity @s armor.head with diamond_axe{CustomModelData:247}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 55 run item replace entity @s armor.head with diamond_axe{CustomModelData:246}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 56 run item replace entity @s armor.head with diamond_axe{CustomModelData:245}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 57 run item replace entity @s armor.head with diamond_axe{CustomModelData:244}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 58 run item replace entity @s armor.head with diamond_axe{CustomModelData:243}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 59 run item replace entity @s armor.head with diamond_axe{CustomModelData:242}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 60 run item replace entity @s armor.head with diamond_axe{CustomModelData:241}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 61 run item replace entity @s armor.head with diamond_axe{CustomModelData:240}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 62 run item replace entity @s armor.head with diamond_axe{CustomModelData:239}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 63 run item replace entity @s armor.head with diamond_axe{CustomModelData:238}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 64 run item replace entity @s armor.head with diamond_axe{CustomModelData:237}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 65 run item replace entity @s armor.head with diamond_axe{CustomModelData:236}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 66 run item replace entity @s armor.head with diamond_axe{CustomModelData:235}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 67 run item replace entity @s armor.head with diamond_axe{CustomModelData:234}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 68 run item replace entity @s armor.head with diamond_axe{CustomModelData:233}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 69 run item replace entity @s armor.head with diamond_axe{CustomModelData:232}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 70 run item replace entity @s armor.head with diamond_axe{CustomModelData:231}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 71 run item replace entity @s armor.head with diamond_axe{CustomModelData:230}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 72 run item replace entity @s armor.head with diamond_axe{CustomModelData:229}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 73 run item replace entity @s armor.head with diamond_axe{CustomModelData:228}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 74 run item replace entity @s armor.head with diamond_axe{CustomModelData:227}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 75 run item replace entity @s armor.head with diamond_axe{CustomModelData:226}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 76 run item replace entity @s armor.head with diamond_axe{CustomModelData:225}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 77 run item replace entity @s armor.head with diamond_axe{CustomModelData:224}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 78 run item replace entity @s armor.head with diamond_axe{CustomModelData:223}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 79 run item replace entity @s armor.head with diamond_axe{CustomModelData:222}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 80 run item replace entity @s armor.head with diamond_axe{CustomModelData:221}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 81 run item replace entity @s armor.head with diamond_axe{CustomModelData:220}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 82 run item replace entity @s armor.head with diamond_axe{CustomModelData:219}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 83 run item replace entity @s armor.head with diamond_axe{CustomModelData:218}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 84 run item replace entity @s armor.head with diamond_axe{CustomModelData:217}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 85 run item replace entity @s armor.head with diamond_axe{CustomModelData:216}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 86 run item replace entity @s armor.head with diamond_axe{CustomModelData:215}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 87 run item replace entity @s armor.head with diamond_axe{CustomModelData:214}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 88 run item replace entity @s armor.head with diamond_axe{CustomModelData:213}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 89 run item replace entity @s armor.head with diamond_axe{CustomModelData:212}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 90 run item replace entity @s armor.head with diamond_axe{CustomModelData:211}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 91 run item replace entity @s armor.head with diamond_axe{CustomModelData:210}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 92 run item replace entity @s armor.head with diamond_axe{CustomModelData:209}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 93 run item replace entity @s armor.head with diamond_axe{CustomModelData:208}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 94 run item replace entity @s armor.head with diamond_axe{CustomModelData:207}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 95 run item replace entity @s armor.head with diamond_axe{CustomModelData:206}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 96 run item replace entity @s armor.head with diamond_axe{CustomModelData:205}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 97 run item replace entity @s armor.head with diamond_axe{CustomModelData:204}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 98 run item replace entity @s armor.head with diamond_axe{CustomModelData:203}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 99 run item replace entity @s armor.head with diamond_axe{CustomModelData:202}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 100 run item replace entity @s armor.head with diamond_axe{CustomModelData:201}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 100 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPhanterra","tbcMarkerPhanterraPos"]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 run scoreboard players set doPhanterra tbcStats 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 run tag @s add phanterra
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 run tag @s add phanterraNew
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 run data merge entity @s {Rotation:[0f,-22.5f]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 at @e[tag=tbcMarkerPos1] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPhanterraPlayer","tbcMarkerPhanterraPos1","tbcMarkerPhanterra"]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 at @e[tag=tbcMarkerPos2] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPhanterraPlayer","tbcMarkerPhanterraPos2","tbcMarkerPhanterra"]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 at @e[tag=tbcMarkerPos3] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPhanterraPlayer","tbcMarkerPhanterraPos3","tbcMarkerPhanterra"]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 at @e[tag=tbcMarkerMiddle] run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcMarker","tbcMarkerPhanterraMiddle","tbcMarkerPhanterra"]}
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage

# 0 - Phanterra Fly Animation
execute if score @s tbcAttackStage matches 3 run function glarth:mechanic/animation/phanterra/do/fly
execute if score @s tbcAttackStage matches 3 if entity @e[tag=phanterra,scores={phanterraState=4}] at @e[tag=tbcTargetAS] run tag @e[tag=tbcMarkerPhanterraPlayer,limit=1,sort=nearest] add tbcMarkerPhanterraTargetAEC
execute if score @s tbcAttackStage matches 3 if entity @e[tag=phanterra,scores={phanterraState=4}] run function glarth:combat/action_enemy/util/next_stage

# 1 - Phanterra Fly to Middle
execute if score @s tbcAttackStage matches 4 as @e[tag=phanterra] at @s facing entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:mechanic/animation/phanterra/do/glide
execute if score @s tbcAttackStage matches 4 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud,distance=..0.3] as @e[tag=tbcMarkerPhanterraPlayer] at @s run tp @s ~ ~-1.5 ~
execute if score @s tbcAttackStage matches 4 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

# 2 - Phanterra Fly to Player
execute if score @s tbcAttackStage matches 5 as @e[tag=phanterra] at @s facing entity @e[tag=tbcMarkerPhanterraTargetAEC,type=area_effect_cloud] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraTargetAEC,type=area_effect_cloud,distance=..2] run function glarth:combat/action_enemy/util/next_stage

# 3 - Phanterra Swipe
execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 13 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 0..40 as @e[tag=phanterra] at @s rotated ~ 0 run tp @s ^ ^ ^0.2 ~ 0
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 14 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 14 if score @e[tag=tbcTarget,limit=1] blocked matches 1 run playsound minecraft:entity.phantom.hurt hostile @a ~ ~ ~ 2 0.5
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 14 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run playsound minecraft:entity.phantom.bite hostile @a ~ ~ ~ 2 0.5
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 14 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 14 run scoreboard players operation damage tbcStats *= 2 Const
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 14 run item replace entity @s armor.feet with chainmail_boots{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 14 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 14 run item replace entity @s armor.feet with air
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 25 run function glarth:mechanic/animation/phanterra/do/fly
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 30 as @e[tag=tbcMarkerPhanterraPlayer] at @s run tp @s ~ ~1.5 ~
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 30 as @e[tag=tbcMarkerPhanterraMiddle] at @s run tp @s ~ ~3 ~
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 30 run function glarth:combat/action_enemy/util/next_stage

# 4 - Phanterra Fly to Middle
execute if score @s tbcAttackStage matches 7 as @e[tag=phanterra] at @s facing entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 7 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

# 5 - Phanterra Fly to Pos
execute if score @s tbcAttackStage matches 8 as @e[tag=phanterra] at @s facing entity @e[tag=tbcMarkerPhanterraPos] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 8 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraPos,distance=..0.2] as @e[tag=tbcMarkerPhanterraMiddle] at @s run tp @s ~ ~-3 ~
execute if score @s tbcAttackStage matches 8 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraPos,distance=..0.2] run tp @s ~ ~ ~ 0 0
execute if score @s tbcAttackStage matches 8 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraPos,distance=..0.2] as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 8 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraPos,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

#transform back
execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 1 run function glarth:mechanic/animation/phanterra/do/hover
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 30 run tag @s remove phanterra
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 30 run kill @e[tag=tbcMarkerPhanterraPos]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 30 run kill @e[tag=tbcMarkerPhanterra]
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 30 run scoreboard players set doPhanterra tbcStats 0
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 30 run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 30 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 10 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 1 run item replace entity @s armor.head with diamond_axe{CustomModelData:201}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 2 run item replace entity @s armor.head with diamond_axe{CustomModelData:202}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 3 run item replace entity @s armor.head with diamond_axe{CustomModelData:203}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 4 run item replace entity @s armor.head with diamond_axe{CustomModelData:204}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 5 run item replace entity @s armor.head with diamond_axe{CustomModelData:205}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 6 run item replace entity @s armor.head with diamond_axe{CustomModelData:206}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 7 run item replace entity @s armor.head with diamond_axe{CustomModelData:207}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 8 run item replace entity @s armor.head with diamond_axe{CustomModelData:208}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 9 run item replace entity @s armor.head with diamond_axe{CustomModelData:209}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 10 run item replace entity @s armor.head with diamond_axe{CustomModelData:210}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 11 run item replace entity @s armor.head with diamond_axe{CustomModelData:211}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 12 run item replace entity @s armor.head with diamond_axe{CustomModelData:212}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 13 run item replace entity @s armor.head with diamond_axe{CustomModelData:213}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 14 run item replace entity @s armor.head with diamond_axe{CustomModelData:214}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 15 run item replace entity @s armor.head with diamond_axe{CustomModelData:215}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 16 run item replace entity @s armor.head with diamond_axe{CustomModelData:216}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 17 run item replace entity @s armor.head with diamond_axe{CustomModelData:217}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 18 run item replace entity @s armor.head with diamond_axe{CustomModelData:218}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 19 run item replace entity @s armor.head with diamond_axe{CustomModelData:219}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 20 run item replace entity @s armor.head with diamond_axe{CustomModelData:220}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 21 run item replace entity @s armor.head with diamond_axe{CustomModelData:221}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 22 run item replace entity @s armor.head with diamond_axe{CustomModelData:222}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 23 run item replace entity @s armor.head with diamond_axe{CustomModelData:223}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 24 run item replace entity @s armor.head with diamond_axe{CustomModelData:224}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 25 run item replace entity @s armor.head with diamond_axe{CustomModelData:225}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 26 run item replace entity @s armor.head with diamond_axe{CustomModelData:226}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 27 run item replace entity @s armor.head with diamond_axe{CustomModelData:227}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 28 run item replace entity @s armor.head with diamond_axe{CustomModelData:228}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 29 run item replace entity @s armor.head with diamond_axe{CustomModelData:229}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 30 run item replace entity @s armor.head with diamond_axe{CustomModelData:230}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 31 run item replace entity @s armor.head with diamond_axe{CustomModelData:231}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 32 run item replace entity @s armor.head with diamond_axe{CustomModelData:232}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 33 run item replace entity @s armor.head with diamond_axe{CustomModelData:233}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 34 run item replace entity @s armor.head with diamond_axe{CustomModelData:234}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 35 run item replace entity @s armor.head with diamond_axe{CustomModelData:235}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 36 run item replace entity @s armor.head with diamond_axe{CustomModelData:236}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 37 run item replace entity @s armor.head with diamond_axe{CustomModelData:237}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 38 run item replace entity @s armor.head with diamond_axe{CustomModelData:238}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 39 run item replace entity @s armor.head with diamond_axe{CustomModelData:239}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 40 run item replace entity @s armor.head with diamond_axe{CustomModelData:240}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 41 run item replace entity @s armor.head with diamond_axe{CustomModelData:241}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 42 run item replace entity @s armor.head with diamond_axe{CustomModelData:242}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 43 run item replace entity @s armor.head with diamond_axe{CustomModelData:243}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 44 run item replace entity @s armor.head with diamond_axe{CustomModelData:244}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 45 run item replace entity @s armor.head with diamond_axe{CustomModelData:245}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 46 run item replace entity @s armor.head with diamond_axe{CustomModelData:246}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 47 run item replace entity @s armor.head with diamond_axe{CustomModelData:247}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 48 run item replace entity @s armor.head with diamond_axe{CustomModelData:248}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 49 run item replace entity @s armor.head with diamond_axe{CustomModelData:249}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 50 run item replace entity @s armor.head with diamond_axe{CustomModelData:250}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 51 run item replace entity @s armor.head with diamond_axe{CustomModelData:251}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 52 run item replace entity @s armor.head with diamond_axe{CustomModelData:252}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 53 run item replace entity @s armor.head with diamond_axe{CustomModelData:253}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 54 run item replace entity @s armor.head with diamond_axe{CustomModelData:254}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 55 run item replace entity @s armor.head with diamond_axe{CustomModelData:255}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 56 run item replace entity @s armor.head with diamond_axe{CustomModelData:256}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 57 run item replace entity @s armor.head with diamond_axe{CustomModelData:257}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 58 run item replace entity @s armor.head with diamond_axe{CustomModelData:258}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 59 run item replace entity @s armor.head with diamond_axe{CustomModelData:259}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 60 run item replace entity @s armor.head with diamond_axe{CustomModelData:260}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 61 run item replace entity @s armor.head with diamond_axe{CustomModelData:261}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 62 run item replace entity @s armor.head with diamond_axe{CustomModelData:262}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 63 run item replace entity @s armor.head with diamond_axe{CustomModelData:263}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 64 run item replace entity @s armor.head with diamond_axe{CustomModelData:264}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 65 run item replace entity @s armor.head with diamond_axe{CustomModelData:265}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 66 run item replace entity @s armor.head with diamond_axe{CustomModelData:266}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 67 run item replace entity @s armor.head with diamond_axe{CustomModelData:267}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 68 run item replace entity @s armor.head with diamond_axe{CustomModelData:268}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 69 run item replace entity @s armor.head with diamond_axe{CustomModelData:269}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 70 run item replace entity @s armor.head with diamond_axe{CustomModelData:270}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 71 run item replace entity @s armor.head with diamond_axe{CustomModelData:271}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 72 run item replace entity @s armor.head with diamond_axe{CustomModelData:272}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 73 run item replace entity @s armor.head with diamond_axe{CustomModelData:273}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 74 run item replace entity @s armor.head with diamond_axe{CustomModelData:274}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 75 run item replace entity @s armor.head with diamond_axe{CustomModelData:275}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 76 run item replace entity @s armor.head with diamond_axe{CustomModelData:276}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 77 run item replace entity @s armor.head with diamond_axe{CustomModelData:277}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 78 run item replace entity @s armor.head with diamond_axe{CustomModelData:278}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 79 run item replace entity @s armor.head with diamond_axe{CustomModelData:279}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 80 run item replace entity @s armor.head with diamond_axe{CustomModelData:280}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 81 run item replace entity @s armor.head with diamond_axe{CustomModelData:281}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 82 run item replace entity @s armor.head with diamond_axe{CustomModelData:282}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 83 run item replace entity @s armor.head with diamond_axe{CustomModelData:283}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 84 run item replace entity @s armor.head with diamond_axe{CustomModelData:284}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 85 run item replace entity @s armor.head with diamond_axe{CustomModelData:285}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 86 run item replace entity @s armor.head with diamond_axe{CustomModelData:286}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 87 run item replace entity @s armor.head with diamond_axe{CustomModelData:287}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 88 run item replace entity @s armor.head with diamond_axe{CustomModelData:288}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 89 run item replace entity @s armor.head with diamond_axe{CustomModelData:289}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 90 run item replace entity @s armor.head with diamond_axe{CustomModelData:290}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 91 run item replace entity @s armor.head with diamond_axe{CustomModelData:291}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 92 run item replace entity @s armor.head with diamond_axe{CustomModelData:292}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 93 run item replace entity @s armor.head with diamond_axe{CustomModelData:293}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 94 run item replace entity @s armor.head with diamond_axe{CustomModelData:294}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 95 run item replace entity @s armor.head with diamond_axe{CustomModelData:295}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 96 run item replace entity @s armor.head with diamond_axe{CustomModelData:296}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 97 run item replace entity @s armor.head with diamond_axe{CustomModelData:297}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 98 run item replace entity @s armor.head with diamond_axe{CustomModelData:298}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 99 run item replace entity @s armor.head with diamond_axe{CustomModelData:299}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 100 run item replace entity @s armor.head with diamond_axe{CustomModelData:300}
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 100 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 11 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 5 run tag @s remove tbcEnemyTall
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 5 run data merge entity @s {CustomNameVisible:1,ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.boss.ender_priest","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:394}}]}
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

# Ender Fireball
execute if score @s tbcAttackStage matches 12 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 12 run function glarth:combat/action_enemy/helper/summon_fireball_ender
execute if score @s tbcAttackStage matches 12 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 12 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 12 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 13 run function glarth:combat/action_enemy/helper/fireball_ender2
execute if score @s tbcAttackStage matches 13 if entity @s[tag=tbcReady] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 14 run function glarth:combat/action_enemy/util/get_target
execute if score @s tbcAttackStage matches 14 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 14 run function glarth:combat/action_enemy/helper/summon_fireball_ender
execute if score @s tbcAttackStage matches 14 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 14 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 14 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 15 run function glarth:combat/action_enemy/helper/fireball_ender2
execute if score @s tbcAttackStage matches 15 if entity @s[tag=tbcReady] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 16 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 16 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/done

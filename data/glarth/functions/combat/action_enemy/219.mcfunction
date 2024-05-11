# 0 - Phanterra Fly Animation
execute if score @s tbcAttackStage matches 0 run function glarth:mechanic/animation/phanterra/do/fly
execute if score @s tbcAttackStage matches 0 if entity @e[tag=phanterra,scores={phanterraState=4}] at @s run playsound minecraft:entity.illusioner.prepare_blindness hostile @a ~ ~ ~ 2 0.7
execute if score @s tbcAttackStage matches 0 if entity @e[tag=phanterra,scores={phanterraState=4}] run effect give @a[tag=tbcTarget] blindness infinite 0 true
execute if score @s tbcAttackStage matches 0 if entity @e[tag=phanterra,scores={phanterraState=4}] run scoreboard players add @a[tag=tbcTarget] tbcBlindness 1
execute if score @s tbcAttackStage matches 0 if entity @e[tag=phanterra,scores={phanterraState=4}] run data merge entity @e[tag=phanterra,limit=1] {Glowing:1b,Team:"dark_blue"}
execute if score @s tbcAttackStage matches 0 if entity @e[tag=phanterra,scores={phanterraState=4}] run data merge entity @e[tag=tbcTargetAS,limit=1] {Glowing:1b}
execute if score @s tbcAttackStage matches 0 if entity @e[tag=phanterra,scores={phanterraState=4}] at @e[tag=tbcTargetAS,limit=1] as @e[tag=charQ,distance=..2] run data merge entity @s {Glowing:1b}
execute if score @s tbcAttackStage matches 0 if entity @e[tag=phanterra,scores={phanterraState=4}] run tag @e[tag=tbcMarkerPhanterraPlayer] remove tbcMarkerPhanterraTargetAEC
execute if score @s tbcAttackStage matches 0 if entity @e[tag=phanterra,scores={phanterraState=4}] at @e[tag=tbcTargetAS] run tag @e[tag=tbcMarkerPhanterraPlayer,limit=1,sort=nearest] add tbcMarkerPhanterraTargetAEC
execute if score @s tbcAttackStage matches 0 if entity @e[tag=phanterra,scores={phanterraState=4}] as @e[tag=tbcMarkerPhanterraMiddle] at @s run tp @s ~ ~2.0 ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=phanterra,scores={phanterraState=4}] as @e[tag=tbcMarkerPhanterraTargetAEC] at @s run tp @s ~ ~0.7 ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=phanterra,scores={phanterraState=4}] run data merge entity @e[tag=tbcTargetAS,limit=1] {NoGravity:1}
execute if score @s tbcAttackStage matches 0 if entity @e[tag=phanterra,scores={phanterraState=4}] run function glarth:combat/action_enemy/util/hide_hat
execute if score @s tbcAttackStage matches 0 if entity @e[tag=phanterra,scores={phanterraState=4}] run function glarth:combat/action_enemy/util/next_stage

# 1 - Phanterra Fly to Middle
execute if score @s tbcAttackStage matches 1 as @e[tag=phanterra] at @s facing entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

# 2 - Phanterra Fly to Player
execute if score @s tbcAttackStage matches 2 as @e[tag=phanterra] at @s facing entity @e[tag=tbcMarkerPhanterraTargetAEC,type=area_effect_cloud] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 2 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraTargetAEC,type=area_effect_cloud,distance=..5] run function glarth:mechanic/animation/phanterra/do/hover
execute if score @s tbcAttackStage matches 2 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraTargetAEC,type=area_effect_cloud,distance=..5] run function glarth:combat/action_enemy/util/next_stage

# 3 - Phanterra Fly to Player - Hover
execute if score @s tbcAttackStage matches 3 as @e[tag=phanterra] at @s facing entity @e[tag=tbcMarkerPhanterraTargetAEC,type=area_effect_cloud] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 3 as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraTargetAEC,type=area_effect_cloud,distance=..1.5] run function glarth:combat/action_enemy/util/next_stage

# 4 - Phanterra grabs player and flies away with them
execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 1..30 as @e[tag=phanterra] at @s run tp @s ~ ~-0.004 ~ ~6 ~-0.4
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 30 run tag @e[tag=tbcTargetAS] add phanBob

execute if score @s tbcAttackStage matches 4 if score bob phanterraAnim matches ..10 if score @s tbcAttackTimer matches 40..100 as @e[tag=phanterra] at @s run tp @s ^ ^0.08 ^0.04
execute if score @s tbcAttackStage matches 4 if score bob phanterraAnim matches ..10 if score @s tbcAttackTimer matches 40..100 as @e[tag=phanBob] at @s rotated as @e[tag=phanterra] run tp @s ^ ^0.08 ^0.04
execute if score @s tbcAttackStage matches 4 if score bob phanterraAnim matches 11..15 if score @s tbcAttackTimer matches 40..100 as @e[tag=phanterra] at @s run tp @s ^ ^0.05 ^0.04
execute if score @s tbcAttackStage matches 4 if score bob phanterraAnim matches 11..15 if score @s tbcAttackTimer matches 40..100 as @e[tag=phanBob] at @s rotated as @e[tag=phanterra] run tp @s ^ ^0.05 ^0.04
execute if score @s tbcAttackStage matches 4 if score bob phanterraAnim matches 16.. if score @s tbcAttackTimer matches 40..100 as @e[tag=phanterra] at @s run tp @s ^ ^0.02 ^0.04
execute if score @s tbcAttackStage matches 4 if score bob phanterraAnim matches 16.. if score @s tbcAttackTimer matches 40..100 as @e[tag=phanBob] at @s rotated as @e[tag=phanterra] run tp @s ^ ^0.02 ^0.04
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 120 run tag @e[tag=tbcTargetAS] remove phanBob
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 120 run function glarth:mechanic/animation/phanterra/do/fly
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 120 as @e[tag=phanterra] at @s anchored feet positioned ^ ^ ^-30 facing entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud] feet positioned as @s run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 120 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 120 run function glarth:combat/action_enemy/util/next_stage

# 5 - Target falls
execute if score @s tbcAttackStage matches 5 as @e[tag=tbcTargetAS,type=armor_stand] at @s positioned ~ ~ ~ if block ~ ~ ~ #glarth:tbcfall run tp @s ~ ~-0.2 ~
execute if score @s tbcAttackStage matches 5 as @e[tag=tbcTargetAS,type=armor_stand] at @s positioned ~ ~-1.0 ~ unless block ~ ~ ~ #glarth:tbcfall as @e[tag=tbcTarget,limit=1] unless score blocking tbcStats matches 1 unless score @e[tag=tbcTarget,limit=1] blocked matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 5 as @e[tag=tbcTargetAS,type=armor_stand] at @s positioned ~ ~ ~ unless block ~ ~ ~ #glarth:tbcfall as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 5 as @e[tag=tbcTargetAS,type=armor_stand] at @s positioned ~ ~ ~ unless block ~ ~ ~ #glarth:tbcfall run function glarth:combat/action_enemy/util/next_stage

# 6 - Target takes fall damage
execute if score @s tbcAttackStage matches 6 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 6 run scoreboard players add damage tbcStats 20
execute if score @s tbcAttackStage matches 6 run scoreboard players set damageType tbcStats 1
execute if score @s tbcAttackStage matches 6 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/util/next_stage

# 5-7 - Phanterra movements
execute if score @s tbcAttackStage matches 5..7 if entity @e[tag=phanterra,tag=!phanterraStage2,scores={phanterraState=4}] as @e[tag=phanterra] at @s facing entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5..7 if entity @e[tag=phanterra,tag=!phanterraStage2,scores={phanterraState=4}] as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraMiddle,type=area_effect_cloud,distance=..0.2] run tag @s add phanterraStage2
execute if score @s tbcAttackStage matches 5..7 if entity @e[tag=phanterra,tag=phanterraStage2] as @e[tag=phanterra] at @s facing entity @e[tag=tbcMarkerPhanterraPos] feet run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5..7 if entity @e[tag=phanterra,tag=phanterraStage2] as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraPos,distance=..0.2] run tp @s ~ ~ ~ 90 0
execute if score @s tbcAttackStage matches 5..7 if entity @e[tag=phanterra,tag=phanterraStage2] as @e[tag=phanterra] at @s if entity @e[tag=tbcMarkerPhanterraPos,distance=..0.2] run tag @s add phanterraStage3

# 7 - Continue if player and phanterra are done 
execute if score @s tbcAttackStage matches 7 if entity @e[tag=phanterra,tag=phanterraStage3] run function glarth:combat/action_enemy/util/next_stage

# 8 - Phanterra Hover Animation
execute if score @s tbcAttackStage matches 8 as @e[tag=tbcMarkerPhanterraMiddle] at @s run tp @s ~ ~-2.0 ~
execute if score @s tbcAttackStage matches 8 as @e[tag=tbcMarkerPhanterraTargetAEC] at @s run tp @s ~ ~-0.7 ~
execute if score @s tbcAttackStage matches 8 run tag @e[tag=phanterra] remove phanterraStage2
execute if score @s tbcAttackStage matches 8 run tag @e[tag=phanterra] remove phanterraStage3
execute if score @s tbcAttackStage matches 8 run data merge entity @e[tag=tbcTargetAS,limit=1] {NoGravity:0}
execute if score @s tbcAttackStage matches 8 run function glarth:mechanic/animation/phanterra/do/hover
execute if score @s tbcAttackStage matches 8 run data merge entity @e[tag=phanterra,limit=1] {Glowing:0b}
execute if score @s tbcAttackStage matches 8 run data merge entity @e[tag=tbcTargetAS,limit=1] {Glowing:0b}
execute if score @s tbcAttackStage matches 8 at @e[tag=tbcTargetAS,limit=1] as @e[tag=charQ,distance=..2] run data merge entity @s {Glowing:0b}
execute if score @s tbcAttackStage matches 8 run scoreboard players remove @a[tag=tbcTarget] tbcBlindness 1
execute if score @s tbcAttackStage matches 8 run effect clear @a[tag=tbcTarget] blindness
execute if score @s tbcAttackStage matches 8 run effect give @a[tag=tbcTarget] blindness 1 0 true
execute if score @s tbcAttackStage matches 8 run function glarth:combat/action_enemy/util/next_stage

# 9 - Target return
execute if score @s tbcAttackStage matches 9 as @e[tag=tbcTargetAS,type=armor_stand] at @s facing entity @e[tag=tbcTargetMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 9 as @e[tag=tbcTargetAS,type=armor_stand] at @s if entity @e[tag=tbcTargetMarker,distance=..0.4] as @e[scores={tbcID=1}] run function glarth:combat/action_enemy/util/show_hat
execute if score @s tbcAttackStage matches 9 as @e[tag=tbcTargetAS,type=armor_stand] at @s if entity @e[tag=tbcTargetMarker,distance=..0.4] as @e[scores={tbcID=1}] run function glarth:combat/action_enemy/util/done

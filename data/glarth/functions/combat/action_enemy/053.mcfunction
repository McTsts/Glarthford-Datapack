execute as @e[tag=lava_dragon5,type=armor_stand] at @s run function glarth:mechanic/animation/lava_dragon/main

# Dragon Start
execute if score @s tbcAttackStage matches 0 positioned ~ ~-10 ~ run function glarth:mechanic/animation/lava_dragon/s5
execute if score @s tbcAttackStage matches 0 run tag @e[tag=ld3] add ldX3
execute if score @s tbcAttackStage matches 0 run tag @e[tag=ld6] add ldX3
execute if score @s tbcAttackStage matches 0 run tag @e[tag=ld9] add ldX3
execute if score @s tbcAttackStage matches 0 run tag @e[tag=ld12] add ldX3
execute if score @s tbcAttackStage matches 0 run tag @e[tag=ld15] add ldX3
execute if score @s tbcAttackStage matches 0 run tag @e[tag=ld18] add ldX3
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

# Pre Dragon Swipe
execute if score @s tbcAttackStage matches 1 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 1 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 2 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.2] as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 5 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

# Post Dragon Swipe
execute if score @s tbcAttackStage matches 7 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 7 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 7 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 8 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 8 if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 10 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 10 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 11 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 11 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 11 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

# Post Dragon Fireball
execute if score @s tbcAttackStage matches 12 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 20 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 60.. run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 13 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 13 run function glarth:combat/action_enemy/helper/summon_fireball
execute if score @s tbcAttackStage matches 13 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 13 run tp @e[tag=tbcArrowPN,type=armor_stand] ~ ~ ~ ~-90 ~
execute if score @s tbcAttackStage matches 13 run tag @e[tag=tbcArrowPN,type=armor_stand] add tbcArrowFire
execute if score @s tbcAttackStage matches 13 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 13 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 13..14 run function glarth:combat/action_enemy/helper/fireball

# End
execute if score @s tbcAttackStage matches 16 run kill @e[tag=lava_dragonP]
execute if score @s tbcAttackStage matches 16 run function glarth:combat/action_enemy/util/done

# Dragon
execute as @e[tag=ldX3,type=armor_stand] at @s positioned ~ ~0.2 ~ if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.6] run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0 10
execute as @e[tag=ldX3,type=armor_stand] at @s positioned ~ ~0.2 ~ if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.6] run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.1 10
execute as @e[tag=ldX3,type=armor_stand] at @s positioned ~ ~0.2 ~ if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.6] run particle minecraft:lava ~ ~ ~ 0.3 0.3 0.3 0.1 1

execute as @e[tag=ldX3,type=armor_stand] at @s positioned ~ ~0.2 ~ if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.8] unless score @s lavaDragonAtStg matches 1.. as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute as @e[tag=ldX3,type=armor_stand] at @s positioned ~ ~0.2 ~ if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.8] unless score @s lavaDragonAtStg matches 1.. run scoreboard players set @s lavaDragonAtStg 1

execute as @e[tag=ldX3,type=armor_stand] at @s positioned ~ ~0.2 ~ if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.2] unless score @s lavaDragonAtStg matches 2.. as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_cont
execute as @e[tag=ldX3,type=armor_stand,tag=ld18] at @s positioned ~ ~0.2 ~ if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.2] unless score @s lavaDragonAtStg matches 2.. as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/next_stage
execute as @e[tag=ldX3,type=armor_stand] at @s positioned ~ ~0.2 ~ if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.2] unless score @s lavaDragonAtStg matches 2.. run scoreboard players operation damage tbcStats = @s tbcStrength
execute as @e[tag=ldX3,type=armor_stand] at @s positioned ~ ~0.2 ~ if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.2] unless score @s lavaDragonAtStg matches 2.. run scoreboard players remove damage tbcStats 10
execute as @e[tag=ldX3,type=armor_stand] at @s positioned ~ ~0.2 ~ if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.2] unless score @s lavaDragonAtStg matches 2.. run scoreboard players set fire tbcStats 1
execute as @e[tag=ldX3,type=armor_stand] at @s positioned ~ ~0.2 ~ if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.2] unless score @s lavaDragonAtStg matches 2.. as @e[tag=tbcTurn] as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute as @e[tag=ldX3,type=armor_stand,tag=!ld18] at @s positioned ~ ~0.2 ~ if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.2] unless score @s lavaDragonAtStg matches 2.. as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute as @e[tag=ldX3,type=armor_stand,tag=ld18] at @s positioned ~ ~0.2 ~ if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.2] unless score @s lavaDragonAtStg matches 2.. as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute as @e[tag=ldX3,type=armor_stand] at @s positioned ~ ~0.2 ~ if entity @e[tag=tbcTargetAS,type=armor_stand,distance=..0.2] unless score @s lavaDragonAtStg matches 2.. run scoreboard players set @s lavaDragonAtStg 2
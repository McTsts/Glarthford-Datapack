execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/helper/hold_bow
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 if score n Random matches 1 run scoreboard players set @s tbcAttackStage 10
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 if score n Random matches 2 run scoreboard players set @s tbcAttackStage 6
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 if score n Random matches 3 run scoreboard players set @s tbcAttackStage 2

# Firework #1
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/helper/summon_arrow_firework
execute if score @s tbcAttackStage matches 2 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 2 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run summon minecraft:firework_rocket ~ ~ ~ {Life:9,LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"small_ball",colors:[I;16711680],fade_colors:[I;16774556],has_trail:1b,has_twinkle:1b}]}}}}
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 10 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

# Firework #2
execute if score @s tbcAttackStage matches 6 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/helper/summon_arrow_firework
execute if score @s tbcAttackStage matches 6 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 6 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 8 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run summon minecraft:firework_rocket ~ ~ ~ {Life:9,LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"small_ball",colors:[I;16711680],fade_colors:[I;16774556],has_trail:1b,has_twinkle:1b}]}}}}
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 10 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

# Firework #3
execute if score @s tbcAttackStage matches 10 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 10 run function glarth:combat/action_enemy/helper/summon_arrow_firework
execute if score @s tbcAttackStage matches 10 run tp @e[tag=tbcArrowPN,type=armor_stand] ^-0.9 ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 10 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 12 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run summon minecraft:firework_rocket ~ ~ ~ {Life:9,LifeTime:0,FireworksItem:{id:"firework_rocket",count:1,components:{"minecraft:fireworks":{flight_duration:1b,explosions:[{shape:"small_ball",colors:[I;16711680],fade_colors:[I;16774556],has_trail:1b,has_twinkle:1b}]}}}}
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 10 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 13 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

# End
execute if score @s tbcAttackStage matches 14 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage
execute if score @s tbcAttackStage matches 2..14 run function glarth:combat/action_enemy/helper/arrow_firework

execute if score @s tbcAttackStage matches 15 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 15 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done

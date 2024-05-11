# 0-1
execute if score @s tbcAttackStage matches 0..1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 1 run tag @s add tbcNoAnim
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 1 run function glarth:mechanic/char/blink/end
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 01 run item replace entity @s armor.head with netherite_axe{CustomModelData:1}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 02 run item replace entity @s armor.head with netherite_axe{CustomModelData:2}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 03 run item replace entity @s armor.head with netherite_axe{CustomModelData:3}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 04 run item replace entity @s armor.head with netherite_axe{CustomModelData:4}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 05 run item replace entity @s armor.head with netherite_axe{CustomModelData:5}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 06 run item replace entity @s armor.head with netherite_axe{CustomModelData:6}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 07 run item replace entity @s armor.head with netherite_axe{CustomModelData:7}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 08 run item replace entity @s armor.head with netherite_axe{CustomModelData:8}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 09 run item replace entity @s armor.head with netherite_axe{CustomModelData:9}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 10 run item replace entity @s armor.head with netherite_axe{CustomModelData:10}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 11 run item replace entity @s armor.head with netherite_axe{CustomModelData:11}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 12 run item replace entity @s armor.head with netherite_axe{CustomModelData:12}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 13 run item replace entity @s armor.head with netherite_axe{CustomModelData:13}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 14 run item replace entity @s armor.head with netherite_axe{CustomModelData:14}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 15 run item replace entity @s armor.head with netherite_axe{CustomModelData:15}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 16 run item replace entity @s armor.head with netherite_axe{CustomModelData:16}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 17 run item replace entity @s armor.head with netherite_axe{CustomModelData:17}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 18 run item replace entity @s armor.head with netherite_axe{CustomModelData:18}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 19 run item replace entity @s armor.head with netherite_axe{CustomModelData:19}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 20 run item replace entity @s armor.head with netherite_axe{CustomModelData:20}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 21 run item replace entity @s armor.head with netherite_axe{CustomModelData:21}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 22 run item replace entity @s armor.head with netherite_axe{CustomModelData:22}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 23 run item replace entity @s armor.head with netherite_axe{CustomModelData:23}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 24 run item replace entity @s armor.head with netherite_axe{CustomModelData:24}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 25 run item replace entity @s armor.head with netherite_axe{CustomModelData:25}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 26 run item replace entity @s armor.head with netherite_axe{CustomModelData:26}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 27 run item replace entity @s armor.head with netherite_axe{CustomModelData:27}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 28 run item replace entity @s armor.head with netherite_axe{CustomModelData:28}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 29 run item replace entity @s armor.head with netherite_axe{CustomModelData:29}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 30 run item replace entity @s armor.head with netherite_axe{CustomModelData:30}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 31 run item replace entity @s armor.head with netherite_axe{CustomModelData:31}
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 31 run scoreboard players operation @s tbcStrength *= 2 Const
execute if score @s tbcAttackStage matches 0..1 if score @s tbcAttackTimer matches 31 run scoreboard players add @s tbcStrength 10
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 32.. run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run scoreboard players set @s tbcAttackStage 1

#2
execute if score @s tbcAttackStage matches 2 as @e[scores={tbcID=2}] at @s facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 2 as @e[scores={tbcID=2}] at @s if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage

#3
execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run data merge entity @s {Motion:[0.0,0.35,0.0],NoGravity:0}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 5 run data merge entity @e[scores={tbcID=2},limit=1] {Motion:[0.0,0.65,0.0],NoGravity:0}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 26 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcShockwave"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 26 run scoreboard players set @s tbcAttackTimerX 0
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 18..26 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.15 ~ ~
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 26 run function glarth:combat/action_enemy/util/next_stage

#4
execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimerX 1
execute if score @s tbcAttackStage matches 4 run scoreboard players operation length tbcWhip = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 4 run scoreboard players set rotation tbcWhip 1
execute if score @s tbcAttackStage matches 4 run scoreboard players set dir tbcWhip -3
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcShockwave,type=area_effect_cloud,limit=1] at @s rotated ~90 ~ run function glarth:combat/action_enemy/helper/whip_crit
execute if score @s tbcAttackStage matches 4 run scoreboard players operation length tbcWhip = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 4 run scoreboard players set rotation tbcWhip 1
execute if score @s tbcAttackStage matches 4 run scoreboard players set dir tbcWhip 3
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcShockwave,type=area_effect_cloud,limit=1] at @s rotated ~-90 ~ run function glarth:combat/action_enemy/helper/whip_crit
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcShockwave,type=area_effect_cloud,limit=1] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.25 ~ ~
execute if score @s tbcAttackStage matches 4 if entity @e[tag=tbcTargetAS,tag=tbcWhipHit] unless score @s tbcAttackTimerX matches 30.. run scoreboard players set @s tbcAttackTimerX 30
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimerX matches 32.. run function glarth:combat/action_enemy/util/next_stage

#5
execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 1 run tag @e[tag=tbcAttackableAS,type=armor_stand] remove tbcWhipHit
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 1 run kill @e[tag=tbcShockwave,type=area_effect_cloud]
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

#6
execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/util/next_stage

#7-8
execute if score @s tbcAttackStage matches 7 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 7 if entity @e[tag=tbcSelMarker,distance=..0.2] facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 7 if entity @e[tag=tbcSelMarker,distance=..0.2] run scoreboard players set @s tbcAttackStage 8

execute if score @s tbcAttackStage matches 7..8 as @e[scores={tbcID=2}] at @s facing entity @e[scores={tbcIDM=2}] feet rotated ~ 0 run tp @s[tag=!tbcReady] ^ ^ ^0.15 ~ ~
execute if score @s tbcAttackStage matches 7..8 as @e[scores={tbcID=2}] at @s if entity @e[scores={tbcIDM=2},distance=..0.2] run function glarth:combat/action_enemy/util/ready

execute if score @s tbcAttackStage matches 7..8 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 01 run item replace entity @s armor.head with netherite_axe{CustomModelData:31}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 02 run item replace entity @s armor.head with netherite_axe{CustomModelData:30}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 03 run item replace entity @s armor.head with netherite_axe{CustomModelData:29}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 04 run item replace entity @s armor.head with netherite_axe{CustomModelData:28}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 05 run item replace entity @s armor.head with netherite_axe{CustomModelData:27}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 06 run item replace entity @s armor.head with netherite_axe{CustomModelData:26}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 07 run item replace entity @s armor.head with netherite_axe{CustomModelData:25}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 08 run item replace entity @s armor.head with netherite_axe{CustomModelData:24}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 09 run item replace entity @s armor.head with netherite_axe{CustomModelData:23}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 10 run item replace entity @s armor.head with netherite_axe{CustomModelData:22}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 11 run item replace entity @s armor.head with netherite_axe{CustomModelData:21}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 12 run item replace entity @s armor.head with netherite_axe{CustomModelData:20}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 13 run item replace entity @s armor.head with netherite_axe{CustomModelData:19}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 14 run item replace entity @s armor.head with netherite_axe{CustomModelData:18}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 15 run item replace entity @s armor.head with netherite_axe{CustomModelData:17}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 16 run item replace entity @s armor.head with netherite_axe{CustomModelData:16}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 17 run item replace entity @s armor.head with netherite_axe{CustomModelData:15}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 18 run item replace entity @s armor.head with netherite_axe{CustomModelData:14}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 19 run item replace entity @s armor.head with netherite_axe{CustomModelData:13}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 20 run item replace entity @s armor.head with netherite_axe{CustomModelData:12}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 21 run item replace entity @s armor.head with netherite_axe{CustomModelData:11}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 22 run item replace entity @s armor.head with netherite_axe{CustomModelData:10}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 23 run item replace entity @s armor.head with netherite_axe{CustomModelData:9}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 24 run item replace entity @s armor.head with netherite_axe{CustomModelData:8}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 25 run item replace entity @s armor.head with netherite_axe{CustomModelData:7}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 26 run item replace entity @s armor.head with netherite_axe{CustomModelData:6}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 27 run item replace entity @s armor.head with netherite_axe{CustomModelData:5}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 28 run item replace entity @s armor.head with netherite_axe{CustomModelData:4}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 29 run item replace entity @s armor.head with netherite_axe{CustomModelData:3}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 30 run item replace entity @s armor.head with netherite_axe{CustomModelData:2}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 31 run item replace entity @s armor.head with netherite_axe{CustomModelData:1}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 32 run item replace entity @s armor.head with diamond_hoe{CustomModelData:524}
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 35 run tag @s remove tbcNoAnim
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 35 run scoreboard players remove @s tbcStrength 10
execute if score @s tbcAttackStage matches 7..8 if score @s tbcAttackTimer matches 35 run scoreboard players operation @s tbcStrength /= 2 Const
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 35.. run function glarth:combat/action_enemy/util/ready

# 9
execute if score @s tbcAttackStage matches 9 run function glarth:combat/action_enemy/util/done
# transform
execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run data merge entity @s {CustomNameVisible:0}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run tag @s add tbcEnemyTall
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 1 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=100]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 2 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=99]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 3 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=98]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 4 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=97]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=96]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 6 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=95]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 7 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=94]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 8 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=93]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 9 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=92]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 10 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=91]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 11 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=90]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 12 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=89]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 13 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=88]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 14 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=87]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 15 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=86]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 16 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=85]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 17 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=84]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 18 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=83]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 19 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=82]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=81]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 21 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=80]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 22 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=79]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 23 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=78]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 24 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=77]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 25 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=76]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 26 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=75]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 27 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=74]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 28 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=73]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 29 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=72]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 30 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=71]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 31 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=70]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 32 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=69]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 33 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=68]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 34 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=67]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 35 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=66]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 36 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=65]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 37 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=64]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 38 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=63]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 39 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=62]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 40 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=61]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 41 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=60]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 42 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=59]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 43 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=58]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 44 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=57]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 45 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=56]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 46 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=55]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 47 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=54]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 48 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=53]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 49 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=52]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 50 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=51]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 51 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=50]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 52 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=49]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 53 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=48]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 54 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=47]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 55 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=46]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 56 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=45]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 57 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=44]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 58 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=43]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 59 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=42]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 60 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=41]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 61 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=40]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 62 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=39]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 63 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=38]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 64 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=37]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 65 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=36]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 66 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=35]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 67 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=34]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 68 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=33]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 69 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=32]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 70 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=31]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 71 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=30]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 72 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=29]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 73 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=28]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 74 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=27]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 75 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=26]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 76 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=25]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 77 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=24]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 78 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=23]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 79 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=22]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 80 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=21]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 81 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=20]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 82 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=19]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 83 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=18]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 84 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=17]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 85 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=16]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 86 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=15]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 87 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=14]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 88 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=13]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 89 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=12]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 90 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=11]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 91 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=10]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 92 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=9]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 93 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=8]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 94 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=7]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 95 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=6]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 96 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=5]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 97 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=4]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 98 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=3]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 99 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=2]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 100 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=1]
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 100 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

# to middle
execute if score @s tbcAttackStage matches 3 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 3 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 3 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..0.3] run function glarth:combat/action_enemy/util/next_stage


# Slam
execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 at @s run tp @s ~ ~0.2 ~
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 at @s run tp @s ~ ~-0.4 ~
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 5 at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0.0f,Duration:2147483647,Tags:["tbc","tbcShockwave"],Particle:"minecraft:block minecraft:air",Effects:[]}
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 5 run scoreboard players set @s tbcAttackTimerX 0
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimerX 1
execute if score @s tbcAttackStage matches 6 run scoreboard players operation length tbcWhip = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 6 run scoreboard players set dir tbcWhip -3
execute if score @s tbcAttackStage matches 6 as @e[tag=tbcShockwave,type=area_effect_cloud,limit=1] at @s rotated ~90 ~ run function glarth:combat/action_enemy/helper/whip_crit
execute if score @s tbcAttackStage matches 6 run scoreboard players operation length tbcWhip = @s tbcAttackTimer
execute if score @s tbcAttackStage matches 6 run scoreboard players set dir tbcWhip 3
execute if score @s tbcAttackStage matches 6 as @e[tag=tbcShockwave,type=area_effect_cloud,limit=1] at @s rotated ~-90 ~ run function glarth:combat/action_enemy/helper/whip_crit
execute if score @s tbcAttackStage matches 6 as @e[tag=tbcShockwave,type=area_effect_cloud,limit=1] at @s facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.25 ~ ~
execute if score @s tbcAttackStage matches 6 if entity @e[tag=tbcWhipHit,tag=tbcTargetAS] unless score @s tbcAttackTimerX matches 30.. run scoreboard players set @s tbcAttackTimerX 30
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimerX matches 32.. run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 1 run tag @e[tag=tbcPlayerAS,type=armor_stand] remove tbcWhipHit
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 1 run kill @e[tag=tbcShockwave,type=area_effect_cloud]
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 8 run function glarth:combat/action_enemy/util/next_stage

# Fang
execute if score @s tbcAttackStage matches 9 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 9 run summon minecraft:armor_stand ^ ^ ^1 {Small:1,Marker:1,NoGravity:1,Invisible:1,Tags:["tbc","tbcFang","tbcFangN"]}
execute if score @s tbcAttackStage matches 9 run tp @e[tag=tbcFangN,type=armor_stand] ^ ^ ^ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 9 run tag @e[tag=tbcFangN,type=armor_stand] remove tbcFangN
execute if score @s tbcAttackStage matches 9 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 10 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/next_stage
execute if score @s tbcAttackStage matches 10 run function glarth:combat/action_enemy/helper/fangs2

# Whip
execute if score @s tbcAttackStage matches 11 at @s run tp @s ~ ~ ~ facing entity @e[tag=tbcPlayerAS1,limit=1]
execute if score @s tbcAttackStage matches 11 at @s if entity @a[scores={playerid=3}] run tp @s ~ ~ ~ facing entity @e[tag=tbcPlayerAS3,limit=1]
execute if score @s tbcAttackStage matches 11 at @s run tp @s ~ ~ ~ ~20 ~
execute if score @s tbcAttackStage matches 11 store result score rightEnd tbcWhip run data get entity @s Rotation[0] 1
execute if score @s tbcAttackStage matches 11 at @s run tp @s ~ ~ ~ facing entity @e[tag=tbcPlayerAS1,limit=1]
execute if score @s tbcAttackStage matches 11 at @s if entity @a[scores={playerid=2}] run tp @s ~ ~ ~ facing entity @e[tag=tbcPlayerAS2,limit=1]
execute if score @s tbcAttackStage matches 11 at @s run tp @s ~ ~ ~ ~-20 ~
execute if score @s tbcAttackStage matches 11 store result score leftEnd tbcWhip run data get entity @s Rotation[0] 1
execute if score @s tbcAttackStage matches 11 run playsound minecraft:entity.leash_knot.place hostile @a ~ ~ ~ 3 1
execute if score @s tbcAttackStage matches 11 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 11 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 12 run scoreboard players add @s tbcAttackTimer 5
execute if score @s tbcAttackStage matches 12 run scoreboard players set rotation tbcWhip -50
execute if score @s tbcAttackStage matches 12 run scoreboard players set length tbcWhip 0
execute if score @s tbcAttackStage matches 12 run scoreboard players operation length tbcWhip += @s tbcAttackTimer
execute if score @s tbcAttackStage matches 12 run scoreboard players set dir tbcWhip 0
execute if score @s tbcAttackStage matches 12 run function glarth:combat/action_enemy/helper/whip_crit2
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 50.. run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 13 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 2 as @e[tag=tbcPlayerAS] run tag @s remove tbcWhipHit
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 2 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 2 run playsound minecraft:entity.leash_knot.place hostile @a ~ ~ ~ 3 0.5
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 2 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 14 unless score check tbcWhip >= rightEnd tbcWhip run tp @s ~ ~ ~ ~1 ~
execute if score @s tbcAttackStage matches 14 unless score check tbcWhip >= rightEnd tbcWhip run scoreboard players add @s tbcAttackTimer 2
execute if score @s tbcAttackStage matches 14 if score check tbcWhip >= rightEnd tbcWhip run scoreboard players remove @s tbcAttackTimer 2
execute if score @s tbcAttackStage matches 14 run scoreboard players set rotation tbcWhip -50
execute if score @s tbcAttackStage matches 14 run scoreboard players operation rotation tbcWhip += @s tbcAttackTimer
execute if score @s tbcAttackStage matches 14 run scoreboard players set length tbcWhip 50
execute if score @s tbcAttackStage matches 14 run scoreboard players set dir tbcWhip 1
#execute if score @s tbcAttackStage matches 14 run scoreboard players operation dir tbcWhip *= @a[tag=inTBC]
execute if score @s tbcAttackStage matches 14 run function glarth:combat/action_enemy/helper/whip_crit2
execute if score @s tbcAttackStage matches 14 store result score check tbcWhip run data get entity @s Rotation[0] 1
execute if score @s tbcAttackStage matches 14 if score check tbcWhip >= rightEnd tbcWhip if score @s tbcAttackTimer matches ..0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 15 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 2 run playsound minecraft:entity.leash_knot.place hostile @a ~ ~ ~ 3 0.5
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 2 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 16 run scoreboard players add @s tbcAttackTimer 5
execute if score @s tbcAttackStage matches 16 run scoreboard players set rotation tbcWhip -50
execute if score @s tbcAttackStage matches 16 run scoreboard players set length tbcWhip 50
execute if score @s tbcAttackStage matches 16 run scoreboard players operation length tbcWhip -= @s tbcAttackTimer
execute if score @s tbcAttackStage matches 16 run scoreboard players set dir tbcWhip 0
execute if score @s tbcAttackStage matches 16 run function glarth:combat/action_enemy/helper/whip_crit2
execute if score @s tbcAttackStage matches 16 if score @s tbcAttackTimer matches 50.. as @e[tag=tbcPlayerAS] run tag @s remove tbcWhipHit
execute if score @s tbcAttackStage matches 16 if score @s tbcAttackTimer matches 50.. run function glarth:combat/action_enemy/util/next_stage

# to loc
execute if score @s tbcAttackStage matches 17 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 17 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage


# tranform back
execute if score @s tbcAttackStage matches 18 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 5 run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 19 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 1 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=1]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 2 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=2]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 3 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=3]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 4 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=4]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 5 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=5]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 6 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=6]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 7 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=7]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 8 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=8]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 9 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=9]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 10 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=10]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 11 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=11]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 12 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=12]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 13 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=13]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 14 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=14]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 15 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=15]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 16 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=16]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 17 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=17]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 18 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=18]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 19 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=19]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 20 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=20]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 21 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=21]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 22 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=22]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 23 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=23]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 24 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=24]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 25 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=25]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 26 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=26]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 27 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=27]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 28 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=28]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 29 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=29]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 30 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=30]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 31 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=31]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 32 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=32]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 33 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=33]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 34 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=34]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 35 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=35]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 36 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=36]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 37 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=37]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 38 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=38]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 39 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=39]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 40 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=40]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 41 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=41]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 42 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=42]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 43 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=43]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 44 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=44]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 45 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=45]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 46 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=46]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 47 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=47]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 48 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=48]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 49 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=49]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 50 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=50]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 51 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=51]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 52 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=52]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 53 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=53]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 54 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=54]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 55 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=55]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 56 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=56]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 57 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=57]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 58 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=58]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 59 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=59]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 60 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=60]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 61 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=61]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 62 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=62]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 63 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=63]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 64 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=64]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 65 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=65]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 66 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=66]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 67 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=67]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 68 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=68]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 69 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=69]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 70 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=70]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 71 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=71]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 72 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=72]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 73 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=73]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 74 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=74]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 75 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=75]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 76 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=76]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 77 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=77]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 78 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=78]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 79 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=79]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 80 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=80]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 81 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=81]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 82 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=82]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 83 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=83]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 84 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=84]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 85 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=85]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 86 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=86]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 87 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=87]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 88 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=88]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 89 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=89]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 90 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=90]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 91 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=91]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 92 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=92]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 93 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=93]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 94 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=94]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 95 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=95]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 96 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=96]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 97 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=97]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 98 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=98]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 99 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=99]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 100 run item replace entity @s armor.head with minecraft:diamond_axe[custom_model_data=100]
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 100 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 20 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 20 if score @s tbcAttackTimer matches 5 run tag @s remove tbcEnemyTall
execute if score @s tbcAttackStage matches 20 if score @s tbcAttackTimer matches 5 run data merge entity @s {CustomNameVisible:1}
execute if score @s tbcAttackStage matches 20 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/done
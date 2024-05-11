execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..3] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 0..7 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ^ ^ ^0.2
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 7 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 at @s run tp @s ~ ~ ~ facing entity @e[tag=tbcPlayerAS2,limit=1]
execute if score @s tbcAttackStage matches 2 at @s run tp @s ~ ~ ~ facing entity @e[tag=tbcPlayerAS1,limit=1]
execute if score @s tbcAttackStage matches 2 at @s if entity @a[scores={playerid=3},gamemode=adventure] run tp @s ~ ~ ~ facing entity @e[tag=tbcPlayerAS3,limit=1]
execute if score @s tbcAttackStage matches 2 at @s run tp @s ~ ~ ~ ~20 ~
execute if score @s tbcAttackStage matches 2 store result score rightEnd tbcWhip run data get entity @s Rotation[0] 1
execute if score @s tbcAttackStage matches 2 at @s run tp @s ~ ~ ~ facing entity @e[tag=tbcPlayerAS3,limit=1]
execute if score @s tbcAttackStage matches 2 at @s run tp @s ~ ~ ~ facing entity @e[tag=tbcPlayerAS1,limit=1]
execute if score @s tbcAttackStage matches 2 at @s if entity @a[scores={playerid=2},gamemode=adventure] run tp @s ~ ~ ~ facing entity @e[tag=tbcPlayerAS2,limit=1]
execute if score @s tbcAttackStage matches 2 at @s run tp @s ~ ~ ~ ~-20 ~
execute if score @s tbcAttackStage matches 2 store result score leftEnd tbcWhip run data get entity @s Rotation[0] 1
execute if score @s tbcAttackStage matches 2 run playsound minecraft:entity.leash_knot.place hostile @a ~ ~ ~ 3 1
execute if score @s tbcAttackStage matches 2 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 5
execute if score @s tbcAttackStage matches 3 run scoreboard players set rotation tbcWhip -50
execute if score @s tbcAttackStage matches 3 run scoreboard players set length tbcWhip 0
execute if score @s tbcAttackStage matches 3 run scoreboard players operation length tbcWhip += @s tbcAttackTimer
execute if score @s tbcAttackStage matches 3 run scoreboard players set dir tbcWhip 0
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/helper/whip_crit2
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 50.. run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 2 as @e[tag=tbcPlayerAS] run tag @s remove tbcWhipHit
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 2 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 2 run playsound minecraft:entity.leash_knot.place hostile @a ~ ~ ~ 3 0.5
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 2 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 unless score check tbcWhip >= rightEnd tbcWhip run tp @s ~ ~ ~ ~1.25 ~
execute if score @s tbcAttackStage matches 5 unless score check tbcWhip >= rightEnd tbcWhip run scoreboard players add @s tbcAttackTimer 3
execute if score @s tbcAttackStage matches 5 if score check tbcWhip >= rightEnd tbcWhip run scoreboard players remove @s tbcAttackTimer 3
execute if score @s tbcAttackStage matches 5 run scoreboard players set rotation tbcWhip -50
execute if score @s tbcAttackStage matches 5 run scoreboard players operation rotation tbcWhip += @s tbcAttackTimer
execute if score @s tbcAttackStage matches 5 run scoreboard players set length tbcWhip 50
execute if score @s tbcAttackStage matches 5 run scoreboard players set dir tbcWhip 1
execute if score @s tbcAttackStage matches 5 run scoreboard players operation dir tbcWhip *= @a[tag=inTBC]
execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/helper/whip_crit2
execute if score @s tbcAttackStage matches 5 store result score check tbcWhip run data get entity @s Rotation[0] 1
execute if score @s tbcAttackStage matches 5 if score check tbcWhip >= rightEnd tbcWhip if score @s tbcAttackTimer matches ..0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 2 as @e[tag=tbcPlayerAS] run tag @s remove tbcWhipHit
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 2 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 2 run playsound minecraft:entity.leash_knot.place hostile @a ~ ~ ~ 3 0.5
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 2 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 unless score check tbcWhip <= leftEnd tbcWhip run tp @s ~ ~ ~ ~-1.5 ~
execute if score @s tbcAttackStage matches 7 unless score check tbcWhip <= leftEnd tbcWhip run scoreboard players add @s tbcAttackTimer 3
execute if score @s tbcAttackStage matches 7 if score check tbcWhip <= leftEnd tbcWhip run scoreboard players remove @s tbcAttackTimer 3
execute if score @s tbcAttackStage matches 7 run scoreboard players set rotation tbcWhip -50
execute if score @s tbcAttackStage matches 7 run scoreboard players operation rotation tbcWhip += @s tbcAttackTimer
execute if score @s tbcAttackStage matches 7 run scoreboard players set length tbcWhip 50
execute if score @s tbcAttackStage matches 7 run scoreboard players set dir tbcWhip -1
execute if score @s tbcAttackStage matches 7 run scoreboard players operation dir tbcWhip *= @a[tag=inTBC]
execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_enemy/helper/whip_crit2
execute if score @s tbcAttackStage matches 7 store result score check tbcWhip run data get entity @s Rotation[0] 1
execute if score @s tbcAttackStage matches 7 if score check tbcWhip <= leftEnd tbcWhip if score @s tbcAttackTimer matches ..0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 8 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 2 as @e[tag=tbcPlayerAS] run tag @s remove tbcWhipHit
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 2 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 2 run playsound minecraft:entity.leash_knot.place hostile @a ~ ~ ~ 3 0.5
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 2 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 9 unless score check tbcWhip >= rightEnd tbcWhip run tp @s ~ ~ ~ ~1.75 ~
execute if score @s tbcAttackStage matches 9 unless score check tbcWhip >= rightEnd tbcWhip run scoreboard players add @s tbcAttackTimer 3
execute if score @s tbcAttackStage matches 9 if score check tbcWhip >= rightEnd tbcWhip run scoreboard players remove @s tbcAttackTimer 3
execute if score @s tbcAttackStage matches 9 run scoreboard players set rotation tbcWhip -50
execute if score @s tbcAttackStage matches 9 run scoreboard players operation rotation tbcWhip += @s tbcAttackTimer
execute if score @s tbcAttackStage matches 9 run scoreboard players set length tbcWhip 50
execute if score @s tbcAttackStage matches 9 run scoreboard players set dir tbcWhip 1
execute if score @s tbcAttackStage matches 9 run scoreboard players operation dir tbcWhip *= @a[tag=inTBC]
execute if score @s tbcAttackStage matches 9 run function glarth:combat/action_enemy/helper/whip_crit2
execute if score @s tbcAttackStage matches 9 store result score check tbcWhip run data get entity @s Rotation[0] 1
execute if score @s tbcAttackStage matches 9 if score check tbcWhip >= rightEnd tbcWhip if score @s tbcAttackTimer matches ..0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 10 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 2 as @e[tag=tbcPlayerAS] run tag @s remove tbcWhipHit
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 2 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 2 run playsound minecraft:entity.leash_knot.place hostile @a ~ ~ ~ 3 0.5
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 2 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 11 unless score check tbcWhip <= leftEnd tbcWhip run tp @s ~ ~ ~ ~-2.0 ~
execute if score @s tbcAttackStage matches 11 unless score check tbcWhip <= leftEnd tbcWhip run scoreboard players add @s tbcAttackTimer 3
execute if score @s tbcAttackStage matches 11 if score check tbcWhip <= leftEnd tbcWhip run scoreboard players remove @s tbcAttackTimer 3
execute if score @s tbcAttackStage matches 11 run scoreboard players set rotation tbcWhip -50
execute if score @s tbcAttackStage matches 11 run scoreboard players operation rotation tbcWhip += @s tbcAttackTimer
execute if score @s tbcAttackStage matches 11 run scoreboard players set length tbcWhip 50
execute if score @s tbcAttackStage matches 11 run scoreboard players set dir tbcWhip -1
execute if score @s tbcAttackStage matches 11 run scoreboard players operation dir tbcWhip *= @a[tag=inTBC]
execute if score @s tbcAttackStage matches 11 run function glarth:combat/action_enemy/helper/whip_crit2
execute if score @s tbcAttackStage matches 11 store result score check tbcWhip run data get entity @s Rotation[0] 1
execute if score @s tbcAttackStage matches 11 if score check tbcWhip <= leftEnd tbcWhip if score @s tbcAttackTimer matches ..0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 12 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 2 as @e[tag=tbcPlayerAS] run tag @s remove tbcWhipHit
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 2 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 2 run playsound minecraft:entity.leash_knot.place hostile @a ~ ~ ~ 3 0.5
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 2 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 13 unless score check tbcWhip >= rightEnd tbcWhip run tp @s ~ ~ ~ ~2.25 ~
execute if score @s tbcAttackStage matches 13 unless score check tbcWhip >= rightEnd tbcWhip run scoreboard players add @s tbcAttackTimer 3
execute if score @s tbcAttackStage matches 13 if score check tbcWhip >= rightEnd tbcWhip run scoreboard players remove @s tbcAttackTimer 3
execute if score @s tbcAttackStage matches 13 run scoreboard players set rotation tbcWhip -50
execute if score @s tbcAttackStage matches 13 run scoreboard players operation rotation tbcWhip += @s tbcAttackTimer
execute if score @s tbcAttackStage matches 13 run scoreboard players set length tbcWhip 50
execute if score @s tbcAttackStage matches 13 run scoreboard players set dir tbcWhip 1
execute if score @s tbcAttackStage matches 13 run scoreboard players operation dir tbcWhip *= @a[tag=inTBC]
execute if score @s tbcAttackStage matches 13 run function glarth:combat/action_enemy/helper/whip_crit2
execute if score @s tbcAttackStage matches 13 store result score check tbcWhip run data get entity @s Rotation[0] 1
execute if score @s tbcAttackStage matches 13 if score check tbcWhip >= rightEnd tbcWhip if score @s tbcAttackTimer matches ..0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 14 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 2 as @e[tag=tbcPlayerAS] run tag @s remove tbcWhipHit
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 2 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 2 run playsound minecraft:entity.leash_knot.place hostile @a ~ ~ ~ 3 0.5
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 2 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 15 unless score check tbcWhip <= leftEnd tbcWhip run tp @s ~ ~ ~ ~-2.5 ~
execute if score @s tbcAttackStage matches 15 unless score check tbcWhip <= leftEnd tbcWhip run scoreboard players add @s tbcAttackTimer 3
execute if score @s tbcAttackStage matches 15 if score check tbcWhip <= leftEnd tbcWhip run scoreboard players remove @s tbcAttackTimer 3
execute if score @s tbcAttackStage matches 15 run scoreboard players set rotation tbcWhip -50
execute if score @s tbcAttackStage matches 15 run scoreboard players operation rotation tbcWhip += @s tbcAttackTimer
execute if score @s tbcAttackStage matches 15 run scoreboard players set length tbcWhip 50
execute if score @s tbcAttackStage matches 15 run scoreboard players set dir tbcWhip -1
execute if score @s tbcAttackStage matches 15 run scoreboard players operation dir tbcWhip *= @a[tag=inTBC]
execute if score @s tbcAttackStage matches 15 run function glarth:combat/action_enemy/helper/whip_crit2
execute if score @s tbcAttackStage matches 15 store result score check tbcWhip run data get entity @s Rotation[0] 1
execute if score @s tbcAttackStage matches 15 if score check tbcWhip <= leftEnd tbcWhip if score @s tbcAttackTimer matches ..0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 16 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 16 if score @s tbcAttackTimer matches 2 as @e[tag=tbcPlayerAS] run tag @s remove tbcWhipHit
execute if score @s tbcAttackStage matches 16 if score @s tbcAttackTimer matches 2 as @e[tag=tbcAttackable] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 16 if score @s tbcAttackTimer matches 2 run playsound minecraft:entity.leash_knot.place hostile @a ~ ~ ~ 3 0.5
execute if score @s tbcAttackStage matches 16 if score @s tbcAttackTimer matches 2 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 17 unless score check tbcWhip >= rightEnd tbcWhip run tp @s ~ ~ ~ ~2.75 ~
execute if score @s tbcAttackStage matches 17 unless score check tbcWhip >= rightEnd tbcWhip run scoreboard players add @s tbcAttackTimer 3
execute if score @s tbcAttackStage matches 17 if score check tbcWhip >= rightEnd tbcWhip run scoreboard players remove @s tbcAttackTimer 3
execute if score @s tbcAttackStage matches 17 run scoreboard players set rotation tbcWhip -50
execute if score @s tbcAttackStage matches 17 run scoreboard players operation rotation tbcWhip += @s tbcAttackTimer
execute if score @s tbcAttackStage matches 17 run scoreboard players set length tbcWhip 50
execute if score @s tbcAttackStage matches 17 run scoreboard players set dir tbcWhip 1
execute if score @s tbcAttackStage matches 17 run scoreboard players operation dir tbcWhip *= @a[tag=inTBC]
execute if score @s tbcAttackStage matches 17 run function glarth:combat/action_enemy/helper/whip_crit2
execute if score @s tbcAttackStage matches 17 store result score check tbcWhip run data get entity @s Rotation[0] 1
execute if score @s tbcAttackStage matches 17 if score check tbcWhip >= rightEnd tbcWhip if score @s tbcAttackTimer matches ..0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 18 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 2 run playsound minecraft:entity.leash_knot.place hostile @a ~ ~ ~ 3 0.5
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 2 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 19 run scoreboard players add @s tbcAttackTimer 5
execute if score @s tbcAttackStage matches 19 run scoreboard players set rotation tbcWhip -50
execute if score @s tbcAttackStage matches 19 run scoreboard players set length tbcWhip 50
execute if score @s tbcAttackStage matches 19 run scoreboard players operation length tbcWhip -= @s tbcAttackTimer
execute if score @s tbcAttackStage matches 19 run scoreboard players set dir tbcWhip 0
execute if score @s tbcAttackStage matches 19 run function glarth:combat/action_enemy/helper/whip_crit2
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 50.. as @e[tag=tbcPlayerAS] run tag @s remove tbcWhipHit
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 50.. run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 20 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 20 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..4] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 21 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 21 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done
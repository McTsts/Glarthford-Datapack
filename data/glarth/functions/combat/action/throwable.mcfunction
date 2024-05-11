execute if score @s tbcAttackStage matches 0 as @e[tag=tbcSelPlayerAS] at @s facing entity @e[tag=tbcMarkerMiddle] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 0 at @e[tag=tbcSelPlayerAS] if entity @e[tag=tbcMarkerMiddle,distance=..0.3] run function glarth:combat/action/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 3 as @e[tag=tbcSelPlayerAS] at @s facing entity @e[scores={tbcSel=1}] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 3 run scoreboard players set @s tbcMenuX 102
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5.. run scoreboard players set r Random 5
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5.. run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5.. run scoreboard players add n Random 2
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5.. run scoreboard players operation throwableSlot tbcStats = n Random
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5.. run scoreboard players set throwableDamage tbcStats 0
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5.. run scoreboard players set throwableWool tbcStats 0
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5.. as @e[tag=tbcSelPlayerAS] at @s if entity @s[y_rotation=45.01..135] run summon minecraft:armor_stand ^-1.15 ^-1.25 ^ {Rotation:[90.0f,0.0f],NoGravity:1,Invisible:1,Tags:["tbc","tbcThrowable"]}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5.. as @e[tag=tbcSelPlayerAS] at @s if entity @s[y_rotation=-134.99..-45] run summon minecraft:armor_stand ^-1.15 ^-1.25 ^ {Rotation:[-90.0f,0.0f],NoGravity:1,Invisible:1,Tags:["tbc","tbcThrowable"]}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5.. as @e[tag=tbcSelPlayerAS] at @s if entity @s[y_rotation=-44.99..45] run summon minecraft:armor_stand ^-1.15 ^-1.25 ^ {Rotation:[0.0f,0.0f],NoGravity:1,Invisible:1,Tags:["tbc","tbcThrowable"]}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5.. as @e[tag=tbcSelPlayerAS] at @s if entity @s[y_rotation=135.01..-135] run summon minecraft:armor_stand ^-1.15 ^-1.25 ^ {Rotation:[180.0f,0.0f],NoGravity:1,Invisible:1,Tags:["tbc","tbcThrowable"]}
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5.. as @e[tag=tbcThrowable] store result entity @s Rotation[0] float 1 run data get entity @e[tag=tbcSelPlayerAS,limit=1] Rotation[0] 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5.. run function glarth:combat/action/throwable_item
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5.. run function glarth:combat/action/helper/throwable_next
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 5.. run function glarth:combat/action/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. run scoreboard players operation throwableSlotX tbcStats = throwableSlot tbcStats
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. run scoreboard players set throwableDamageX tbcStats 0
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. run scoreboard players remove throwableSlotX tbcStats 2
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. if score throwableWool tbcStats = throwableSlotX tbcStats run scoreboard players set throwableDamageX tbcStats 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. if score throwableWool tbcStats = throwableSlotX tbcStats at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1.7
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. run scoreboard players add throwableSlotX tbcStats 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. if score throwableWool tbcStats = throwableSlotX tbcStats run scoreboard players set throwableDamageX tbcStats 2
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. if score throwableWool tbcStats = throwableSlotX tbcStats at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1.7
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. run scoreboard players add throwableSlotX tbcStats 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. if score throwableWool tbcStats = throwableSlotX tbcStats run scoreboard players set throwableDamageX tbcStats 20
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. if score throwableWool tbcStats = throwableSlotX tbcStats at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 2
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. run scoreboard players add throwableSlotX tbcStats 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. if score throwableWool tbcStats = throwableSlotX tbcStats run scoreboard players set throwableDamageX tbcStats 2
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. if score throwableWool tbcStats = throwableSlotX tbcStats at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1.7
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. run scoreboard players add throwableSlotX tbcStats 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. if score throwableWool tbcStats = throwableSlotX tbcStats run scoreboard players set throwableDamageX tbcStats 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. if score throwableWool tbcStats = throwableSlotX tbcStats at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 1.7
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. unless score throwableDamageX tbcStats matches 1.. at @s run playsound error player @s ~ ~ ~ 1 1.2
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. unless score throwableDamageX tbcStats matches 1.. run scoreboard players set throwableDamageX tbcStats -24
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackStage matches 2 if score clicked tbcStats matches 1.. run scoreboard players operation throwableDamage tbcStats += throwableDamageX tbcStats
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 2 run function glarth:combat/action/helper/throwable_next
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 2 run scoreboard players add @s tbcAttackTimerX 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 2 run scoreboard players set @s tbcAttackTimer 0
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimerX matches 50 if entity @s[y_rotation=45.01..135] run scoreboard players set throwR Temp 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimerX matches 50 if entity @s[y_rotation=-134.99..-45] run scoreboard players set throwR Temp 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimerX matches 50 if entity @s[y_rotation=-44.99..45] run scoreboard players set throwR Temp 2
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimerX matches 50 if entity @s[y_rotation=135.01..-135] run scoreboard players set throwR Temp 2
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimerX matches 50 run scoreboard players set @s tbcMenuX -1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimerX matches 50 at @e[tag=tbcSelPlayerAS] run playsound minecraft:entity.phantom.flap player @a ~ ~ ~ 1 2
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimerX matches 50 run function glarth:combat/action/util/next_stage

execute if score @s tbcAttackStage matches 3 as @e[tag=tbcSelPlayerAS] store result score ZO tbcStats if score throwR Temp matches 1 run data get entity @s Pos[0] 10
execute if score @s tbcAttackStage matches 3 as @e[tag=tbcSelPlayerAS] store result score ZO tbcStats if score throwR Temp matches 2 run data get entity @s Pos[2] 10
execute if score @s tbcAttackStage matches 3 as @e[scores={tbcSel=1}] store result score Z Temp if score throwR Temp matches 1 run data get entity @s Pos[0] 10
execute if score @s tbcAttackStage matches 3 as @e[scores={tbcSel=1}] store result score Z Temp if score throwR Temp matches 2 run data get entity @s Pos[2] 10
execute if score @s tbcAttackStage matches 3 run scoreboard players operation Z Temp -= ZO tbcStats
execute if score @s tbcAttackStage matches 3 run scoreboard players operation Z tbcStats = Z Temp
execute if score @s tbcAttackStage matches 3 run scoreboard players set @s tbcAttackTimer 0
execute if score @s tbcAttackStage matches 3 run scoreboard players set damage tbcStats 1
execute if score @s tbcAttackStage matches 3 run scoreboard players operation damage tbcStats += attackStrength tbcStats
execute if score @s tbcAttackStage matches 3 run scoreboard players operation damage tbcStats *= throwableDamage tbcStats
execute if score @s tbcAttackStage matches 3 run scoreboard players operation damage tbcStats /= 3 Const
execute if score @s tbcAttackStage matches 3 if score damage tbcStats matches 0.. run scoreboard players set @s tbcAttackStage 4
execute if score @s tbcAttackStage matches 3 if score damage tbcStats matches ..-1 run scoreboard players set @s tbcAttackStage 5

execute if score @s tbcAttackStage matches 4 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcThrowable,limit=1,sort=nearest] at @s facing entity @e[scores={tbcSel=1}] feet rotated ~ 0 run tp @s ^ ^ ^0.15
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcThrowable,limit=1,sort=nearest] store result score ZC tbcStats if score throwR Temp matches 1 run data get entity @s Pos[0] 10
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcThrowable,limit=1,sort=nearest] store result score ZC tbcStats if score throwR Temp matches 2 run data get entity @s Pos[2] 10
execute if score @s tbcAttackStage matches 4 run scoreboard players operation ZC tbcStats -= ZO tbcStats
execute if score @s tbcAttackStage matches 4 run scoreboard players operation ZC tbcStats *= 100 Const
execute if score @s tbcAttackStage matches 4 run scoreboard players operation ZC tbcStats /= Z tbcStats
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcSelPlayerAS] store result score Y Temp run data get entity @s Pos[1] 100
execute if score @s tbcAttackStage matches 4 run scoreboard players remove Y Temp 115
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 5..9 run scoreboard players add Y Temp 8
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 10..14 run scoreboard players add Y Temp 18
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 15..19 run scoreboard players add Y Temp 29
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 20..24 run scoreboard players add Y Temp 43
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 25..29 run scoreboard players add Y Temp 60
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 30..34 run scoreboard players add Y Temp 79
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 35..39 run scoreboard players add Y Temp 103
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 40..44 run scoreboard players add Y Temp 132
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 45..49 run scoreboard players add Y Temp 166
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 50..54 run scoreboard players add Y Temp 132
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 55..59 run scoreboard players add Y Temp 103
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 60..64 run scoreboard players add Y Temp 79
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 65..69 run scoreboard players add Y Temp 60
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 70..74 run scoreboard players add Y Temp 43
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 75..79 run scoreboard players add Y Temp 29
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 80..84 run scoreboard players add Y Temp 18
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 85..89 run scoreboard players add Y Temp 8
execute if score @s tbcAttackStage matches 4 store result entity @e[tag=tbcThrowable,limit=1,sort=nearest] Pos[1] double 0.01 run scoreboard players get Y Temp
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 100.. if score throwableRet tbcStats matches 0 run kill @e[tag=tbcThrowable]
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 100.. run scoreboard players set @s tbcAttackTimer 0
execute if score @s tbcAttackStage matches 4 if score ZC tbcStats matches 100.. run scoreboard players set @s tbcAttackStage 6
execute if score @s tbcAttackStage matches 4 if score @s tbcAttackTimer matches 100.. run scoreboard players set @s tbcAttackStage 6

execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 1..5 as @e[tag=tbcThrowable] at @s facing entity @e[tag=tbcSelPlayerAS,limit=1] feet rotated ~ 0 run tp @s ^ ^0.07 ^0.05
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 6..10 as @e[tag=tbcThrowable] at @s facing entity @e[tag=tbcSelPlayerAS,limit=1] feet rotated ~ 0 run tp @s ^ ^0.25 ^0.05
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 13..18 as @e[tag=tbcThrowable] at @s facing entity @e[tag=tbcSelPlayerAS,limit=1] feet rotated ~ 0 run tp @s ^ ^-0.15 ^0.05
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 19..22 as @e[tag=tbcThrowable] at @s facing entity @e[tag=tbcSelPlayerAS,limit=1] feet rotated ~ 0 run tp @s ^ ^-0.35 ^0.05
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 22.. if score throwableRet tbcStats matches 0 run kill @e[tag=tbcThrowable]
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 22.. run function glarth:combat/action/util/next_stage

execute if score @s tbcAttackStage matches 6 as @e[tag=tbcThrowable] at @s facing entity @e[tag=tbcSelPlayerAS,limit=1] feet rotated ~ 0 run tp @s ^ ^ ^0.25
execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 10 if score damage tbcStats matches 0.. run scoreboard players set dodge tbcStats 10
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 10 if score damage tbcStats matches 0.. as @e[scores={tbcSel=1}] run function glarth:combat/action_enemy/dodge
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 10 if score damage tbcStats matches 0.. if entity @e[tag=tbcEnderDodge,scores={tbcSel=1}] unless score @e[scores={tbcSel=1},limit=1] tbcStun matches 1.. unless score @e[scores={tbcSel=1},limit=1] tbcFreeze matches 0.. run scoreboard players set dodged tbcStats 3
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 10 if score attackEffect tbcStats matches 1 run scoreboard players set freeze tbcStats 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 10 if score attackEffect tbcStats matches 2 run scoreboard players set blindness tbcStats 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 10 if score attackEffect tbcStats matches 3 run scoreboard players set bee tbcStats 3
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 10 if score attackEffect tbcStats matches 4 run scoreboard players set fire tbcStats 2
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 10 if score attackEffect tbcStats matches 5 run scoreboard players set poison tbcStats 2
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 10 if score damage tbcStats matches 0.. run function glarth:combat/action/util/damage_armor
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 10 if score damage tbcStats matches ..-1 run scoreboard players operation damage tbcStats < -10 Const
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 10 if score damage tbcStats matches ..-1 run function glarth:combat/action/util/damage_self
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 30.. run kill @e[tag=tbcThrowable]
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 30.. run function glarth:combat/action/util/next_stage

execute if score @s tbcAttackStage matches 7 as @e[tag=tbcSelPlayerAS] at @s facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 7 at @e[tag=tbcSelPlayerAS] if entity @e[tag=tbcSelMarker,distance=..0.11] run kill @e[tag=tbcArrowP]
execute if score @s tbcAttackStage matches 7 at @e[tag=tbcSelPlayerAS] if entity @e[tag=tbcSelMarker,distance=..0.11] run function glarth:combat/action/util/done
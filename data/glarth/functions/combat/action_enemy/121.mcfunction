execute if score @s tbcAttackStage matches 0 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 0 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players set r Random 8
execute if score @s tbcAttackStage matches 1 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 1 at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1.5
execute if score @s tbcAttackStage matches 1 run kill @e[tag=tbcTNT]
execute if score @s tbcAttackStage matches 1 if score n Random matches 1..8 run summon minecraft:armor_stand ^ ^-2.00 ^2.7 {Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"dark_purple"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 3..8 run summon minecraft:armor_stand ^ ^-1.38 ^2.7 {Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"dark_purple"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 6..8 run summon minecraft:armor_stand ^ ^-0.76 ^2.7 {Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"dark_purple"}
execute if score @s tbcAttackStage matches 1 if score n Random matches 8..8 run summon minecraft:armor_stand ^ ^-0.14 ^2.7 {Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"dark_purple"}
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcTNT] run function glarth:combat/action_enemy/helper/summon_block_enderman
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcTNT,type=armor_stand] at @s positioned ~ ~1 ~ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand] feet run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score n Random matches 1..2 run scoreboard players set @s tbcAttackStage 12
execute if score @s tbcAttackStage matches 1 if score n Random matches 3..5 run scoreboard players set @s tbcAttackStage 9
execute if score @s tbcAttackStage matches 1 if score n Random matches 6..7 run scoreboard players set @s tbcAttackStage 6
execute if score @s tbcAttackStage matches 1 if score n Random matches 8..8 run scoreboard players set @s tbcAttackStage 3

# Block 1
execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 3 unless score @e[tag=tbcTNTSel,limit=1] tbcBlockType matches 6 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 3 if score @e[tag=tbcTNTSel,limit=1] tbcBlockType matches 6 as @e[tag=tbcAttackable,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 1 1 1 0 7
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 10 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

# Block 2
execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 3 unless score @e[tag=tbcTNTSel,limit=1] tbcBlockType matches 6 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 3 if score @e[tag=tbcTNTSel,limit=1] tbcBlockType matches 6 as @e[tag=tbcAttackable,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 8 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 1 1 1 0 7
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 10 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackStage matches 8 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

# Block 3
execute if score @s tbcAttackStage matches 9 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 3 unless score @e[tag=tbcTNTSel,limit=1] tbcBlockType matches 6 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 3 if score @e[tag=tbcTNTSel,limit=1] tbcBlockType matches 6 as @e[tag=tbcAttackable,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 9 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 11 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 1 1 1 0 7
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 10 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackStage matches 11 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

# Block 4
execute if score @s tbcAttackStage matches 12 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 3 unless score @e[tag=tbcTNTSel,limit=1] tbcBlockType matches 6 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 3 if score @e[tag=tbcTNTSel,limit=1] tbcBlockType matches 6 as @e[tag=tbcAttackable,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 14 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 1 1 1 0 7
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 10 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackStage matches 14 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

# End
execute if score @s tbcAttackStage matches 3..14 run function glarth:combat/action_enemy/helper/block_enderman

execute if score @s tbcAttackStage matches 15 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 15 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/done

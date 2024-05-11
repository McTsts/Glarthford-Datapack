# Ender Fireball
execute if score @s tbcAttackStage matches 0 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/helper/summon_fireball_ender
execute if score @s tbcAttackStage matches 0 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with diamond_hoe{CustomModelData:361}
execute if score @s tbcAttackStage matches 0 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 0 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 0..1 run function glarth:combat/action_enemy/helper/fireball_ender2

# Ender Swipe
execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 45 run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 45 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 45 if score n Random matches 1 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~090 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 45 if score n Random matches 2 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~-90 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 45 if score n Random matches 3 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~180 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] at @s facing entity @e[tag=tbcTurn] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 46.. if entity @s[tag=tbcReady] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 3 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 1..15 run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 21 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 62 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 65 at @e[tag=tbcSelMarker] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 65 as @e[tag=tbcTargetAS] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 3 if score @s tbcAttackTimer matches 85 run function glarth:combat/action_enemy/util/next_stage

# Ender Fireball
execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/util/get_target
execute if score @s tbcAttackStage matches 4 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/helper/summon_fireball_ender
execute if score @s tbcAttackStage matches 4 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with diamond_hoe{CustomModelData:361}
execute if score @s tbcAttackStage matches 4 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 4 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 4..5 run function glarth:combat/action_enemy/helper/fireball_ender2

# Ender Swipe
execute if score @s tbcAttackStage matches 5 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 45 run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 45 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 45 if score n Random matches 1 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~090 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 45 if score n Random matches 2 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~-90 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 45 if score n Random matches 3 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~180 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] at @s facing entity @e[tag=tbcTurn] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 5 if score @s tbcAttackTimer matches 46.. if entity @s[tag=tbcReady] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 6 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 6 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 7 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 1..15 run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 21 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 62 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 65 at @e[tag=tbcSelMarker] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 65 as @e[tag=tbcTargetAS] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 7 if score @s tbcAttackTimer matches 85 run function glarth:combat/action_enemy/util/next_stage

# Ender Blocks
execute if score @s tbcAttackStage matches 8 facing entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 8 if entity @e[tag=tbcMarkerMiddle,type=area_effect_cloud,distance=..2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 9 run scoreboard players set r Random 8
execute if score @s tbcAttackStage matches 9 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 9 at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a ~ ~ ~ 1 1.5
execute if score @s tbcAttackStage matches 9 run kill @e[tag=tbcTNT]
execute if score @s tbcAttackStage matches 9 if score n Random matches 1..8 run summon minecraft:armor_stand ^ ^-2.00 ^2.7 {Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"dark_purple"}
execute if score @s tbcAttackStage matches 9 if score n Random matches 3..8 run summon minecraft:armor_stand ^ ^-1.38 ^2.7 {Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"dark_purple"}
execute if score @s tbcAttackStage matches 9 if score n Random matches 6..8 run summon minecraft:armor_stand ^ ^-0.76 ^2.7 {Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"dark_purple"}
execute if score @s tbcAttackStage matches 9 if score n Random matches 8..8 run summon minecraft:armor_stand ^ ^-0.14 ^2.7 {Pose:{Head:[0f,90f,0f]},Tags:["tbcTNT","tbc"],Marker:1,Glowing:1,NoGravity:1,Invulnerable:1,Fire:10000s,Team:"dark_purple"}
execute if score @s tbcAttackStage matches 9 as @e[tag=tbcTNT] run function glarth:combat/action_enemy/helper/summon_block_enderman
execute if score @s tbcAttackStage matches 9 as @e[tag=tbcTNT,type=armor_stand] at @s positioned ~ ~1 ~ facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand] feet run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 9 if score n Random matches 1..2 run scoreboard players set @s tbcAttackStage 19
execute if score @s tbcAttackStage matches 9 if score n Random matches 3..5 run scoreboard players set @s tbcAttackStage 16
execute if score @s tbcAttackStage matches 9 if score n Random matches 6..7 run scoreboard players set @s tbcAttackStage 13
execute if score @s tbcAttackStage matches 9 if score n Random matches 8..8 run scoreboard players set @s tbcAttackStage 10

# Block 1
execute if score @s tbcAttackStage matches 10 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 3 unless score @e[tag=tbcTNTSel,limit=1] tbcBlockType matches 6 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 3 if score @e[tag=tbcTNTSel,limit=1] tbcBlockType matches 6 as @e[tag=tbcAttackable,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 10 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 12 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 1 1 1 0 7
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 10 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackStage matches 12 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

# Block 2
execute if score @s tbcAttackStage matches 13 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 3 unless score @e[tag=tbcTNTSel,limit=1] tbcBlockType matches 6 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 3 if score @e[tag=tbcTNTSel,limit=1] tbcBlockType matches 6 as @e[tag=tbcAttackable,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 13 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 15 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 1 1 1 0 7
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 10 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackStage matches 15 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

# Block 3
execute if score @s tbcAttackStage matches 16 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 16 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 16 if score @s tbcAttackTimer matches 3 unless score @e[tag=tbcTNTSel,limit=1] tbcBlockType matches 6 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 16 if score @s tbcAttackTimer matches 3 if score @e[tag=tbcTNTSel,limit=1] tbcBlockType matches 6 as @e[tag=tbcAttackable,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 16 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 18 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 1 1 1 0 7
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 10 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackStage matches 18 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

# Block 4
execute if score @s tbcAttackStage matches 19 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTNT,sort=random,limit=1] positioned ~ ~-5 ~ run tag @e[type=armor_stand,tag=tbcTNT,limit=1,sort=furthest] add tbcTNTSel
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 3 unless score @e[tag=tbcTNTSel,limit=1] tbcBlockType matches 6 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 3 if score @e[tag=tbcTNTSel,limit=1] tbcBlockType matches 6 as @e[tag=tbcAttackable,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 19 if score @s tbcAttackTimer matches 3 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 21 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 21 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 1 1 1 0 7
execute if score @s tbcAttackStage matches 21 if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 21 if score @s tbcAttackTimer matches 10 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 21 if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackStage matches 21 if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage

# End
execute if score @s tbcAttackStage matches 10..21 run function glarth:combat/action_enemy/helper/block_enderman

execute if score @s tbcAttackStage matches 22 facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.2 ~ ~
execute if score @s tbcAttackStage matches 22 if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 23 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 23 if score @s tbcAttackTimer matches 3 run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 23 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

# Ender Fireball
execute if score @s tbcAttackStage matches 24 run function glarth:combat/action_enemy/util/get_target
execute if score @s tbcAttackStage matches 24 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 24 run function glarth:combat/action_enemy/helper/summon_fireball_ender
execute if score @s tbcAttackStage matches 24 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with diamond_hoe{CustomModelData:361}
execute if score @s tbcAttackStage matches 24 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 24 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 24 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 25 run function glarth:combat/action_enemy/helper/fireball_ender2

# Ender Swipe & Endermite
execute if score @s tbcAttackStage matches 25 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 25 if score @s tbcAttackTimer matches 01 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 25 if score @s tbcAttackTimer matches 42 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 25 if score @s tbcAttackTimer matches 45 run function glarth:combat/action_enemy/util/hide_hat
execute if score @s tbcAttackStage matches 25 if score @s tbcAttackTimer matches 45 run scoreboard players set r Random 4 
execute if score @s tbcAttackStage matches 25 if score @s tbcAttackTimer matches 45 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 25 if score @s tbcAttackTimer matches 45 if score n Random matches 1 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~000 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 25 if score @s tbcAttackTimer matches 45 if score n Random matches 2 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~090 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 25 if score @s tbcAttackTimer matches 45 if score n Random matches 3 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~-90 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 25 if score @s tbcAttackTimer matches 45 if score n Random matches 4 at @e[tag=tbcTargetAS] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~180 0 positioned ^ ^ ^1.8 rotated ~180 0 facing entity @e[tag=tbcTargetAS] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 25 if score @s tbcAttackTimer matches 45 as @e[tag=tbcTargetAS] at @s facing entity @e[tag=tbcTurn] eyes rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 25 if score @s tbcAttackTimer matches 46.. if entity @s[tag=tbcReady] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 26 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 26 if score @s tbcAttackTimer matches 1 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 26 if score @s tbcAttackTimer matches 3 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 26 if score @s tbcAttackTimer matches 15 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 26 if score @s tbcAttackTimer matches 0..15 rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 26 if score @s tbcAttackTimer matches 16 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 26 if score @s tbcAttackTimer matches 16 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 26 if score @s tbcAttackTimer matches 16 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 26 if score @s tbcAttackTimer matches 22 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 27 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 27 if score @s tbcAttackTimer matches 1..15 run tp @s ^ ^ ^-0.05
execute if score @s tbcAttackStage matches 27 if score @s tbcAttackTimer matches 21 run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
execute if score @s tbcAttackStage matches 27 if score @s tbcAttackTimer matches 62 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 1.33 0.8
execute if score @s tbcAttackStage matches 27 if score @s tbcAttackTimer matches 65 run summon endermite ~ ~ ~ {NoAI:1,Tags:["tbcSil140"],Glowing:1,Team:"dark_purple"}
execute if score @s tbcAttackStage matches 27 if score @s tbcAttackTimer matches 67 as @e[tag=tbcSil140] at @s run tp @s ~ ~ ~ facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1]
execute if score @s tbcAttackStage matches 27 if score @s tbcAttackTimer matches 67 at @e[tag=tbcSelMarker] facing entity @e[tag=tbcMarkerMiddle,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackStage matches 27 if score @s tbcAttackTimer matches 67 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 27 if score @s tbcAttackTimer matches 85 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 28 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 28 if score @s tbcAttackTimer matches 7 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 28 if score @s tbcAttackTimer matches 20 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 28 if score @s tbcAttackTimer matches 0..20 as @e[tag=tbcSil140] at @s rotated ~ 0 run tp @s ^ ^ ^0.05
execute if score @s tbcAttackStage matches 28 if score @s tbcAttackTimer matches 21 if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:block stone ^ ^1 ^1 0 0 0 0 100
execute if score @s tbcAttackStage matches 28 if score @s tbcAttackTimer matches 21 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 28 if score @s tbcAttackTimer matches 21 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 28 if score @s tbcAttackTimer matches 25 run data merge entity @e[tag=tbcSil140,limit=1] {DeathTime:19s,Health:0.0f}
execute if score @s tbcAttackStage matches 28 if score @s tbcAttackTimer matches 25 run function glarth:combat/action_enemy/util/show_hat
execute if score @s tbcAttackStage matches 28 if score @s tbcAttackTimer matches 25 run function glarth:combat/action_enemy/util/next_stage


# Ender Fireball
execute if score @s tbcAttackStage matches 29 run function glarth:combat/action_enemy/util/get_target
execute if score @s tbcAttackStage matches 29 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score @s tbcAttackStage matches 29 run function glarth:combat/action_enemy/helper/summon_fireball_ender
execute if score @s tbcAttackStage matches 29 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with diamond_hoe{CustomModelData:361}
execute if score @s tbcAttackStage matches 29 run tp @e[tag=tbcArrowPN,type=armor_stand] ^ ^0.8 ^-1 facing entity @e[tag=tbcTargetAS,limit=1,type=armor_stand,sort=nearest]
execute if score @s tbcAttackStage matches 29 run tag @e[tag=tbcArrowPN,type=armor_stand] remove tbcArrowPN
execute if score @s tbcAttackStage matches 29 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 30 run function glarth:combat/action_enemy/helper/fireball_ender2
execute if score @s tbcAttackStage matches 30 if entity @s[tag=tbcReady] run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 31 run function glarth:combat/action_enemy/util/done
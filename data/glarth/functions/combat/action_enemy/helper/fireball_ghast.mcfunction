# Particle
execute as @e[tag=tbcArrowP,type=armor_stand] at @s run particle minecraft:flame ~ ~0.5 ~ 0.1 0.1 0.1 0.1 1

# Fly towards player
execute if score ghastBallSpeed tbcStats matches 1 as @e[tag=tbcArrowP,tag=!tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^0.20 ~ ~
execute if score ghastBallSpeed tbcStats matches 2 as @e[tag=tbcArrowP,tag=!tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^0.25 ~ ~
execute if score ghastBallSpeed tbcStats matches 3 as @e[tag=tbcArrowP,tag=!tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^0.30 ~ ~
execute if score ghastBallSpeed tbcStats matches 4 as @e[tag=tbcArrowP,tag=!tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^0.35 ~ ~
execute if score ghastBallSpeed tbcStats matches 5 as @e[tag=tbcArrowP,tag=!tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^0.40 ~ ~
execute if score ghastBallSpeed tbcStats matches 6 as @e[tag=tbcArrowP,tag=!tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^0.45 ~ ~
execute if score ghastBallSpeed tbcStats matches 7 as @e[tag=tbcArrowP,tag=!tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^0.50 ~ ~
execute if score ghastBallSpeed tbcStats matches 8 as @e[tag=tbcArrowP,tag=!tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^0.55 ~ ~
execute if score ghastBallSpeed tbcStats matches 9 as @e[tag=tbcArrowP,tag=!tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^0.60 ~ ~
execute if score ghastBallSpeed tbcStats matches 10 as @e[tag=tbcArrowP,tag=!tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^0.65 ~ ~
execute if score ghastBallSpeed tbcStats matches 11 as @e[tag=tbcArrowP,tag=!tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^0.70 ~ ~
execute if score ghastBallSpeed tbcStats matches 12 as @e[tag=tbcArrowP,tag=!tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^0.75 ~ ~
execute if score ghastBallSpeed tbcStats matches 13 as @e[tag=tbcArrowP,tag=!tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^0.80 ~ ~
execute if score ghastBallSpeed tbcStats matches 14 as @e[tag=tbcArrowP,tag=!tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^0.85 ~ ~
execute if score ghastBallSpeed tbcStats matches 15.. as @e[tag=tbcArrowP,tag=!tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^0.90 ~ ~
execute as @e[tag=tbcArrowP,tag=!tbcFGRev,type=armor_stand] at @s if entity @e[tag=tbcTargetAS,distance=..4.0,type=armor_stand] as @e[tag=tbcTarget,limit=1] unless score @s blocking matches 1 unless score @s blocked matches 1 run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with diamond_hoe{CustomModelData:264}
execute as @e[tag=tbcArrowP,tag=!tbcFGRev,type=armor_stand] at @s if entity @e[tag=tbcTargetAS,distance=..4.0,type=armor_stand] as @e[tag=tbcTarget,limit=1] unless score @s blocking matches 1 unless score @s blocked matches 1 run function glarth:combat/action/blocking_start
execute as @e[tag=tbcArrowP,tag=!tbcFGRev,type=armor_stand] at @s positioned ^ ^ ^-0.8 if entity @e[tag=tbcTargetAS,distance=..0.4,type=armor_stand] run tag @s add func

# Fly towards ghast
execute if score ghastBallSpeed tbcStats matches 1 as @e[tag=tbcArrowP,tag=tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^-0.20 ~ ~
execute if score ghastBallSpeed tbcStats matches 2 as @e[tag=tbcArrowP,tag=tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^-0.25 ~ ~
execute if score ghastBallSpeed tbcStats matches 3 as @e[tag=tbcArrowP,tag=tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^-0.30 ~ ~
execute if score ghastBallSpeed tbcStats matches 4 as @e[tag=tbcArrowP,tag=tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^-0.35 ~ ~
execute if score ghastBallSpeed tbcStats matches 5 as @e[tag=tbcArrowP,tag=tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^-0.40 ~ ~
execute if score ghastBallSpeed tbcStats matches 6 as @e[tag=tbcArrowP,tag=tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^-0.45 ~ ~
execute if score ghastBallSpeed tbcStats matches 7 as @e[tag=tbcArrowP,tag=tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^-0.50 ~ ~
execute if score ghastBallSpeed tbcStats matches 8 as @e[tag=tbcArrowP,tag=tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^-0.55 ~ ~
execute if score ghastBallSpeed tbcStats matches 9 as @e[tag=tbcArrowP,tag=tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^-0.60 ~ ~
execute if score ghastBallSpeed tbcStats matches 10 as @e[tag=tbcArrowP,tag=tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^-0.65 ~ ~
execute if score ghastBallSpeed tbcStats matches 11 as @e[tag=tbcArrowP,tag=tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^-0.70 ~ ~
execute if score ghastBallSpeed tbcStats matches 12 as @e[tag=tbcArrowP,tag=tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^-0.75 ~ ~
execute if score ghastBallSpeed tbcStats matches 13 as @e[tag=tbcArrowP,tag=tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^-0.80 ~ ~
execute if score ghastBallSpeed tbcStats matches 14 as @e[tag=tbcArrowP,tag=tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^-0.85 ~ ~
execute if score ghastBallSpeed tbcStats matches 15.. as @e[tag=tbcArrowP,tag=tbcFGRev,type=armor_stand] at @s run tp @s ^ ^ ^-0.90 ~ ~
execute if score ghastBallSpeed tbcStats matches 1..5 as @e[tag=tbcArrowP,tag=tbcFGRev,type=armor_stand] at @s positioned ~ ~-0.8 ~ if entity @e[tag=tbcTurn,distance=..0.3,type=armor_stand] run tag @s add func2
execute if score ghastBallSpeed tbcStats matches 6..10 as @e[tag=tbcArrowP,tag=tbcFGRev,type=armor_stand] at @s positioned ~ ~-0.8 ~ if entity @e[tag=tbcTurn,distance=..0.4,type=armor_stand] run tag @s add func2
execute if score ghastBallSpeed tbcStats matches 11.. as @e[tag=tbcArrowP,tag=tbcFGRev,type=armor_stand] at @s positioned ~ ~-0.8 ~ if entity @e[tag=tbcTurn,distance=..0.5,type=armor_stand] run tag @s add func2

## Hit Player
# Hit?
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s run scoreboard players operation damage tbcStats *= 2 Const
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s run scoreboard players set fire tbcStats 4
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run particle minecraft:explosion ~ ~0.5 ~ 0.2 0.2 0.2 1 5
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 0 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1.5 1
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 1 at @e[tag=tbcTurn] run playsound minecraft:entity.ghast.ambient hostile @a ~ ~ ~ 1 1
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 1 run scoreboard players add @e[tag=tbcGhast] tbcCharge 1
execute as @e[tag=tbcArrowP,tag=func,type=armor_stand] at @s if score @e[tag=tbcTarget,limit=1] blocked matches 1 run tag @s add tbcFGRev
# Hit.
execute as @e[tag=tbcArrowP,tag=func,tag=!tbcFGRev,type=armor_stand] at @s run function glarth:combat/action_enemy/util/get_target
execute as @e[tag=tbcArrowP,tag=func,tag=!tbcFGRev,type=armor_stand] at @s run function glarth:combat/action_enemy/util/next_stage
execute as @e[tag=tbcArrowP,tag=func,tag=!tbcFGRev,type=armor_stand] at @s run kill @s
# Blocked
execute as @e[tag=tbcArrowP,tag=func,tag=tbcFGRev,type=armor_stand] at @s run tag @s remove func

## Hit Ghast
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s run scoreboard players remove ghastBallMax tbcStats 1
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s run scoreboard players operation r Random = ghastBallBlock tbcStats
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s run scoreboard players operation r Random > 1 Const
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s run function glarth:util/rand_tbc
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s if score ghastBallMax tbcStats matches ..0 run scoreboard players set n Random 1
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s if score n Random matches 2.. run item replace entity @e[tag=tbcGhastDisModel,limit=1] armor.head with diamond_hoe{CustomModelData:362}
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s if score n Random matches 2.. run scoreboard players remove ghastBallBlock tbcStats 1
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s if score n Random matches 2.. run scoreboard players add ghastBallSpeed tbcStats 1
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s if score n Random matches 2.. as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s if score n Random matches 2.. at @e[tag=tbcTurn] run playsound minecraft:entity.ghast.warn hostile @a ~ ~ ~ 1.5 1
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s if score n Random matches 2.. run tag @s remove tbcFGRev
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s if score n Random matches 2.. run tag @s remove func2
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s if score n Random matches ..1 run particle minecraft:explosion ~ ~0.5 ~ 0.2 0.2 0.2 1 5
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s if score n Random matches ..1 run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s if score n Random matches ..1 run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s if score n Random matches ..1 run function glarth:combat/action_enemy/util/damage_self
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s if score n Random matches ..1 run function glarth:combat/action_enemy/util/get_target
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s if score n Random matches ..1 run function glarth:combat/action_enemy/util/next_stage
execute as @e[tag=tbcArrowP,tag=func2,type=armor_stand] at @s if score n Random matches ..1 run kill @s
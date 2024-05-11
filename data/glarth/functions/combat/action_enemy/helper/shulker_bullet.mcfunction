# Speed
execute as @e[tag=tbcShulkerBullet,tag=tbcSB1,type=shulker_bullet] at @s positioned ~ ~-0.7 ~ facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1] feet positioned ~ ~0.7 ~ positioned ^ ^ ^0.13 rotated as @s run tp @s ~ ~ ~
execute as @e[tag=tbcShulkerBullet,tag=tbcSB2,type=shulker_bullet] at @s positioned ~ ~-0.7 ~ facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1] feet positioned ~ ~0.7 ~ positioned ^ ^ ^0.19 rotated as @s run tp @s ~ ~ ~
execute as @e[tag=tbcShulkerBullet,tag=tbcSB3,type=shulker_bullet] at @s positioned ~ ~-0.7 ~ facing entity @e[tag=tbcTargetAS,type=armor_stand,limit=1] feet positioned ~ ~0.7 ~ positioned ^ ^ ^0.25 rotated as @s run tp @s ~ ~ ~

# Stage / Blocking
execute as @e[tag=tbcShulkerBullet,type=shulker_bullet] at @s positioned ~ ~-0.7 ~ if entity @e[tag=tbcTargetAS,distance=..4,type=armor_stand] as @e[tag=tbcTarget,limit=1] unless score @s inBlock matches 1 as @e[tag=tbcTarget,limit=1] unless score @e[tag=tbcTurn,limit=1] tbcAttackStage matches 20.. run function glarth:combat/action_enemy/util/next_stage
execute as @e[tag=tbcShulkerBullet,type=shulker_bullet] at @s positioned ~ ~-0.7 ~ if entity @e[tag=tbcTargetAS,distance=..4,type=armor_stand] as @e[tag=tbcTarget,limit=1] unless score @s inBlock matches 1 run function glarth:combat/action/blocking_init
execute as @e[tag=tbcShulkerBullet,type=shulker_bullet] at @s positioned ~ ~-0.7 ~ if entity @e[tag=tbcTargetAS,distance=..1.1,type=armor_stand] as @e[tag=tbcTarget,limit=1] unless score @s blocking matches 1 unless score @s blocked matches 1 run scoreboard players set preSBhit Temp 1
execute as @e[tag=tbcShulkerBullet,type=shulker_bullet] at @s positioned ~ ~-0.7 ~ if entity @e[tag=tbcTargetAS,distance=..1.1,type=armor_stand] as @e[tag=tbcTarget,limit=1] unless score @s blocking matches 1 unless score @s blocked matches 1 run function glarth:combat/action/blocking_start

# Detect Hit
execute if score preSBhit Temp matches 1 as @e[tag=tbcTargetAS,limit=1] at @s unless entity @e[tag=tbcShulkerBullet,type=shulker_bullet,distance=..2.0] run scoreboard players set preSBhit Temp 2
execute as @e[tag=tbcShulkerBullet,type=shulker_bullet] at @s positioned ~ ~-0.7 ~ if entity @e[tag=tbcTargetAS,distance=..0.25,type=armor_stand] run scoreboard players set preSBhit Temp 2

# Execute Hit
execute if score preSBhit Temp matches 2 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score preSBhit Temp matches 2 as @e[tag=tbcTarget,limit=1] if score @s blocked matches 0 run scoreboard players set @e[tag=tbcTurn] tbcAttackStage 20
execute if score preSBhit Temp matches 2 run scoreboard players operation damage tbcStats = @e[tag=tbcTurn] tbcStrength
execute if score preSBhit Temp matches 2 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score preSBhit Temp matches 2 as @e[tag=tbcTargetAS,limit=1,type=armor_stand] at @s run kill @e[tag=tbcShulkerBullet,type=shulker_bullet,distance=..2.0]
execute if score preSBhit Temp matches 2 run scoreboard players set preSBhit Temp 0

# Update Display
execute as @e[tag=tbcShulkerBullet,type=shulker_bullet] run data merge entity @s {Air:1}
execute as @e[tag=tbcShulkerBullet,type=shulker_bullet] run data merge entity @s {Air:0}


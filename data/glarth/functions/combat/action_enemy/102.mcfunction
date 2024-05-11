execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 11..20 run particle minecraft:smoke ~ ~0.25 ~ 1 1 1 0.1 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 21..30 run particle minecraft:smoke ~ ~0.25 ~ 1 1 1 0.1 4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 31..40 run particle minecraft:smoke ~ ~0.25 ~ 1 1 1 0.1 16
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 41..50 run particle minecraft:smoke ~ ~0.25 ~ 1 1 1 0.1 64
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 at @s run playsound minecraft:entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 2 1.5
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 if entity @s[tag=tbcEnemy1] run scoreboard players set curID Temp 1
execute if score @s tbcAttackStage matches 1 if entity @s[tag=tbcEnemy2] run scoreboard players set curID Temp 2
execute if score @s tbcAttackStage matches 1 if entity @s[tag=tbcEnemy3] run scoreboard players set curID Temp 3
execute if score @s tbcAttackStage matches 1 if entity @s[tag=tbcEnemy4] run scoreboard players set curID Temp 4
execute if score @s tbcAttackStage matches 1 if entity @s[tag=tbcEnemy5] run scoreboard players set curID Temp 5
execute if score @s tbcAttackStage matches 1 run tag @s remove tbcEnemy1
execute if score @s tbcAttackStage matches 1 run tag @s remove tbcEnemy2
execute if score @s tbcAttackStage matches 1 run tag @s remove tbcEnemy3
execute if score @s tbcAttackStage matches 1 run tag @s remove tbcEnemy4
execute if score @s tbcAttackStage matches 1 run tag @s remove tbcEnemy5
execute if score @s tbcAttackStage matches 1 run scoreboard players set r Random 5
execute if score @s tbcAttackStage matches 1 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 1 if score n Random matches 1 at @e[tag=tbcMarkerEnemy1] positioned ~ ~1.7 ~ run tp @e[tag=tbcHealthBar,limit=1,sort=nearest,distance=..9] ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score n Random matches 1 at @e[tag=tbcMarkerEnemy1] positioned ~ ~1.4 ~ run tp @e[tag=tbcHealthBar2,limit=1,sort=nearest,distance=..9] ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score n Random matches 2 at @e[tag=tbcMarkerEnemy2] positioned ~ ~1.7 ~ run tp @e[tag=tbcHealthBar,limit=1,sort=nearest,distance=..9] ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score n Random matches 2 at @e[tag=tbcMarkerEnemy2] positioned ~ ~1.4 ~ run tp @e[tag=tbcHealthBar2,limit=1,sort=nearest,distance=..9] ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score n Random matches 3 at @e[tag=tbcMarkerEnemy3] positioned ~ ~1.7 ~ run tp @e[tag=tbcHealthBar,limit=1,sort=nearest,distance=..9] ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score n Random matches 3 at @e[tag=tbcMarkerEnemy3] positioned ~ ~1.4 ~ run tp @e[tag=tbcHealthBar2,limit=1,sort=nearest,distance=..9] ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score n Random matches 4 at @e[tag=tbcMarkerEnemy4] positioned ~ ~1.7 ~ run tp @e[tag=tbcHealthBar,limit=1,sort=nearest,distance=..9] ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score n Random matches 4 at @e[tag=tbcMarkerEnemy4] positioned ~ ~1.4 ~ run tp @e[tag=tbcHealthBar2,limit=1,sort=nearest,distance=..9] ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score n Random matches 5 at @e[tag=tbcMarkerEnemy5] positioned ~ ~1.7 ~ run tp @e[tag=tbcHealthBar,limit=1,sort=nearest,distance=..9] ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score n Random matches 5 at @e[tag=tbcMarkerEnemy5] positioned ~ ~1.4 ~ run tp @e[tag=tbcHealthBar2,limit=1,sort=nearest,distance=..9] ~ ~ ~
execute if score @s tbcAttackStage matches 1 if score n Random matches 1 run tag @s add tbcEnemy1
execute if score @s tbcAttackStage matches 1 if score n Random matches 2 run tag @s add tbcEnemy2
execute if score @s tbcAttackStage matches 1 if score n Random matches 3 run tag @s add tbcEnemy3
execute if score @s tbcAttackStage matches 1 if score n Random matches 4 run tag @s add tbcEnemy4
execute if score @s tbcAttackStage matches 1 if score n Random matches 5 run tag @s add tbcEnemy5
execute if score @s tbcAttackStage matches 1 run scoreboard players set noEnemyA Temp 5
execute if score @s tbcAttackStage matches 1 run scoreboard players set noEnemyB Temp 5
execute if score @s tbcAttackStage matches 1 run scoreboard players set noEnemyC Temp 5
execute if score @s tbcAttackStage matches 1 run scoreboard players set noEnemyD Temp 5
execute if score @s tbcAttackStage matches 1 unless entity @e[tag=tbcEnemy1,type=armor_stand] run scoreboard players set noEnemyA Temp 1
execute if score @s tbcAttackStage matches 1 unless entity @e[tag=tbcEnemy2,type=armor_stand] run scoreboard players set noEnemyB Temp 2
execute if score @s tbcAttackStage matches 1 unless entity @e[tag=tbcEnemy3,type=armor_stand] run scoreboard players set noEnemyC Temp 3
execute if score @s tbcAttackStage matches 1 unless entity @e[tag=tbcEnemy4,type=armor_stand] run scoreboard players set noEnemyD Temp 4
execute if score @s tbcAttackStage matches 1 unless score n Random matches 1 run function glarth:combat/init_tbc/enemy1
execute if score @s tbcAttackStage matches 1 unless score n Random matches 2 run function glarth:combat/init_tbc/enemy2
execute if score @s tbcAttackStage matches 1 unless score n Random matches 3 run function glarth:combat/init_tbc/enemy3
execute if score @s tbcAttackStage matches 1 unless score n Random matches 4 run function glarth:combat/init_tbc/enemy4
execute if score @s tbcAttackStage matches 1 unless score n Random matches 5 run function glarth:combat/init_tbc/enemy5
execute if score @s tbcAttackStage matches 1 unless score n Random matches 1 as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/entity/illusioner_bannerman_fake
execute if score @s tbcAttackStage matches 1 unless score n Random matches 2 as @e[tag=tbcEnemy2,type=armor_stand] run function glarth:combat/entity/illusioner_bannerman_fake
execute if score @s tbcAttackStage matches 1 unless score n Random matches 3 as @e[tag=tbcEnemy3,type=armor_stand] run function glarth:combat/entity/illusioner_bannerman_fake
execute if score @s tbcAttackStage matches 1 unless score n Random matches 4 as @e[tag=tbcEnemy4,type=armor_stand] run function glarth:combat/entity/illusioner_bannerman_fake
execute if score @s tbcAttackStage matches 1 unless score n Random matches 5 as @e[tag=tbcEnemy5,type=armor_stand] run function glarth:combat/entity/illusioner_bannerman_fake
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy1,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy2,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy3,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy4,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcEnemy5,type=armor_stand] run function glarth:combat/set_loc
execute if score @s tbcAttackStage matches 1 run scoreboard players operation @e[tag=tbcDummy] tbcMaxHealth = @e[tag=tbcEnemy,tag=!tbcDummy] tbcMaxHealth
execute if score @s tbcAttackStage matches 1 run scoreboard players operation @e[tag=tbcDummy] tbcHealth = @e[tag=tbcEnemy,tag=!tbcDummy] tbcHealth
execute if score @s tbcAttackStage matches 1 run scoreboard players set @e[tag=tbcEnemy] tbcSel 0
execute if score @s tbcAttackStage matches 1 if score curID Temp matches 1 run scoreboard players set @e[tag=tbcEnemy1] tbcSel 1
execute if score @s tbcAttackStage matches 1 if score curID Temp matches 2 run scoreboard players set @e[tag=tbcEnemy2] tbcSel 1
execute if score @s tbcAttackStage matches 1 if score curID Temp matches 3 run scoreboard players set @e[tag=tbcEnemy3] tbcSel 1
execute if score @s tbcAttackStage matches 1 if score curID Temp matches 4 run scoreboard players set @e[tag=tbcEnemy4] tbcSel 1
execute if score @s tbcAttackStage matches 1 if score curID Temp matches 5 run scoreboard players set @e[tag=tbcEnemy5] tbcSel 1
execute if score @s tbcAttackStage matches 1 run function glarth:combat/selection
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done
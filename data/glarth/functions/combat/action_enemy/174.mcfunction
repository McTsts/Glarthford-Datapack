execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 5 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run data merge entity @s {ArmorItems:[{id:"stone",Count:1,tag:{CustomName:'{"translate":"tbc.short_name.enemy.crystal_guardian","color":"dark_purple"}'}},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:437}}]}
execute if score @s tbcAttackStage matches 1 run scoreboard players operation tempHealthVal tbcStats = @s tbcHealth
execute if score @s tbcAttackStage matches 1 run scoreboard players operation tempDodgeVal tbcStats = @s tbcDodge
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s tbcDodge -100
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s attack_121 0
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s attack_154 0
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s attack_155 0
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s attack_175 1
execute if score @s tbcAttackStage matches 1 run scoreboard players set @s attack_165 1
execute if score @s tbcAttackStage matches 1 run tag @s add death_021
execute if score @s tbcAttackStage matches 1 run tag @s add stage_034
execute if score @s tbcAttackStage matches 1 run tag @s add tbcNoHealth
execute if score @s tbcAttackStage matches 1 run tag @s add tbcBlock
execute if score @s tbcAttackStage matches 1 run tag @s add tbcDontBars
execute if score @s tbcAttackStage matches 1 run tag @s add tbcImBee
execute if score @s tbcAttackStage matches 1 run tag @s add tbcImFreeze
execute if score @s tbcAttackStage matches 1 run tag @s add tbcImFire
execute if score @s tbcAttackStage matches 1 run tag @s remove tbcWeakBee
execute if score @s tbcAttackStage matches 1 run tag @s remove tbcWeakFreeze
execute if score @s tbcAttackStage matches 1 run tag @s remove tbcWeakFire
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 50 run function glarth:combat/action_enemy/util/done
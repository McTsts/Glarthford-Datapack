execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 11..20 at @e[tag=tbcTargetAS,type=armor_stand] run particle minecraft:firework ~ ~0.25 ~ 1 1 1 0.1 4
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 21..30 at @e[tag=tbcTargetAS,type=armor_stand] run particle minecraft:firework ~ ~0.25 ~ 1 1 1 0.2 8
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 31..40 at @e[tag=tbcTargetAS,type=armor_stand] run particle minecraft:firework ~ ~0.25 ~ 1 1 1 0.3 16
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 41..50 at @e[tag=tbcTargetAS,type=armor_stand] run particle minecraft:firework ~ ~0.25 ~ 1 1 1 0.4 32
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 at @s run playsound minecraft:entity.guardian.death hostile @a ~ ~ ~ 3 2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 44 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_start
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run scoreboard players operation damage tbcStats = @s tbcStrength
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run scoreboard players operation damage tbcStats *= 2 Const
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 if entity @s[tag=tbcEnderPriest] run scoreboard players set damage tbcStats 50
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 as @e[tag=tbcTarget,limit=1] run function glarth:combat/action_enemy/util/damage
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 run effect give @a resistance 1 120 true
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 30 as @e[type=pig,tag=tbcCompanion] at @s run tp @s ~20 ~100 ~20
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 50 at @e[tag=tbcTarget,limit=1] run summon minecraft:lightning_bolt
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 70 as @e[type=pig,tag=tbcCompanion] at @s run tp @s ~-20 ~-100 ~-20
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 80 run function glarth:combat/action_enemy/util/next_stage

execute if score @s tbcAttackStage matches 1 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run scoreboard players set @s[tag=!stage_007,tag=!stage_008,tag=tbcSkeletonKing,tag=!tbcEnderPriest] attack_063 1
execute if score @s tbcAttackStage matches 1 if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/util/done
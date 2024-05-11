#0
execute if score @s tbcAttackStage matches 0 run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 0 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 0 run scoreboard players operation fireworks tbc_firework = n Random
execute if score @s tbcAttackStage matches 0 run scoreboard players add fireworks tbc_firework 1
execute if score @s tbcAttackStage matches 0 run scoreboard players set @s[tag=!stage_008,tag=!stage_006,tag=!tbcEnderPriest] attack_063 1
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/hide_hat
execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/util/next_stage

#1
execute if score @s tbcAttackStage matches 1 if score fireworks tbc_firework matches 1.. run scoreboard players remove fireworks_time tbc_firework 1
execute if score @s tbcAttackStage matches 1 if score fireworks tbc_firework matches 1.. unless score fireworks_time tbc_firework matches 1.. run function glarth:combat/action_enemy/helper/summon_firework
execute if score @s tbcAttackStage matches 1 unless score fireworks tbc_firework matches 1.. run scoreboard players remove @e[tag=tbcFirework59] tbc_fireworkDe 1
execute if score @s tbcAttackStage matches 1 unless score fireworks tbc_firework matches 1.. as @e[tag=tbcFirework59] unless score @s tbc_fireworkDe matches 1.. run tag @s add tbc_dropFirework
execute if score @s tbcAttackStage matches 1 unless score fireworks tbc_firework matches 1.. unless entity @e[tag=tbcFirework59] run function glarth:combat/action_enemy/util/show_hat
execute if score @s tbcAttackStage matches 1 unless score fireworks tbc_firework matches 1.. unless entity @e[tag=tbcFirework59] run function glarth:combat/action_enemy/util/done
execute if score @s tbcAttackStage matches 1 as @e[tag=tbcFirework59] at @s run function glarth:combat/action_enemy/helper/move_firework


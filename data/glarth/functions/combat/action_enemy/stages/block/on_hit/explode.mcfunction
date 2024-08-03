scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 1 1 1 0 7
execute if score @s tbcAttackTimer matches 10 at @e[tag=tbcTargetAS,limit=1] run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
execute if score @s tbcAttackTimer matches 10 as @e[tag=!tbcTarget,tag=tbcAttackable] run function glarth:combat/action/blocking_end
execute if score @s tbcAttackTimer matches 10 run function glarth:combat/action_enemy/util/damage_aoe
execute if score @s tbcAttackTimer matches 15 run function glarth:combat/action_enemy/util/next_stage
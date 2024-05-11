execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run scoreboard players set stun tbcStats 2
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run scoreboard players set damage tbcStats 40
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 1..20 as @a at @e[tag=tbcMarkerMiddle] run function glarth:mechanic/wind/wind
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 20..100 as @a at @e[tag=tbcMarkerMiddle] run function glarth:mechanic/wind/storm
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 70 at @e[tag=tbcEnemy] run particle minecraft:cloud ~ ~ ~ 2 2 2 0.1 100
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 70 at @e[tag=tbcEnemy] run summon minecraft:lightning_bolt
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 70 run function glarth:combat/action/util/aoe
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 100 run function glarth:combat/action/util/done


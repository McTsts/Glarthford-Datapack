execute if score @s tbcAttackStage matches 0 as @e[tag=tbcSelPlayerAS] at @s facing entity @e[tag=tbcMarkerMiddle] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 0 at @e[tag=tbcSelPlayerAS] if entity @e[tag=tbcMarkerMiddle,distance=..0.2] run function glarth:combat/action/util/next_stage

execute if score @s tbcAttackStage matches 1 as @e[tag=tbcSelPlayerAS] at @s facing entity @e[scores={tbcSel=1}] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 1 at @e[tag=tbcSelPlayerAS] if entity @e[scores={tbcSel=1},distance=..1.4] run function glarth:combat/action/util/next_stage

execute if score @s tbcAttackStage matches 2 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 as @e[tag=tbcSelPlayerAS] at @s run particle minecraft:sweep_attack ^ ^1 ^1 0 0 0 0 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 unless score attackType tbcStats matches 10..12 unless score attackType tbcStats matches 14 run function glarth:combat/remove/sword
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 run scoreboard players operation dodge tbcStats = attackDodge tbcStats
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 run scoreboard players operation fire tbcStats = attackFire tbcStats
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 run scoreboard players operation freeze tbcStats = attackFreeze tbcStats
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 run scoreboard players operation poison tbcStats = attackPoison tbcStats
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 run scoreboard players operation damage tbcStats = attackStrength tbcStats
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 run scoreboard players operation damage tbcStats -= @e[scores={tbcSel=1}] tbcArmor
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 if score damage tbcStats matches ..20 at @e[tag=tbcSelPlayerAS] run playsound minecraft:entity.player.attack.weak player @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 if score damage tbcStats matches 21..50 at @e[tag=tbcSelPlayerAS] run playsound minecraft:entity.player.attack.strong player @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 if score damage tbcStats matches 51.. at @e[tag=tbcSelPlayerAS] run playsound minecraft:entity.player.attack.crit player @a ~ ~ ~ 1 1
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 as @e[scores={tbcSel=1}] run function glarth:combat/action_enemy/dodge
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 5 run function glarth:combat/action/util/damage
execute if score @s tbcAttackStage matches 2 if score @s tbcAttackTimer matches 10 run function glarth:combat/action/util/next_stage

execute if score @s tbcAttackStage matches 3 as @e[tag=tbcSelPlayerAS] at @s facing entity @e[tag=tbcMarkerMiddle] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 3 at @e[tag=tbcSelPlayerAS] if entity @e[tag=tbcMarkerMiddle,distance=..0.2] run function glarth:combat/action/util/next_stage

execute if score @s tbcAttackStage matches 4 as @e[tag=tbcSelPlayerAS] at @s facing entity @e[tag=tbcSelMarker] feet rotated ~ 0 run tp @s ^ ^ ^0.35 ~ ~
execute if score @s tbcAttackStage matches 4 at @e[tag=tbcSelPlayerAS] if entity @e[tag=tbcSelMarker,distance=..0.2] run function glarth:combat/action/util/done
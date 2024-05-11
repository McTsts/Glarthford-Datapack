execute if score @s tbcAttackStage matches 0 run scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run scoreboard players set r Random 3
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run function glarth:util/rand_tbc
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 if score n Random matches 1 run scoreboard players set @a MusicSet 33
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 if score n Random matches 2 run scoreboard players set @a MusicSet 36
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 if score n Random matches 3 run scoreboard players set @a MusicSet 54
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 if score n Random matches 1 run scoreboard players set @s tbcAttack 119
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 if score n Random matches 2 run scoreboard players set @s tbcAttack 120
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 if score n Random matches 3 run scoreboard players set @s tbcAttack 156
stopsound @a * minecraft:block.lantern.break
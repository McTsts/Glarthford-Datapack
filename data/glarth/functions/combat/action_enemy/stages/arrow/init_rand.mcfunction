scoreboard players add @s tbcAttackTimer 1
execute if score @s tbcAttackTimer matches 5 facing entity @e[tag=tbcTargetAS,type=armor_stand] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
execute if score @s tbcAttackTimer matches 20 run function glarth:combat/action_enemy/helper/hold_bow
$execute if score @s tbcAttackTimer matches 20 run function glarth:util/rand_tbc_min_max {min:$(min),max:$(max)}
$execute if score @s tbcAttackTimer matches 20 run scoreboard players remove n Random $(min)
execute if score @s tbcAttackTimer matches 20 run scoreboard players add n Random 1
execute if score @s tbcAttackTimer matches 20 run scoreboard players operation n Random += n Random
execute if score @s tbcAttackTimer matches 20 run scoreboard players remove n Random 1
execute if score @s tbcAttackTimer matches 20 run scoreboard players operation @s tbcAttackStage += n Random
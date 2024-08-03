# increment timer
execute if score @s tbcAttackStage matches 0 run scoreboard players add creeperTimer Temp 1
execute if score @s tbcAttackStage matches 1 run scoreboard players add creeperTimer Temp 2
execute if score @s tbcAttackStage matches 2 run scoreboard players add creeperTimer Temp 3

# update model
execute if score creeperTimer Temp matches 1..4 run function glarth:combat/action_enemy/stages/flash/normal
execute if score creeperTimer Temp matches 5..8 run function glarth:combat/action_enemy/stages/flash/white

# reset timer
execute if score creeperTimer Temp matches 8.. run scoreboard players remove creeperTimer Temp 8
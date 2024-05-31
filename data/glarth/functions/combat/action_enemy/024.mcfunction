# main arrow attack handler
function glarth:combat/action_enemy/attacks/arrow_partial {speed:0.2,min:3,max:5,helper:"arrow"}

# summon 1-3 normal arrows
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/stages/arrow/spawn

execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/stages/arrow/spawn

execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/stages/arrow/spawn

execute if score @s tbcAttackStage matches 8 run function glarth:combat/action_enemy/stages/arrow/spawn

execute if score @s tbcAttackStage matches 10 run function glarth:combat/action_enemy/stages/arrow/spawn
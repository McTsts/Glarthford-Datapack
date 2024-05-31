# main arrow attack handler
function glarth:combat/action_enemy/attacks/arrow_partial {speed:0.2,min:1,max:3,helper:"arrow"}

# summon 1-3 slowness arrow
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/stages/arrow/spawn_customizable {tag:"tbcArrowSlowness"}

execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/stages/arrow/spawn_customizable {tag:"tbcArrowSlowness"}

execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/stages/arrow/spawn_customizable {tag:"tbcArrowSlowness"}

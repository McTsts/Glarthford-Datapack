# main arrow attack handler
function glarth:combat/action_enemy/attacks/arrow_partial {speed:0.3,min:1,max:3,helper:"arrow"}

# summon 1-3 slowness arrow
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/stages/arrow/spawn_customizable {tag:"tbcArrowSlowness",type:"summon_arrow",cmd:"glarth:nothing",loc:"^-0.9 ^0.8 ^-1"}

execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/stages/arrow/spawn_customizable {tag:"tbcArrowSlowness",type:"summon_arrow",cmd:"glarth:nothing",loc:"^-0.9 ^0.8 ^-1"}

execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/stages/arrow/spawn_customizable {tag:"tbcArrowSlowness",type:"summon_arrow",cmd:"glarth:nothing",loc:"^-0.9 ^0.8 ^-1"}

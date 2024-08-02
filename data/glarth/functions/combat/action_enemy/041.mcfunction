# main arrow attack handler
execute if score @s tbcAttackStage matches 1 run tag @s add tbcSkipBow
function glarth:combat/action_enemy/attacks/arrow_partial {speed:0.3,min:1,max:3,helper:"fireball"}

# summon 1-3 fireballs
execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/stages/arrow/spawn_customizable {tag:"tbcArrowFire",type:"summon_fireball",cmd:"glarth:combat/action_enemy/stages/arrow/rotate",loc:"^-0.4 ^0.2 ^-1.5"}

execute if score @s tbcAttackStage matches 4 run function glarth:combat/action_enemy/stages/arrow/spawn_customizable {tag:"tbcArrowFire",type:"summon_fireball",cmd:"glarth:combat/action_enemy/stages/arrow/rotate",loc:"^-0.4 ^0.2 ^-1.5"}

execute if score @s tbcAttackStage matches 6 run function glarth:combat/action_enemy/stages/arrow/spawn_customizable {tag:"tbcArrowFire",type:"summon_fireball",cmd:"glarth:combat/action_enemy/stages/arrow/rotate",loc:"^-0.4 ^0.2 ^-1.5"}

$execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/stages/summoning/prepare {particle:"$(particle)",sound:"$(sound)"}

$execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/stages/summoning/summon {type:"$(type)",num:$(num),types:$(types),summoned_command:"$(summoned_command)"}

execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/stages/generic/done/wait {delay:50}
function glarth:combat/action_enemy/attacks/summoning {particle:"minecraft:smoke",sound:"minecraft:entity.illusioner.prepare_mirror",type:"freeslot",num:5,types:["bat","bat","bat","bat","bat"],summoned_command:"tag @s add stage_010"}
execute if score @s tbcAttackStage matches 0 if score @s tbcAttackTimer matches 10 run function glarth:dialogue/bat/lines/attack1

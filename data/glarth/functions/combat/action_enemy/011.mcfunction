# main barrage attack handler
function glarth:combat/action_enemy/attacks/barrage_partial {speed:0.2,min:2,max:4,item:"minecraft:bone",helper:"bone_fast"}

# select & barrage 2-4 bones
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/stages/barrage/select {num:4}

execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/stages/barrage/select {num:3}

execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_enemy/stages/barrage/select {num:2}

execute if score @s tbcAttackStage matches 9 run function glarth:combat/action_enemy/stages/barrage/select {num:1}
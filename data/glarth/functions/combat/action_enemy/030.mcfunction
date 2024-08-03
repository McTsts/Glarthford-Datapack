# main barrage attack handler
function glarth:combat/action_enemy/attacks/barrage_partial {speed:0.2,min:2,max:4,positions:"circle",item:"minecraft:nautilus_shell",helper:"nautilus",color:"white"}

# select & barrage 2-4 bones
execute if score @s tbcAttackStage matches 3 run function glarth:combat/action_enemy/stages/barrage/select {num:4}

execute if score @s tbcAttackStage matches 5 run function glarth:combat/action_enemy/stages/barrage/select {num:3}

execute if score @s tbcAttackStage matches 7 run function glarth:combat/action_enemy/stages/barrage/select {num:2}

execute if score @s tbcAttackStage matches 9 run function glarth:combat/action_enemy/stages/barrage/select {num:1}

# nautilus rotation
execute if score @s tbcAttackStage matches 3..10 as @e[tag=tbcBone] at @s facing entity @e[tag=tbcTargetAS,limit=1] feet run tp @s ^0.1 ^ ^ ~ ~
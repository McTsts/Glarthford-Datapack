# util calculation
$scoreboard players set stageCalcBarrage Temp $(max)
scoreboard players operation stageCalcBarrage Temp *= 2 Const
scoreboard players add stageCalcBarrage Temp 2
# calculates last arrow phase
scoreboard players operation stageComp1 Temp = stageCalcBarrage Temp
scoreboard players operation stageComp2 Temp = stageCalcBarrage Temp
# calculates last actual phase
scoreboard players add stageComp2 Temp 1

# walk to center
$execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/stages/generic/to_center {speed:$(speed),next_range:$(speed)}

# wait
execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/stages/generic/wait_align {align:5,delay:20}

# summon bones
$execute if score @s tbcAttackStage matches 2 run function glarth:combat/action_enemy/stages/barrage/spawn {min:$(min),max:$(max),item:"$(item)"}

# the bone selecting is handeled in the parent function

# helper
$execute if score @s tbcAttackStage matches 2.. if score @s tbcAttackStage <= stageComp1 Temp run function glarth:combat/action_enemy/helper/$(helper)

# return to home
$execute if score @s tbcAttackStage = stageComp2 Temp run function glarth:combat/action_enemy/stages/generic/done/to_home {speed:$(speed),next_range:$(speed)}
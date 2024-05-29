# util calculation
$scoreboard players set stageCalcArrow Temp $(max)
scoreboard players operation stageCalcArrow Temp *= 2 Const
scoreboard players add stageCalcArrow Temp 2
# calculates last arrow phase
scoreboard players operation stageComp1 Temp = stageCalcArrow Temp
scoreboard players operation stageComp2 Temp = stageCalcArrow Temp
# calculates last actual phase
scoreboard players add stageComp2 Temp 1

# walk to center
$execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/stages/generic/to_center {speed:$(speed),next_range:$(speed)}

# intialize
$execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/stages/arrow/init_rand {min:$(min),max:$(max)}

# the arrow spawning is still handeled in the parent function

# wait after arrows
execute if score @s tbcAttackStage = stageComp1 Temp run function glarth:combat/action_enemy/stages/generic/wait {delay:20}

# arrow helper
$execute if score @s tbcAttackStage matches 2.. if score @s tbcAttackStage <= stageComp1 Temp run function glarth:combat/action_enemy/helper/$(helper)

# return to home
$execute if score @s tbcAttackStage = stageComp2 Temp run function glarth:combat/action_enemy/stages/generic/done/to_home {speed:$(speed),next_range:$(speed)}
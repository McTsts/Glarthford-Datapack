# util calculation
$scoreboard players set stageCalcBlock Temp $(max_func)
scoreboard players operation stageCalcBlock Temp *= 3 Const
scoreboard players add stageCalcBlock Temp 2
# calculates last block phase
scoreboard players operation stageComp1 Temp = stageCalcBlock Temp
scoreboard players operation stageComp2 Temp = stageCalcBlock Temp
# calculates last actual phase
scoreboard players add stageComp2 Temp 1

# walk to center
$execute if score @s tbcAttackStage matches 0 run function glarth:combat/action_enemy/stages/generic/to_center {speed:$(speed),next_range:$(next_range)}

# intialize
$execute if score @s tbcAttackStage matches 1 run function glarth:combat/action_enemy/stages/block/init_rand {min:$(min),max:$(max),max_func:$(max_func),id:"$(id)",color:"$(color)"}

# the block throwing is still handeled in the parent function

# block helper
$execute if score @s tbcAttackStage matches 2.. if score @s tbcAttackStage <= stageComp1 Temp run function glarth:combat/action_enemy/helper/$(helper)

# return to home
$execute if score @s tbcAttackStage = stageComp2 Temp run function glarth:combat/action_enemy/stages/generic/done/to_home {speed:$(speed),next_range:$(speed)}
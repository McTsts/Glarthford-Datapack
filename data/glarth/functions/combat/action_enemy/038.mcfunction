# main block attack handler
execute unless entity @s[tag=tbcCreeper] run function glarth:combat/action_enemy/attacks/block_partial {speed:0.2,next_range:2,min:1,max:5,max_func:5,id:"tnt",color:"red",helper:"tnt"}
execute if entity @s[tag=tbcCreeper] run function glarth:combat/action_enemy/attacks/block_partial {speed:0.2,next_range:2,min:1,max:3,max_func:5,id:"tnt",color:"red",helper:"tnt"}

# handle 1-5 blocks
execute if score @s tbcAttackStage matches 3..5 run function glarth:combat/action_enemy/stages/block/block {pre:3,post:5,init:5,throw:20,on_hit:"explode"}

execute if score @s tbcAttackStage matches 6..8 run function glarth:combat/action_enemy/stages/block/block {pre:6,post:8,init:5,throw:20,on_hit:"explode"}

execute if score @s tbcAttackStage matches 9..11 run function glarth:combat/action_enemy/stages/block/block {pre:9,post:11,init:5,throw:20,on_hit:"explode"}

execute if score @s tbcAttackStage matches 12..14 run function glarth:combat/action_enemy/stages/block/block {pre:12,post:14,init:5,throw:20,on_hit:"explode"}

execute if score @s tbcAttackStage matches 15..17 run function glarth:combat/action_enemy/stages/block/block {pre:15,post:17,init:5,throw:20,on_hit:"explode"}

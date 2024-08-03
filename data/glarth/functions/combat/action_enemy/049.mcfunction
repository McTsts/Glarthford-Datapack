# main block attack handler
execute if entity @s[tag=tbcVishnoldBig] run function glarth:combat/action_enemy/attacks/block_partial {speed:0.2,next_range:2,min:4,max:8,max_func:8,id:"slime_block",color:"green",helper:"block"}
execute if entity @s[tag=tbcVishnoldMedium] run function glarth:combat/action_enemy/attacks/block_partial {speed:0.2,next_range:2,min:2,max:6,max_func:8,id:"slime_block",color:"green",helper:"block"}
execute if entity @s[tag=tbcVishnoldSmall] run function glarth:combat/action_enemy/attacks/block_partial {speed:0.2,next_range:2,min:1,max:4,max_func:8,id:"slime_block",color:"green",helper:"block"}
execute if entity @s[tag=tbcEnderPriest] run function glarth:combat/action_enemy/attacks/block_partial {speed:0.2,next_range:2,min:2,max:6,max_func:8,id:"slime_block",color:"dark_purple",helper:"block"}
execute if entity @s[tag=!tbcVishnoldBig,tag=!tbcVishnoldMedium,tag=!tbcVishnoldSmall,tag=!tbcVishnoldFake,tag=!tbcEnderPriest] run function glarth:combat/action_enemy/attacks/block_partial {speed:0.2,next_range:2,min:2,max:5,max_func:8,id:"slime_block",color:"green",helper:"block"}

# Special Behaivors
execute if score @s tbcAttackStage matches 1 if entity @s[tag=tbcVishnoldBig] run function glarth:dialogue/slime/lines/attack1
execute if score @s tbcAttackStage matches 1 if entity @s[tag=tbcVishnoldMedium] run function glarth:dialogue/slime/lines/attack1
execute if score @s tbcAttackStage matches 1 if entity @s[tag=tbcVishnoldSmall] run function glarth:dialogue/slime/lines/attack1
execute if score @s tbcAttackStage matches 2 as @s[tag=tbcEnderPriest] run item replace entity @e[tag=tbcTNT] armor.head with minecraft:slime_block[custom_model_data=1]

# handle 1-8 blocks
execute if score @s tbcAttackStage matches 3..5 run function glarth:combat/action_enemy/stages/block/block {pre:3,post:5,init:3,throw:3,on_hit:"nothing"}

execute if score @s tbcAttackStage matches 6..8 run function glarth:combat/action_enemy/stages/block/block {pre:6,post:8,init:3,throw:3,on_hit:"nothing"}

execute if score @s tbcAttackStage matches 9..11 run function glarth:combat/action_enemy/stages/block/block {pre:9,post:11,init:3,throw:3,on_hit:"nothing"}

execute if score @s tbcAttackStage matches 12..14 run function glarth:combat/action_enemy/stages/block/block {pre:12,post:14,init:3,throw:3,on_hit:"nothing"}

execute if score @s tbcAttackStage matches 15..17 run function glarth:combat/action_enemy/stages/block/block {pre:15,post:17,init:3,throw:3,on_hit:"nothing"}

execute if score @s tbcAttackStage matches 18..20 run function glarth:combat/action_enemy/stages/block/block {pre:18,post:20,init:3,throw:3,on_hit:"nothing"}

execute if score @s tbcAttackStage matches 21..23 run function glarth:combat/action_enemy/stages/block/block {pre:21,post:23,init:3,throw:3,on_hit:"nothing"}

execute if score @s tbcAttackStage matches 24..26 run function glarth:combat/action_enemy/stages/block/block {pre:24,post:26,init:3,throw:3,on_hit:"nothing"}

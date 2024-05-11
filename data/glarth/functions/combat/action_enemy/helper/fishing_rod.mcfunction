particle minecraft:dust{color:[0.0,0.0,0.0],scale:0.25} ~ ~ ~ 0 0 0 0 10
scoreboard players remove rec Temp 1
execute if entity @e[tag=tbcTargetAS,distance=..0.5] run scoreboard players set rec Temp 0
execute if entity @e[tag=tbcTargetAS,distance=..0.5] run function glarth:combat/action_enemy/util/ready
execute if score rec Temp matches 1.. facing entity @e[tag=tbcTargetAS] feet positioned ^ ^ ^0.05 run function glarth:combat/action_enemy/helper/fishing_rod
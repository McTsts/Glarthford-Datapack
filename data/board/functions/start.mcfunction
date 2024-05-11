scoreboard players set @s b_playing 1
scoreboard players set B6 b_stats 0
scoreboard players set B5 b_stats 0
scoreboard players set B4 b_stats 0
scoreboard players set B1 b_stats 1
scoreboard players set B2 b_stats 1
scoreboard players set B3 b_stats 1
scoreboard players set B7 b_stats 2
scoreboard players set B8 b_stats 2
scoreboard players set B9 b_stats 2
tag @e[tag=board,limit=1,sort=nearest] add used
execute as @e[tag=board_as] run function board:update_board
execute if entity @e[tag=board,tag=game,type=minecraft:villager] run function glarth:mechanic/mayor/start
scoreboard players set turn b_turn 0

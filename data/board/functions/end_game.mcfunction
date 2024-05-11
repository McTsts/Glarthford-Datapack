#
execute if score win b_info matches 1 unless entity @e[tag=board,tag=game] run tellraw @a[scores={b_playing=1}] [{"translate":"lobby.hexapawn.win","color":"gold"}]
execute if score win b_info matches 1 if entity @e[tag=board,tag=game] run function glarth:mechanic/mayor/win
execute if score win b_info matches 2 unless entity @e[tag=board,tag=game] run tellraw @a[scores={b_playing=1}] [{"translate":"lobby.hexapawn.lose","color":"gold"}]
execute if score win b_info matches 2 if data storage minecraft:board_ai boardM{Learn:1b} run function board:move/ai/learn
scoreboard players add matches b_info 1
execute if entity @e[tag=board,tag=game] run schedule function board:game_table 20t
execute if entity @e[tag=board,tag=lobby] run schedule function board:lobby_table 20t

kill @e[type=armor_stand,tag=boardDis]
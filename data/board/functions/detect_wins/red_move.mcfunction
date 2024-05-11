scoreboard players set can_red b_info 0
execute if score B1 b_stats matches 1 if score B4 b_stats matches 0 run scoreboard players set can_red b_info 1
execute if score B1 b_stats matches 1 if score B5 b_stats matches 2 run scoreboard players set can_red b_info 1
execute if score B2 b_stats matches 1 if score B5 b_stats matches 0 run scoreboard players set can_red b_info 1
execute if score B2 b_stats matches 1 if score B4 b_stats matches 2 run scoreboard players set can_red b_info 1
execute if score B b_stats matches 1 if score B6 b_stats matches 2 run scoreboard players set can_red b_info 1
execute if score B3 b_stats matches 1 if score B6 b_stats matches 0 run scoreboard players set can_red b_info 1
execute if score B3 b_stats matches 1 if score B5 b_stats matches 2 run scoreboard players set can_red b_info 1
execute if score B4 b_stats matches 1 if score B7 b_stats matches 0 run scoreboard players set can_red b_info 1
execute if score B4 b_stats matches 1 if score B8 b_stats matches 2 run scoreboard players set can_red b_info 1
execute if score B5 b_stats matches 1 if score B8 b_stats matches 0 run scoreboard players set can_red b_info 1
execute if score B5 b_stats matches 1 if score B7 b_stats matches 2 run scoreboard players set can_red b_info 1
execute if score B5 b_stats matches 1 if score B9 b_stats matches 2 run scoreboard players set can_red b_info 1
execute if score B6 b_stats matches 1 if score B9 b_stats matches 0 run scoreboard players set can_red b_info 1
execute if score B6 b_stats matches 1 if score B8 b_stats matches 2 run scoreboard players set can_red b_info 1
execute if score can_red b_info matches 0 run scoreboard players set win b_info 2
execute if score win b_info matches 2 if score mayorGame Stats matches 1 if entity @e[tag=board,tag=game] run function glarth:mechanic/mayor/lose2
scoreboard players set can_blue b_info 0
execute if score B7 b_stats matches 2 if score B4 b_stats matches 0 run scoreboard players set can_blue b_info 1
execute if score B7 b_stats matches 2 if score B5 b_stats matches 1 run scoreboard players set can_blue b_info 1
execute if score B8 b_stats matches 2 if score B5 b_stats matches 0 run scoreboard players set can_blue b_info 1
execute if score B8 b_stats matches 2 if score B4 b_stats matches 1 run scoreboard players set can_blue b_info 1
execute if score B b_stats matches 2 if score B6 b_stats matches 1 run scoreboard players set can_blue b_info 1
execute if score B9 b_stats matches 2 if score B6 b_stats matches 0 run scoreboard players set can_blue b_info 1
execute if score B9 b_stats matches 2 if score B5 b_stats matches 1 run scoreboard players set can_blue b_info 1
execute if score B4 b_stats matches 2 if score B1 b_stats matches 0 run scoreboard players set can_blue b_info 1
execute if score B4 b_stats matches 2 if score B2 b_stats matches 1 run scoreboard players set can_blue b_info 1
execute if score B5 b_stats matches 2 if score B2 b_stats matches 0 run scoreboard players set can_blue b_info 1
execute if score B5 b_stats matches 2 if score B1 b_stats matches 1 run scoreboard players set can_blue b_info 1
execute if score B5 b_stats matches 2 if score B3 b_stats matches 1 run scoreboard players set can_blue b_info 1
execute if score B6 b_stats matches 2 if score B3 b_stats matches 0 run scoreboard players set can_blue b_info 1
execute if score B6 b_stats matches 2 if score B2 b_stats matches 1 run scoreboard players set can_blue b_info 1
execute if score can_blue b_info matches 0 run scoreboard players set win b_info 1
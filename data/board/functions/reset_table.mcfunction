tp @e[tag=board_rc] ~ -100 ~
tp @e[tag=board] ~ -100 ~
kill @e[tag=board_as_main]
kill @e[tag=board_as]
kill @e[tag=board]
kill @e[tag=board_rc]
kill @e[tag=b_learn]
scoreboard players reset * b_playing
scoreboard players reset * r_click
scoreboard players reset win b_info
scoreboard players reset turn b_turn
scoreboard players reset total b_turn
tag @e[tag=board,limit=1,sort=nearest] remove used
function board:check_possible
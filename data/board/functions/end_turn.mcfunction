#
scoreboard players add total b_turn 0

scoreboard players add turn b_turn 1
scoreboard players add total b_turn 1

execute if score turn b_turn matches 2 run scoreboard players set turn b_turn 0


execute if score total b_turn matches 2..7 run function board:detect_wins/red_end
execute if score total b_turn matches 2..7 unless score win b_info matches 1 run function board:detect_wins/blue_end
execute if score total b_turn matches 1 run function board:detect_wins/blue_move
execute if score total b_turn matches 3 run function board:detect_wins/blue_move
execute if score total b_turn matches 5 run function board:detect_wins/blue_move
execute if score total b_turn matches 7 run function board:detect_wins/blue_move

execute if score total b_turn matches 2 run function board:detect_wins/red_move
execute if score total b_turn matches 4 run function board:detect_wins/red_move
execute if score total b_turn matches 6 run function board:detect_wins/red_move
execute if score total b_turn matches 8 run function board:detect_wins/red_move

schedule function board:ai 15t
execute if score win b_info matches 1..2 run function board:end_game

function board:check_possible
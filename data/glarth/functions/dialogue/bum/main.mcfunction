# Cycle
function glarth:dialogue/bum/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/bum/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/bum/lines/day
# Trades
execute if score quest Stats matches 1..2 run function glarth:dialogue/bum/trades/1_2
execute if score quest Stats matches 1..2 run function glarth:dialogue/bum/trades/1_2_4_5_7
execute if score quest Stats matches 4..5 run function glarth:dialogue/bum/trades/1_2_4_5_7
execute if score quest Stats matches 7 run function glarth:dialogue/bum/trades/1_2_4_5_7
execute if score quest Stats matches 4 run function glarth:dialogue/bum/trades/4
# Cycle
function glarth:dialogue/priest/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/priest/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/priest/lines/day
# Trades
function glarth:dialogue/priest/trades/all
execute if score quest Stats matches 1..2 run function glarth:dialogue/priest/trades/1_2_5_7
execute if score quest Stats matches 5 run function glarth:dialogue/priest/trades/1_2_5_7
execute if score quest Stats matches 7 run function glarth:dialogue/priest/trades/1_2_5_7
execute if score quest Stats matches 4 run function glarth:dialogue/priest/trades/4
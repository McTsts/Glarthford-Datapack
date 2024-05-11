# Cycle
function glarth:dialogue/digger/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/digger/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/digger/lines/day
# Trades
function glarth:dialogue/digger/trades/all
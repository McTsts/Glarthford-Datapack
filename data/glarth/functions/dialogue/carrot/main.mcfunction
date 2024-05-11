# Cycle
function glarth:dialogue/carrot/cycle
# Dialogue
execute if score cycle Temp matches 1 run function glarth:dialogue/carrot/lines/day
execute if score cycle Temp matches 0 run function glarth:dialogue/carrot/lines/night
# Trades
function glarth:dialogue/carrot/trades/all
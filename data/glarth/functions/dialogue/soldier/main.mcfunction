# Cycle
function glarth:dialogue/soldier/cycle
# Dialogue
execute if score cycle Temp matches 1 run function glarth:dialogue/soldier/lines/day
execute if score cycle Temp matches 0 run function glarth:dialogue/soldier/lines/night
# Trades
function glarth:dialogue/soldier/trades/all
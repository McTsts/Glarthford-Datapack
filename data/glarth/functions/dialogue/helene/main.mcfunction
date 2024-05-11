# Cycle
function glarth:dialogue/helene/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/helene/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/helene/lines/day
# Trades
function glarth:dialogue/helene/trades/all
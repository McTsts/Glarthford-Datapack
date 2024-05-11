# Cycle
function glarth:dialogue/mrk/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/mrk/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/mrk/lines/day
# Trades
function glarth:dialogue/mrk/trades/all
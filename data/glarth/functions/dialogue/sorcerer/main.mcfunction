# Cycle
function glarth:dialogue/sorcerer/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/sorcerer/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/sorcerer/lines/day
# Trades
function glarth:dialogue/sorcerer/trades/all
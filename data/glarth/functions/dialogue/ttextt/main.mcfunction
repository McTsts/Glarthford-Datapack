# Cycle
function glarth:dialogue/ttextt/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/ttextt/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/ttextt/lines/day
# Trades
function glarth:dialogue/ttextt/trades/all
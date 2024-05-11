# Cycle
function glarth:dialogue/enderman/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/enderman/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/enderman/lines/day
# Trades
execute if score quest Stats matches 4 run function glarth:dialogue/enderman/trades/4
execute if score quest Stats matches 5 run function glarth:dialogue/enderman/trades/5
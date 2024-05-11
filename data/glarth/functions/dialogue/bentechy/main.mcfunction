# Cycle
function glarth:dialogue/bentechy/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/bentechy/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/bentechy/lines/day
# Trades
function glarth:dialogue/bentechy/trades/all
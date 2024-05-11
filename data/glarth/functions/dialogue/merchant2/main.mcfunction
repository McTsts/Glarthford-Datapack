# Cycle
function glarth:dialogue/merchant2/cycle
# Dialogue
execute if score cycle Temp matches 0 unless score quest Stats matches 5 run function glarth:dialogue/merchant2/lines/night
execute if score cycle Temp matches 1 unless score quest Stats matches 5 run function glarth:dialogue/merchant2/lines/day

execute if score cycle Temp matches 0 if score quest Stats matches 5 run function glarth:dialogue/merchant2/lines/night_5
execute if score cycle Temp matches 1 if score quest Stats matches 5 run function glarth:dialogue/merchant2/lines/day_5
# Trades
function glarth:dialogue/merchant2/trades/all
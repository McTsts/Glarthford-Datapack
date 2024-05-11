# Cycle
function glarth:dialogue/hermit/cycle
# Dialogue
execute if score cycle Temp matches 1 unless score quest Stats matches 1 run function glarth:dialogue/hermit/lines/day
execute if score cycle Temp matches 0 unless score quest Stats matches 1 run function glarth:dialogue/hermit/lines/night
execute if score cycle Temp matches 1 if score quest Stats matches 1 run function glarth:dialogue/hermit/lines/day_1
execute if score cycle Temp matches 0 if score quest Stats matches 1 run function glarth:dialogue/hermit/lines/night_1
# Trades
function glarth:dialogue/hermit/trades/all
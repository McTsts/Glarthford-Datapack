# Cycle
function glarth:dialogue/mayor/cycle
# Dialogue
execute if score cycle Temp matches 0 unless score quest Stats matches 9 run function glarth:dialogue/mayor/lines/night
execute if score cycle Temp matches 1 unless score quest Stats matches 9 run function glarth:dialogue/mayor/lines/day
execute if score cycle Temp matches 0 if score quest Stats matches 9 run function glarth:dialogue/mayor/lines/night_9
execute if score cycle Temp matches 1 if score quest Stats matches 9 run function glarth:dialogue/mayor/lines/day_9
# Trades
execute if score quest Stats matches 4 run function glarth:dialogue/mayor/trades/4
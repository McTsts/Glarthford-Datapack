# Cycle
function glarth:dialogue/sailor/cycle
# Dialogue
execute if score cycle Temp matches 0 unless score quest Stats matches 9 run function glarth:dialogue/sailor/lines/night
execute if score cycle Temp matches 1 unless score quest Stats matches 9 unless score wind Stats matches 3 run function glarth:dialogue/sailor/lines/day
execute if score cycle Temp matches 1 unless score quest Stats matches 9 if score wind Stats matches 3 run function glarth:dialogue/sailor/lines/night

execute if score cycle Temp matches 0 if score quest Stats matches 9 run function glarth:dialogue/sailor/lines/night_9
execute if score cycle Temp matches 1 if score quest Stats matches 9 run function glarth:dialogue/sailor/lines/day_9
# Trades
execute if score quest Stats matches 5 run function glarth:dialogue/sailor/trades/5
execute unless score quest Stats matches 9 run function glarth:dialogue/sailor/trades/all
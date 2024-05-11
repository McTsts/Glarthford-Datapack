# Cycle
function glarth:dialogue/brother/cycle
# Dialogue
execute if score cycle Temp matches 0 if score quest Stats matches 2 run function glarth:dialogue/brother/lines/night_2
execute if score cycle Temp matches 1 if score quest Stats matches 2 run function glarth:dialogue/brother/lines/day_2

execute if score cycle Temp matches 0 if score quest Stats matches 7 run function glarth:dialogue/brother/lines/night_7
execute if score cycle Temp matches 1 if score quest Stats matches 7 run function glarth:dialogue/brother/lines/day_7

execute if score cycle Temp matches 0 if score quest Stats matches 9 run function glarth:dialogue/brother/lines/night_9
execute if score cycle Temp matches 1 if score quest Stats matches 9 run function glarth:dialogue/brother/lines/day_9
# Trades
execute if score quest Stats matches 2 run function glarth:dialogue/brother/trades/2_7
execute if score quest Stats matches 7 run function glarth:dialogue/brother/trades/2_7
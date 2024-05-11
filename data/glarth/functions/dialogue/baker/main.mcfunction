# Cycle
function glarth:dialogue/baker/cycle
# Dialogue
execute if score cycle Temp matches -1 unless score quest Stats matches 3 run function glarth:dialogue/sleep
execute if score cycle Temp matches 1 unless score quest Stats matches 3 run function glarth:dialogue/baker/lines/day
execute if score cycle Temp matches 0 unless score quest Stats matches 3 run function glarth:dialogue/baker/lines/night
execute if score quest Stats matches 3 run function glarth:dialogue/baker/lines/generic_3
# Trades
execute if score cycle Temp matches 0..1 run function glarth:dialogue/baker/trades/all
execute if score cycle Temp matches 0..1 if score quest Stats matches 1 run function glarth:dialogue/baker/trades/1
execute if score cycle Temp matches 0..1 if score quest Stats matches 5 run function glarth:dialogue/baker/trades/5
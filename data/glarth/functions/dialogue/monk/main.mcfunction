# Cycle
function glarth:dialogue/monk/cycle
# Dialogue
execute if score cycle Temp matches 0 unless score quest Stats matches 9 run function glarth:dialogue/monk/lines/night
execute if score cycle Temp matches 1 unless score quest Stats matches 9 run function glarth:dialogue/monk/lines/day

execute if score cycle Temp matches 0 if score quest Stats matches 9 run function glarth:dialogue/monk/lines/night_9
execute if score cycle Temp matches 1 if score quest Stats matches 9 run function glarth:dialogue/monk/lines/day_9
# Trades
execute if score cycle Temp matches 1 unless score quest Stats matches 9 run function glarth:dialogue/monk/trades/all
# Cycle
function glarth:dialogue/bowm/cycle
# Dialogue
execute if score cycle Temp matches 0 unless score quest Stats matches 9 run function glarth:dialogue/bowm/lines/night
execute if score cycle Temp matches 1 unless score quest Stats matches 9 run function glarth:dialogue/bowm/lines/day

execute if score cycle Temp matches 0 if score quest Stats matches 9 run function glarth:dialogue/bowm/lines/night_9
execute if score cycle Temp matches 1 if score quest Stats matches 9 run function glarth:dialogue/bowm/lines/day_9
# Trades
execute if score quest Stats matches 9 run function glarth:dialogue/bowm/trades/tbc
execute unless score quest Stats matches 9 run function glarth:dialogue/bowm/trades/all
# Cycle
function glarth:dialogue/adventurer/cycle
# Dialogue
execute if score cycle Temp matches 0 unless score quest Stats matches 9 run function glarth:dialogue/adventurer/lines/night
execute if score cycle Temp matches 1 unless score quest Stats matches 9 run function glarth:dialogue/adventurer/lines/day
execute if score cycle Temp matches 0 if score quest Stats matches 9 run function glarth:dialogue/adventurer/lines/night_9
execute if score cycle Temp matches 1 if score quest Stats matches 9 run function glarth:dialogue/adventurer/lines/day_9
# Trades
execute if score quest Stats matches 1 run function glarth:dialogue/adventurer/trades/1
execute if score quest Stats matches 2 run function glarth:dialogue/adventurer/trades/2_5
execute if score quest Stats matches 5 run function glarth:dialogue/adventurer/trades/2_5
execute if score quest Stats matches 4 run function glarth:dialogue/adventurer/trades/4
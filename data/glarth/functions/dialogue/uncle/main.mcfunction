# Cycle
function glarth:dialogue/uncle/cycle
# Dialogue
execute if score cycle Temp matches 0 if score quest Stats matches 2 run function glarth:dialogue/uncle/lines/night_2
execute if score cycle Temp matches 1 if score quest Stats matches 2 run function glarth:dialogue/uncle/lines/day_2
execute if score cycle Temp matches 0 if score quest Stats matches 4 run function glarth:dialogue/uncle/lines/night_4
execute if score cycle Temp matches 1 if score quest Stats matches 4 run function glarth:dialogue/uncle/lines/day_4
execute if score cycle Temp matches 0 if score quest Stats matches 5 run function glarth:dialogue/uncle/lines/night_5
execute if score cycle Temp matches 1 if score quest Stats matches 5 run function glarth:dialogue/uncle/lines/day_5
execute if score cycle Temp matches 0 if score quest Stats matches 7 run function glarth:dialogue/uncle/lines/night_7
execute if score cycle Temp matches 1 if score quest Stats matches 7 run function glarth:dialogue/uncle/lines/day_7
execute if score cycle Temp matches 0 if score quest Stats matches 8 run function glarth:dialogue/uncle/lines/night_8
execute if score cycle Temp matches 1 if score quest Stats matches 8 run function glarth:dialogue/uncle/lines/day_8
execute if score cycle Temp matches 0 if score quest Stats matches 9 run function glarth:dialogue/uncle/lines/night_9
execute if score cycle Temp matches 1 if score quest Stats matches 9 run function glarth:dialogue/uncle/lines/day_9

# Checked Town
execute if score quest Stats matches 4..5 run tag @a[distance=..5] add checkedTown
execute if score quest Stats matches 8..9 run tag @a[distance=..5] add checkedTown

# Trades
execute if score quest Stats matches 8 run function glarth:dialogue/uncle/trades/8
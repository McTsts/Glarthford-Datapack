# Cycle
function glarth:dialogue/farmer/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/farmer/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/farmer/lines/day
# Trades
execute if score quest Stats matches 1 run function glarth:dialogue/farmer/trades/1_4_6_7_9
execute if score quest Stats matches 4 run function glarth:dialogue/farmer/trades/1_4_6_7_9
execute if score quest Stats matches 6 run function glarth:dialogue/farmer/trades/1_4_6_7_9
execute if score quest Stats matches 7 run function glarth:dialogue/farmer/trades/1_4_6_7_9
execute if score quest Stats matches 9 run function glarth:dialogue/farmer/trades/1_4_6_7_9
execute if score quest Stats matches 4 run function glarth:dialogue/farmer/trades/4

# Checked Beacon
execute if score quest Stats matches 4 run tag @a[distance=..5] add checkedBeacon
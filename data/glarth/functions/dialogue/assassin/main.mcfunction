# Cycle
function glarth:dialogue/assassin/cycle
# Dialogue
execute if score cycle Temp matches 0 unless score quest Stats matches 3 unless score quest Stats matches 8 run function glarth:dialogue/assassin/lines/night
execute if score cycle Temp matches 0 if score quest Stats matches 3 run function glarth:dialogue/assassin/lines/day
execute if score cycle Temp matches 0 if score quest Stats matches 8 run function glarth:dialogue/assassin/lines/day
execute if score cycle Temp matches 1 run function glarth:dialogue/assassin/lines/day
# Trades
execute if score quest Stats matches 1..2 run function glarth:dialogue/assassin/trades/1_2
execute if score quest Stats matches 3 run function glarth:dialogue/assassin/trades/3
execute if score quest Stats matches 4 run function glarth:dialogue/assassin/trades/4
execute if score quest Stats matches 8 run function glarth:dialogue/assassin/trades/8
execute if score quest Stats matches 9 run function glarth:dialogue/assassin/trades/9

# Checked Beacon
execute if score quest Stats matches 4 run tag @a[distance=..5] add checkedBeacon
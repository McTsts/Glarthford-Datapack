# Cycle
function glarth:dialogue/blacksmith/cycle
# Dialogue
execute if score cycle Temp matches 0 unless score quest Stats matches 3 unless score quest Stats matches 9 if entity @s[tag=!c] run function glarth:dialogue/blacksmith/lines/night
execute if score cycle Temp matches 1 unless score quest Stats matches 3 unless score quest Stats matches 9 if entity @s[tag=!c] run function glarth:dialogue/blacksmith/lines/day
execute if score cycle Temp matches 0 unless score quest Stats matches 3 unless score quest Stats matches 9 if entity @s[tag=c] run function glarth:dialogue/blacksmith/lines/night2
execute if score cycle Temp matches 1 unless score quest Stats matches 3 unless score quest Stats matches 9 if entity @s[tag=c] run function glarth:dialogue/blacksmith/lines/day2

execute if score cycle Temp matches 0 if score quest Stats matches 3 run function glarth:dialogue/blacksmith/lines/night_3
execute if score cycle Temp matches 1 if score quest Stats matches 3 run function glarth:dialogue/blacksmith/lines/day_3

execute if score cycle Temp matches 0 if score quest Stats matches 9 run function glarth:dialogue/blacksmith/lines/night_9
execute if score cycle Temp matches 1 if score quest Stats matches 9 run function glarth:dialogue/blacksmith/lines/day_9
# Trades
function glarth:dialogue/blacksmith/trades/all
execute if score quest Stats matches 3 run function glarth:dialogue/blacksmith/trades/3
execute if score quest Stats matches 4 run function glarth:dialogue/blacksmith/trades/4
execute if score quest Stats matches 5 run function glarth:dialogue/blacksmith/trades/5
execute if score quest Stats matches 1..2 run function glarth:dialogue/blacksmith/trades/1_2

# Checked Town
execute if score quest Stats matches 1 run tag @a[distance=..5] add checkedTown
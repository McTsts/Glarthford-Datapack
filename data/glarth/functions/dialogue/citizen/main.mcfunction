# Cycle
function glarth:dialogue/citizen/cycle
# Dialogue
execute if score cycle Temp matches 0 if score quest Stats matches 2 run function glarth:dialogue/citizen/lines/night_2
execute if score cycle Temp matches 1 if score quest Stats matches 2 run function glarth:dialogue/citizen/lines/day_2

execute if score cycle Temp matches 0 if score quest Stats matches 3 run function glarth:dialogue/citizen/lines/night_3
execute if score cycle Temp matches 1 if score quest Stats matches 3 run function glarth:dialogue/citizen/lines/day_3

execute if score cycle Temp matches 0 if score quest Stats matches 7 run function glarth:dialogue/citizen/lines/night_7
execute if score cycle Temp matches 1 if score quest Stats matches 7 run function glarth:dialogue/citizen/lines/day_7

execute if score cycle Temp matches 0 if score quest Stats matches 5 run function glarth:dialogue/citizen/lines/night_5
execute if score cycle Temp matches 1 if score quest Stats matches 5 run function glarth:dialogue/citizen/lines/day_5

execute if score cycle Temp matches 0 if score quest Stats matches 9 run function glarth:dialogue/citizen/lines/night_9
execute if score cycle Temp matches 1 if score quest Stats matches 9 run function glarth:dialogue/citizen/lines/day_9


# Checked Town
execute if score quest Stats matches 2..3 run tag @a[distance=..5] add checkedTown
execute if score quest Stats matches 7 run tag @a[distance=..5] add checkedTown
execute if score quest Stats matches 9 run tag @a[distance=..5] add checkedTown
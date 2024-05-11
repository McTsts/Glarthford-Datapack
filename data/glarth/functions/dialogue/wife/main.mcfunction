# Cycle
function glarth:dialogue/wife/cycle
# Dialogue
execute if score cycle Temp matches 0 if score quest Stats matches 1 run function glarth:dialogue/wife/lines/night_1
execute if score cycle Temp matches 1 if score quest Stats matches 1 run function glarth:dialogue/wife/lines/day_1
execute if score cycle Temp matches 0 if score quest Stats matches 2 run function glarth:dialogue/wife/lines/night_2
execute if score cycle Temp matches 1 if score quest Stats matches 2 run function glarth:dialogue/wife/lines/day_2
execute if score cycle Temp matches 0 if score quest Stats matches 3 run function glarth:dialogue/wife/lines/night_3
execute if score cycle Temp matches 1 if score quest Stats matches 3 run function glarth:dialogue/wife/lines/day_3
execute if score cycle Temp matches 0 if score quest Stats matches 7 run function glarth:dialogue/wife/lines/night_7
execute if score cycle Temp matches 1 if score quest Stats matches 7 run function glarth:dialogue/wife/lines/day_7
execute if score cycle Temp matches 0 if score quest Stats matches 9 run function glarth:dialogue/wife/lines/night_9
execute if score cycle Temp matches 1 if score quest Stats matches 9 run function glarth:dialogue/wife/lines/day_9
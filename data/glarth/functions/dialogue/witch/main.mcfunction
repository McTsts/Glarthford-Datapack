# Cycle
function glarth:dialogue/witch/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/witch/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!b] run function glarth:dialogue/witch/lines/day
execute if score cycle Temp matches 1 if entity @s[tag=b] run function glarth:dialogue/witch/lines/day2
# Trades
function glarth:dialogue/witch/trades/all
execute if score quest Stats matches 2 run function glarth:dialogue/witch/trades/2
execute if score quest Stats matches 5 run function glarth:dialogue/witch/trades/5
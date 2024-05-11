# Cycle
function glarth:dialogue/astronomer/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/astronomer/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/astronomer/lines/day
execute if score cycle Temp matches 2 run function glarth:dialogue/astronomer/lines/storm
# Trades
execute if score quest Stats matches 5 run function glarth:dialogue/astronomer/trades/5
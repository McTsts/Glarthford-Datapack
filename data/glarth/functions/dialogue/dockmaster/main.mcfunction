# Cycle
function glarth:dialogue/dockmaster/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/dockmaster/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/dockmaster/lines/day
# Trades
function glarth:dialogue/dockmaster/trades/all
execute if score quest Stats matches 5 run function glarth:dialogue/dockmaster/trades/5
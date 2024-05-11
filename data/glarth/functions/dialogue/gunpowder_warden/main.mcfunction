# Cycle
function glarth:dialogue/gunpowder_warden/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/gunpowder_warden/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/gunpowder_warden/lines/day
# Trades
function glarth:dialogue/gunpowder_warden/trades/all

# Extra
execute if score quest Stats matches 0 run function glarth:mechanic/quest/tut1
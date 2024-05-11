# Cycle
function glarth:dialogue/maid/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/maid/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/maid/lines/day
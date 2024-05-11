# Cycle
function glarth:dialogue/apple/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/apple/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/apple/lines/day
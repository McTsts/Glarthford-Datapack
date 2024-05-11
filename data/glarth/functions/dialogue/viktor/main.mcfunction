# Cycle
function glarth:dialogue/viktor/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/viktor/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/viktor/lines/day
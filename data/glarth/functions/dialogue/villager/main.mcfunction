# Cycle
function glarth:dialogue/villager/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/villager/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/villager/lines/day
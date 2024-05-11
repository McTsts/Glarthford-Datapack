# Cycle
function glarth:dialogue/pillager_advisor1/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/pillager_advisor1/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/pillager_advisor1/lines/day
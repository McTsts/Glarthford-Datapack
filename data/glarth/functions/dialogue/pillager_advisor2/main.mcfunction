# Cycle
function glarth:dialogue/pillager_advisor2/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/pillager_advisor2/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/pillager_advisor2/lines/day
# Cycle
function glarth:dialogue/pillager3/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/pillager3/lines/night 30t
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/pillager3/lines/day 30t
# Fight
function glarth:combat/start/default/pillager
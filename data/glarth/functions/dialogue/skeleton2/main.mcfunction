# Cycle
function glarth:dialogue/skeleton2/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/skeleton2/lines/night 30
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/skeleton2/lines/day 30
# Fight
function glarth:combat/start/default/skeleton2
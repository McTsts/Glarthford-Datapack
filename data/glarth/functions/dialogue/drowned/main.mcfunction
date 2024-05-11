# Cycle
function glarth:dialogue/drowned/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/drowned/lines/night 30
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/drowned/lines/day 30
# Fight
function glarth:combat/start/default/drowned
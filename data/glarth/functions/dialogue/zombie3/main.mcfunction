# Cycle
function glarth:dialogue/zombie3/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/zombie3/lines/night 30
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/zombie3/lines/day 30
# Fight
function glarth:combat/start/default/zombie3
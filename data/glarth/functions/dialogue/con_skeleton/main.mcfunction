# Cycle
function glarth:dialogue/con_skeleton/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/con_skeleton/lines/night 30
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/con_skeleton/lines/day 30
# Fight
function glarth:combat/start/default/con_skeleton
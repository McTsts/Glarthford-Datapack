# Cycle
function glarth:dialogue/husk2/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/husk2/lines/night 30
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/husk2/lines/day 30
# Fight
function glarth:combat/start/default/husk
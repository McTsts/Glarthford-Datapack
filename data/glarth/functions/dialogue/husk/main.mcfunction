# Cycle
function glarth:dialogue/husk/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/husk/lines/night 30
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/husk/lines/day 30
# Fight
function glarth:combat/start/default/husk
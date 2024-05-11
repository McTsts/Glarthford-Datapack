# Cycle
function glarth:dialogue/illusioner2/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/illusioner2/lines/night 30t
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/illusioner2/lines/day 30t
# Fight
function glarth:combat/start/default/illusioner
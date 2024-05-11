# Cycle
function glarth:dialogue/bannerman_illusioner/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/bannerman_illusioner/lines/night 30t
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/bannerman_illusioner/lines/day 30t
# Fight
function glarth:combat/start/default/bannerman_illusioner
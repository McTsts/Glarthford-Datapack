# Cycle
function glarth:dialogue/blaze2/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/blaze2/lines/night 30t
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/blaze2/lines/day 30t
# Fight
function glarth:combat/start/default/blaze2
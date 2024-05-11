# Cycle
function glarth:dialogue/pillager1/cycle
# Dialogue
execute if score realms Stats matches 0 if score cycle Temp matches 0 run schedule function glarth:dialogue/pillager1/lines/night 30t
execute if score realms Stats matches 0 if score cycle Temp matches 1 run schedule function glarth:dialogue/pillager1/lines/day 30t
execute if score realms Stats matches 1 run schedule function glarth:dialogue/pillager1/lines/generic_realms 30t
# Fight
function glarth:combat/start/default/pillager
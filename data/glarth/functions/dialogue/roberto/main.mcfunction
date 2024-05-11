# Cycle
function glarth:dialogue/roberto/cycle
# Dialogue
execute if score quest Stats matches 1 if score cycle Temp matches 0 run schedule function glarth:dialogue/roberto/lines/night 30
execute if score quest Stats matches 1 if score cycle Temp matches 1 run schedule function glarth:dialogue/roberto/lines/day 30
execute if score quest Stats matches 4 run function glarth:dialogue/roberto/lines/generic2
# Fight
execute if score quest Stats matches 1 run function glarth:combat/start/boss/roberto
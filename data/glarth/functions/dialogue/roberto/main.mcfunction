# Cycle
function glarth:dialogue/roberto/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/roberto/lines/night 30
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/roberto/lines/day 30
# Fight
function glarth:combat/start/boss/roberto
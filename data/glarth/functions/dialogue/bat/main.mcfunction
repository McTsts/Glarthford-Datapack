# Cycle
function glarth:dialogue/bat/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/bat/lines/night 30
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/bat/lines/day 30
# Fight
function glarth:combat/start/boss/bat
# Cycle
function glarth:dialogue/skeleton_king/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/skeleton_king/lines/night 30
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/skeleton_king/lines/day 30
# Fight
function glarth:combat/start/boss/skeleton_king
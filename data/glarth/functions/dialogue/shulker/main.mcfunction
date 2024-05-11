# Cycle
function glarth:dialogue/shulker/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/shulker/lines/night 30
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/shulker/lines/day 30
# Fight
function glarth:combat/start/default/shulker
# Cycle
function glarth:dialogue/magma_cube/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/magma_cube/lines/night 30
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/magma_cube/lines/day 30
# Fight
function glarth:combat/start/default/magma_cube
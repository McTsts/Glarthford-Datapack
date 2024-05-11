# Cycle
function glarth:dialogue/pret_zombie/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/pret_zombie/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/pret_zombie/lines/day
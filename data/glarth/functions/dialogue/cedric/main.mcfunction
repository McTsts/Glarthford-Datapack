# Cycle
function glarth:dialogue/cedric/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/cedric/lines/night 
execute if score cycle Temp matches 1 run function glarth:dialogue/cedric/lines/day 
# Extra
scoreboard players set timer cedric -550
# Cycle
function glarth:dialogue/vindicator_s/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/vindicator_s/lines/day
execute if score cycle Temp matches 1 run function glarth:dialogue/vindicator_s/lines/day2
execute if score cycle Temp matches 2 run function glarth:dialogue/vindicator_s/lines/night
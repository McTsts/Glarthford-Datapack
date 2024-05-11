# Cycle
function glarth:dialogue/vindicator3/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/vindicator3/lines/night 30t
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/vindicator3/lines/day 30t
execute if score cycle Temp matches 2 run schedule function glarth:dialogue/vindicator3/lines/day2 30t
# Fight
function glarth:combat/start/default/vindicator
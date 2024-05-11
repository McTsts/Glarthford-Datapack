# Cycle
function glarth:dialogue/szombie/cycle
# Dialogue
execute if score cycle Temp matches 0 unless score quest Stats matches 7 run schedule function glarth:dialogue/szombie/lines/night 30
execute if score cycle Temp matches 0 if score quest Stats matches 7 run schedule function glarth:dialogue/szombie/lines/night_7 30
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/szombie/lines/day 30
# Fight
function glarth:combat/start/default/szombie
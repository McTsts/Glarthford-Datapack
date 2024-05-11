# Cycle
function glarth:dialogue/summoner/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/summoner/lines/night 30
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/summoner/lines/day 30
# Fight
function glarth:combat/start/default/summoner
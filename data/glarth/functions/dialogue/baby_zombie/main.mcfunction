# Cycle
function glarth:dialogue/baby_zombie/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/baby_zombie/lines/night 30
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/baby_zombie/lines/day 30
# Fight
function glarth:combat/start/default/baby_zombie
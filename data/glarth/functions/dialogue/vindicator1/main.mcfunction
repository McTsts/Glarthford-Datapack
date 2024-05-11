# Cycle
function glarth:dialogue/vindicator1/cycle
# Dialogue
execute if score cycle Temp matches 0 if score realms Stats matches 0 run schedule function glarth:dialogue/vindicator1/lines/night 30t
execute if score cycle Temp matches 0 if score realms Stats matches 1 run schedule function glarth:dialogue/vindicator1/lines/day 30t
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/vindicator1/lines/day 30t
# Fight
function glarth:combat/start/default/vindicator
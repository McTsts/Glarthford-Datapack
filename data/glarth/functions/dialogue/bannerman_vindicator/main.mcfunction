# Cycle
function glarth:dialogue/bannerman_vindicator/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/bannerman_vindicator/lines/night 30t
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/bannerman_vindicator/lines/day 30t
# Fight
function glarth:combat/start/default/bannerman_vindicator
# Extra
tag @e[tag=assassin] add die
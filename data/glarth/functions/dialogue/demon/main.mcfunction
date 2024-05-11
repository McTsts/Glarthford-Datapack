# Cycle
function glarth:dialogue/demon/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!b] run function glarth:dialogue/demon/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!b] run function glarth:dialogue/demon/lines/day
execute if entity @s[tag=b] run function glarth:dialogue/demon/lines/generic2
# Trades
function glarth:dialogue/demon/trades/all
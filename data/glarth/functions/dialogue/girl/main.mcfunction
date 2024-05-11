# Cycle
function glarth:dialogue/girl/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!a] run function glarth:dialogue/girl/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!a] run function glarth:dialogue/girl/lines/day
execute if entity @s[tag=a] run function glarth:dialogue/girl/lines/generic
# Trades
execute if score quest Stats matches 2 run function glarth:dialogue/girl/trades/2_7
execute if score quest Stats matches 7 run function glarth:dialogue/girl/trades/2_7
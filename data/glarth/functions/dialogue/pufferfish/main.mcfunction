# Cycle
function glarth:dialogue/pufferfish/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!c] run function glarth:dialogue/pufferfish/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!c] run function glarth:dialogue/pufferfish/lines/day
execute if entity @s[tag=c] run function glarth:dialogue/pufferfish/lines/generic2
# Trades
execute if score quest Stats matches 5 run function glarth:dialogue/pufferfish/trades/5
execute if score quest Stats matches 6 run function glarth:dialogue/pufferfish/trades/6
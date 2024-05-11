# Cycle
function glarth:dialogue/marhjo/cycle
# Dialogue
execute if score cycle Temp matches -1 run function glarth:dialogue/marhjo/lines/generic
execute if score cycle Temp matches 0 if entity @s[tag=!a] run function glarth:dialogue/marhjo/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!a] run function glarth:dialogue/marhjo/lines/day
execute if score cycle Temp matches 0..1 if entity @s[tag=a] run function glarth:dialogue/marhjo/lines/generic
# Trades
execute if score cycle Temp matches 0..1 run function glarth:dialogue/marhjo/trades/all
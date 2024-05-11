# Cycle
function glarth:dialogue/mctsts/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!c] run function glarth:dialogue/mctsts/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!c] run function glarth:dialogue/mctsts/lines/day
execute if entity @s[tag=c,tag=!moved_to_gary] run function glarth:dialogue/mctsts/lines/trade3
execute if entity @s[tag=moved_to_gary] run function glarth:dialogue/mctsts/lines/generic2
# Trades
function glarth:dialogue/mctsts/trades/all
execute if score quest Stats matches 4 run function glarth:dialogue/mctsts/trades/4
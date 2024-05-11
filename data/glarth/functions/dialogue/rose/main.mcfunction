# Cycle
function glarth:dialogue/rose/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!a] run function glarth:dialogue/rose/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!a] run function glarth:dialogue/rose/lines/day
execute if score cycle Temp matches 0 if entity @s[tag=a] run function glarth:dialogue/rose/lines/night2
execute if score cycle Temp matches 1 if entity @s[tag=a] run function glarth:dialogue/rose/lines/day2
# Trades
execute if score quest Stats matches 7 run function glarth:dialogue/rose/trades/7
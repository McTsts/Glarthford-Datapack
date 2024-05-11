# Cycle
function glarth:dialogue/guard/cycle
# Dialogue
execute if score cycle Temp matches -1 unless score quest Stats matches 7 run function glarth:dialogue/sleep
execute if score cycle Temp matches 1 unless score quest Stats matches 7 run function glarth:dialogue/guard/lines/generic
execute if score cycle Temp matches 0 if score quest Stats matches 7 if entity @s[tag=!a] run function glarth:dialogue/guard/lines/night_7
execute if score cycle Temp matches 1 if score quest Stats matches 7 if entity @s[tag=!a] run function glarth:dialogue/guard/lines/day_7
execute if score quest Stats matches 7 if entity @s[tag=a] run function glarth:dialogue/guard/lines/generic
# Trades
execute if score quest Stats matches 7 run function glarth:dialogue/guard/trades/7
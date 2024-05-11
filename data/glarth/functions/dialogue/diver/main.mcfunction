# Cycle
function glarth:dialogue/diver/cycle
# Dialogue
execute if score cycle Temp matches 0 unless score quest Stats matches 9 if entity @s[tag=!a] run function glarth:dialogue/diver/lines/night
execute if score cycle Temp matches 1 unless score quest Stats matches 9 if entity @s[tag=!a] run function glarth:dialogue/diver/lines/day
execute if score cycle Temp matches 0 unless score quest Stats matches 9 if entity @s[tag=a] run function glarth:dialogue/diver/lines/night2
execute if score cycle Temp matches 1 unless score quest Stats matches 9 if entity @s[tag=a] run function glarth:dialogue/diver/lines/day2

execute if score cycle Temp matches 0 if score quest Stats matches 9 run function glarth:dialogue/diver/lines/night_9
execute if score cycle Temp matches 1 if score quest Stats matches 9 run function glarth:dialogue/diver/lines/day_9
# Trades
execute unless score quest Stats matches 9 run function glarth:dialogue/diver/trades/all
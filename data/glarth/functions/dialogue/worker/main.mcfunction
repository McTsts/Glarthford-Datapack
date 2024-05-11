# Cycle
function glarth:dialogue/worker/cycle
# Dialogue
execute if score cycle Temp matches -1 run function glarth:dialogue/sleep
execute if score cycle Temp matches 1 if entity @s[tag=!a] run function glarth:dialogue/worker/lines/day
execute if score cycle Temp matches 0 unless score quest Stats matches 8 if entity @s[tag=!a] run function glarth:dialogue/worker/lines/night
execute if score cycle Temp matches 0 if score quest Stats matches 8 if entity @s[tag=!a] run function glarth:dialogue/worker/lines/day
execute if score cycle Temp matches 1 if entity @s[tag=a] run function glarth:dialogue/worker/lines/day2
execute if score cycle Temp matches 0 if entity @s[tag=a] run function glarth:dialogue/worker/lines/night2
# Trades
execute unless score quest Stats matches 8 if score cycle Temp matches 1 run function glarth:dialogue/worker/trades/all
execute if score quest Stats matches 8 run function glarth:dialogue/worker/trades/all

# Cycle
function glarth:dialogue/lumberjack/cycle
# Dialogue
execute if score cycle Temp matches -1 run function glarth:dialogue/sleep
execute if score cycle Temp matches 1 if entity @s[tag=!b] run function glarth:dialogue/lumberjack/lines/day
execute if score cycle Temp matches 1 if entity @s[tag=b] run function glarth:dialogue/lumberjack/lines/day2
execute if score cycle Temp matches 0 run function glarth:dialogue/lumberjack/lines/night
# Trades
execute if score cycle Temp matches 0..1 run function glarth:dialogue/lumberjack/trades/all
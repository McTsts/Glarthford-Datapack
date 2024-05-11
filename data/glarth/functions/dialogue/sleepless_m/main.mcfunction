# Cycle
function glarth:dialogue/sleepless_m/cycle
scoreboard players operation sleepless_m Temp = cycle Temp
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/sleepless_m/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/sleepless_m/lines/day
# Trades
function glarth:dialogue/sleepless_m/trades/all
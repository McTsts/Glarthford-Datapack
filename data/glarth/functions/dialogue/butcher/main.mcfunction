# Cycle
function glarth:dialogue/butcher/cycle
# Dialogue
execute if score cycle Temp matches -1 run function glarth:dialogue/sleep
execute if score cycle Temp matches 1 run function glarth:dialogue/butcher/lines/day
execute if score cycle Temp matches 0 run function glarth:dialogue/butcher/lines/night
# Trades
execute if score cycle Temp matches 0..1 run function glarth:dialogue/butcher/trades/all
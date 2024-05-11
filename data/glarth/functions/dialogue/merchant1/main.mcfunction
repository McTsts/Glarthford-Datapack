# Cycle
function glarth:dialogue/merchant1/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/merchant1/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/merchant1/lines/day
# Trades
function glarth:dialogue/merchant1/trades/all
execute as @a[tag=!tip9b,distance=..5] run function glarth:mechanic/tip/9b
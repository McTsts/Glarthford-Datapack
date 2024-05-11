# Cycle
function glarth:dialogue/trader/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/trader/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/trader/lines/day
# Trades
execute if score quest Stats matches 2 run function glarth:dialogue/trader/trades/2
execute if score quest Stats matches 4 run function glarth:dialogue/trader/trades/4_6
execute if score quest Stats matches 5 run function glarth:dialogue/trader/trades/5
execute if score quest Stats matches 6 run function glarth:dialogue/trader/trades/4_6
execute if score quest Stats matches 8 run function glarth:dialogue/trader/trades/8
# Tip
execute as @a[distance=..5,tag=!tip25] run function glarth:mechanic/tip/25
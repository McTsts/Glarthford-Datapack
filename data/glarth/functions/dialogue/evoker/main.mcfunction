# Cycle
function glarth:dialogue/evoker/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/evoker/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/evoker/lines/day
# Trades
function glarth:dialogue/evoker/trades/all
execute unless score quest Stats matches 9 run function glarth:dialogue/evoker/trades/all2
execute if score quest Stats matches 9 run function glarth:dialogue/evoker/trades/9
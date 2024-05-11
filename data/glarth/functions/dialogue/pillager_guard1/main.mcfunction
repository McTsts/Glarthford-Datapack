# Cycle
function glarth:dialogue/pillager_guard1/cycle
# Dialogue
execute if score cycle Temp matches 1 if block -47 28 -193 lever[powered=false] run function glarth:dialogue/pillager_guard1/lines/day
execute if score cycle Temp matches 0 if block -47 28 -193 lever[powered=false] run function glarth:dialogue/pillager_guard1/lines/night
execute if block -47 28 -193 lever[powered=true] run function glarth:dialogue/pillager_guard1/lines/generic2
# Trades
execute if block -47 28 -193 lever[powered=false] run function glarth:dialogue/pillager_guard1/trades/all
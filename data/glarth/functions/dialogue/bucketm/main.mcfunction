# Cycle
function glarth:dialogue/bucketm/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/bucketm/lines/night
execute if score cycle Temp matches 1 run function glarth:dialogue/bucketm/lines/day
# Trades
function glarth:dialogue/bucketm/trades/all
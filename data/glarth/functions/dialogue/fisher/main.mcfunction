# Cycle
function glarth:dialogue/fisher/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=n2] run function glarth:dialogue/fisher/lines/night
execute if score cycle Temp matches 0 if entity @s[tag=!n2] run function glarth:dialogue/fisher/lines/night2
execute if score cycle Temp matches 1 run function glarth:dialogue/fisher/lines/day
# Trades
function glarth:dialogue/fisher/trades/all
# Cycle
function glarth:dialogue/enderpig/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!a] run function glarth:dialogue/enderpig/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!a] run function glarth:dialogue/enderpig/lines/day
execute if entity @s[tag=a] run function glarth:dialogue/enderpig/lines/generic
# Trades
function glarth:dialogue/enderpig/trades/all
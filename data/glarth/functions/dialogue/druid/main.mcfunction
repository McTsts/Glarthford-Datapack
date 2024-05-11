# Cycle
function glarth:dialogue/druid/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/druid/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!b] run function glarth:dialogue/druid/lines/day
execute if score cycle Temp matches 1 if entity @s[tag=b] run function glarth:dialogue/druid/lines/day2
# Trades
function glarth:dialogue/druid/trades/all
execute if score quest Stats matches 2 run function glarth:dialogue/druid/trades/2
# Cycle
function glarth:dialogue/vampire/cycle
# Dialogue
execute if score quest Stats matches 6 if score cycle Temp matches 0 if entity @s[tag=!b] run function glarth:dialogue/vampire/lines/night_6
execute if score quest Stats matches 6 if score cycle Temp matches 1 if entity @s[tag=!b] run function glarth:dialogue/vampire/lines/day_6
execute if score quest Stats matches 6 if entity @s[tag=b] run function glarth:dialogue/vampire/lines/generic2_6

execute unless score quest Stats matches 6 if score cycle Temp matches 0 run function glarth:dialogue/vampire/lines/night
execute unless score quest Stats matches 6 if score cycle Temp matches 1 run function glarth:dialogue/vampire/lines/day
# Trades
function glarth:dialogue/vampire/trades/all
execute if score quest Stats matches 6 run function glarth:dialogue/vampire/trades/6
# Cycle
function glarth:dialogue/time_traveller/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!a] run function glarth:dialogue/time_traveller/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!a] run function glarth:dialogue/time_traveller/lines/day
execute if score cycle Temp matches 0 if entity @s[tag=a] run function glarth:dialogue/time_traveller/lines/night2
execute if score cycle Temp matches 1 if entity @s[tag=a] run function glarth:dialogue/time_traveller/lines/day2
# Trades
function glarth:dialogue/time_traveller/trades/all
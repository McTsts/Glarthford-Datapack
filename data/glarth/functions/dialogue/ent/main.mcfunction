# Cycle
function glarth:dialogue/ent/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!a] run function glarth:dialogue/ent/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!a] run function glarth:dialogue/ent/lines/day
execute if score cycle Temp matches 0 if entity @s[tag=a] run function glarth:dialogue/ent/lines/night2
execute if score cycle Temp matches 1 if entity @s[tag=a] run function glarth:dialogue/ent/lines/day2
# Trades
function glarth:dialogue/ent/trades/all
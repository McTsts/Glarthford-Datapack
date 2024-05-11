# Cycle
function glarth:dialogue/grandma/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!a] run function glarth:dialogue/sleep
execute if score cycle Temp matches 0 if entity @s[tag=a] run function glarth:dialogue/grandma/lines/night2
execute if score cycle Temp matches 1 if entity @s[tag=!a] run function glarth:dialogue/grandma/lines/day
execute if score cycle Temp matches 1 if entity @s[tag=a] run function glarth:dialogue/grandma/lines/day2
# Trades
function glarth:dialogue/grandma/trades/all
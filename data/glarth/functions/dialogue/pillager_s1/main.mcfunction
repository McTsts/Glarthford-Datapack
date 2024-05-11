# Cycle
function glarth:dialogue/pillager_s1/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!a] run function glarth:dialogue/pillager_s1/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!a] run function glarth:dialogue/pillager_s1/lines/day
execute if entity @s[tag=a] run function glarth:dialogue/pillager_s1/lines/generic2
# Trades
function glarth:dialogue/pillager_s1/trades/all
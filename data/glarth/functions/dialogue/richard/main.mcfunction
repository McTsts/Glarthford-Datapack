# Cycle
function glarth:dialogue/richard/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!a] run function glarth:dialogue/richard/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!a] run function glarth:dialogue/richard/lines/day
execute if score cycle Temp matches 0 if entity @s[tag=a] run function glarth:dialogue/richard/lines/night2
execute if score cycle Temp matches 1 if entity @s[tag=a] run function glarth:dialogue/richard/lines/day2
# Trades
function glarth:dialogue/richard/trades/all
# Extra
tag @a add talkedToR

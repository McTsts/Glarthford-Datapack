# Cycle
function glarth:dialogue/sprite/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!a,tag=!b] run function glarth:dialogue/sprite/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!a,tag=!b] run function glarth:dialogue/sprite/lines/day
execute if score cycle Temp matches 0 if entity @s[tag=a,tag=!b] run function glarth:dialogue/sprite/lines/night2
execute if score cycle Temp matches 1 if entity @s[tag=a,tag=!b] run function glarth:dialogue/sprite/lines/day2
execute if entity @s[tag=b] run function glarth:dialogue/sprite/lines/generic3
# Trades
function glarth:dialogue/sprite/trades/all
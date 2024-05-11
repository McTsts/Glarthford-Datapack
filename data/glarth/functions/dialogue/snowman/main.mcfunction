# Cycle
function glarth:dialogue/snowman/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!a] run function glarth:dialogue/snowman/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!a] run function glarth:dialogue/snowman/lines/day
execute if score cycle Temp matches 0 if entity @s[tag=a] run function glarth:dialogue/snowman/lines/night2
execute if score cycle Temp matches 1 if entity @s[tag=a] run function glarth:dialogue/snowman/lines/day2
# Trades
function glarth:dialogue/snowman/trades/all
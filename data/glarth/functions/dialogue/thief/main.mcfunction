# Cycle
function glarth:dialogue/thief/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!a] run function glarth:dialogue/thief/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!a] run function glarth:dialogue/thief/lines/day
execute if score cycle Temp matches 0 if entity @s[tag=a] run function glarth:dialogue/thief/lines/night2
execute if score cycle Temp matches 1 if entity @s[tag=a] run function glarth:dialogue/thief/lines/day2
# Trades
function glarth:dialogue/thief/trades/all
execute if score quest Stats matches 9 run function glarth:dialogue/thief/trades/9
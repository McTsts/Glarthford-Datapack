# Cycle
function glarth:dialogue/jerozgen/cycle
# Dialogue
execute if score cycle Temp matches 1 if entity @s[tag=!a,tag=!moved_to_gary,tag=!move_to_gary] run function glarth:dialogue/jerozgen/lines/day
execute if score cycle Temp matches 0 if entity @s[tag=!a,tag=!moved_to_gary,tag=!move_to_gary] run function glarth:dialogue/jerozgen/lines/night
execute if entity @s[tag=a,tag=!moved_to_gary,tag=!move_to_gary] run function glarth:dialogue/jerozgen/lines/generic2
execute if entity @s[tag=moved_to_gary] run function glarth:dialogue/jerozgen/lines/generic3
execute if entity @s[tag=move_to_gary] run function glarth:dialogue/jerozgen/lines/trade3
# Trades
function glarth:dialogue/jerozgen/trades/all
execute if score quest Stats matches 4 run function glarth:dialogue/jerozgen/trades/4
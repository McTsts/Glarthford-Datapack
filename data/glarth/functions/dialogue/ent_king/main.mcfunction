# Cycle
function glarth:dialogue/ent_king/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!a] run function glarth:dialogue/ent_king/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!a] run function glarth:dialogue/ent_king/lines/day
execute if score cycle Temp matches 0 if entity @s[tag=a,tag=!b] run function glarth:dialogue/ent_king/lines/night2
execute if score cycle Temp matches 1 if entity @s[tag=a,tag=!b] run function glarth:dialogue/ent_king/lines/day2
execute if entity @s[tag=b,tag=!d] run function glarth:dialogue/ent_king/lines/generic3
execute if entity @s[tag=d] run function glarth:dialogue/ent_king/lines/generic4
# Trades
function glarth:dialogue/ent_king/trades/all
# Cycle
function glarth:dialogue/gibbs/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!a,tag=!g2] run function glarth:dialogue/gibbs/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!a,tag=!g2] run function glarth:dialogue/gibbs/lines/day
execute if entity @s[tag=!a,tag=g2] run function glarth:dialogue/gibbs/lines/generic2
execute if entity @s[tag=a] run function glarth:dialogue/gibbs/lines/generic3
# Trades
function glarth:dialogue/gibbs/trades/all
tag @s add g2
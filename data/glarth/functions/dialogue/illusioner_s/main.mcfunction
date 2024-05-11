# Cycle
function glarth:dialogue/illusioner_s/cycle
# Dialogue
execute if score cycle Temp matches 0 if block 40 29 -163 minecraft:iron_trapdoor run function glarth:dialogue/illusioner_s/lines/night
execute if score cycle Temp matches 1 if block 40 29 -163 minecraft:iron_trapdoor run function glarth:dialogue/illusioner_s/lines/day
execute unless block 40 29 -163 minecraft:iron_trapdoor if score quest Stats matches 9 run function glarth:dialogue/illusioner_s/lines/generic2
execute unless block 40 29 -163 minecraft:iron_trapdoor unless score quest Stats matches 9 run function glarth:dialogue/illusioner_s/lines/day
# Trades
function glarth:dialogue/illusioner_s/trades/tbc
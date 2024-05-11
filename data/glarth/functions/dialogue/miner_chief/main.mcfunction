# Cycle
function glarth:dialogue/miner_chief/cycle
# Dialogue
execute if score cycle Temp matches 0 if score quest Stats matches 0 if entity @s[tag=!c] run function glarth:dialogue/miner_chief/lines/night_0
execute if score cycle Temp matches 1 if score quest Stats matches 0 if entity @s[tag=!c] run function glarth:dialogue/miner_chief/lines/day_0
execute if score quest Stats matches 0 if entity @s[tag=c] run function glarth:dialogue/miner_chief/lines/generic

execute if score cycle Temp matches 0 if score quest Stats matches 9 run function glarth:dialogue/miner_chief/lines/night_9
execute if score cycle Temp matches 1 if score quest Stats matches 9 run function glarth:dialogue/miner_chief/lines/day_9

execute unless score quest Stats matches 9 unless score quest Stats matches 0 run function glarth:dialogue/miner_chief/lines/generic3
# Trades
execute if score quest Stats matches 0 run function glarth:dialogue/miner_chief/trades/0
execute unless score quest Stats matches 9 unless score quest Stats matches 0 run function glarth:dialogue/miner_chief/trades/all
# Extra
execute if score quest Stats matches 0 run function glarth:mechanic/quest/tut1

# Checked Town
execute if score quest Stats matches 0 run tag @a[distance=..5] add checkedTown
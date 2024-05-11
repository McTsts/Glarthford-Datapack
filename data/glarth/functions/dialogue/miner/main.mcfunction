# Cycle
function glarth:dialogue/miner/cycle
# Dialogue
execute if score cycle Temp matches 0 if score quest Stats matches 1 if entity @s[tag=!a] run function glarth:dialogue/miner/lines/night_1
execute if score cycle Temp matches 1 if score quest Stats matches 1 if entity @s[tag=!a] run function glarth:dialogue/miner/lines/day_1
execute if score cycle Temp matches 0 if score quest Stats matches 1 if entity @s[tag=a] run function glarth:dialogue/miner/lines/night2_1
execute if score cycle Temp matches 1 if score quest Stats matches 1 if entity @s[tag=a] run function glarth:dialogue/miner/lines/day2_1

execute if score cycle Temp matches 0 if score quest Stats matches 2 run function glarth:dialogue/miner/lines/night_2
execute if score cycle Temp matches 1 if score quest Stats matches 2 run function glarth:dialogue/miner/lines/day_2
# Trades
execute if score quest Stats matches 1 run function glarth:dialogue/miner/trades/1
execute if score quest Stats matches 2 run function glarth:dialogue/miner/trades/2

# Checked Beacon
execute if score quest Stats matches 1 run tag @a[distance=..5] add checkedBeacon
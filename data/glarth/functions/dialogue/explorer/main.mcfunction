# Cycle
function glarth:dialogue/explorer/cycle
# Dialogue
execute if score quest Stats matches 0 run function glarth:dialogue/sleep

execute if score cycle Temp matches 0 if score quest Stats matches 1..2 if entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/night
execute if score cycle Temp matches 1 if score quest Stats matches 1..2 if entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/day
execute if score cycle Temp matches 0 if score quest Stats matches 1..2 unless entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/night2
execute if score cycle Temp matches 1 if score quest Stats matches 1..2 unless entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/day2

execute if score cycle Temp matches 0 if score quest Stats matches 3 if entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/night_3
execute if score cycle Temp matches 1 if score quest Stats matches 3 if entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/day_3
execute if score cycle Temp matches 0 if score quest Stats matches 3 unless entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/night2
execute if score cycle Temp matches 1 if score quest Stats matches 3 unless entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/day2

execute if score cycle Temp matches 0 if score quest Stats matches 8 if entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/night_3
execute if score cycle Temp matches 1 if score quest Stats matches 8 if entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/day_3
execute if score cycle Temp matches 0 if score quest Stats matches 8 unless entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/night2
execute if score cycle Temp matches 1 if score quest Stats matches 8 unless entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/day2

execute if score cycle Temp matches 0 if score quest Stats matches 4 if entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/night_4
execute if score cycle Temp matches 1 if score quest Stats matches 4 if entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/day_4
execute if score cycle Temp matches 0 if score quest Stats matches 4 unless entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/night2
execute if score cycle Temp matches 1 if score quest Stats matches 4 unless entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/day2

execute if score cycle Temp matches 0 if score quest Stats matches 5 if entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/night_5
execute if score cycle Temp matches 1 if score quest Stats matches 5 if entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/day_5
execute if score cycle Temp matches 0 if score quest Stats matches 5 unless entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/night2
execute if score cycle Temp matches 1 if score quest Stats matches 5 unless entity @s[tag=!a,tag=!b] run function glarth:dialogue/explorer/lines/day2

execute if score cycle Temp matches 0 if score quest Stats matches 7 if entity @s[tag=!c] run function glarth:dialogue/explorer/lines/night_7
execute if score cycle Temp matches 1 if score quest Stats matches 7 if entity @s[tag=!c] run function glarth:dialogue/explorer/lines/day_7
execute if score cycle Temp matches 0 if score quest Stats matches 7 if entity @s[tag=c] run function glarth:dialogue/explorer/lines/night2
execute if score cycle Temp matches 1 if score quest Stats matches 7 if entity @s[tag=c] run function glarth:dialogue/explorer/lines/day2

execute if score cycle Temp matches 0 if score quest Stats matches 9 run function glarth:dialogue/explorer/lines/night_9
execute if score cycle Temp matches 1 if score quest Stats matches 9 run function glarth:dialogue/explorer/lines/day_9

# Trades
execute unless score quest Stats matches 0 unless score quest Stats matches 7 unless score quest Stats matches 9 run function glarth:dialogue/explorer/trades/all
execute if score quest Stats matches 5 run function glarth:dialogue/explorer/trades/5
execute if score quest Stats matches 7 run function glarth:dialogue/explorer/trades/7

# Checked Beacon
execute if score quest Stats matches 5 run tag @a[distance=..5] add checkedBeacon
execute if score quest Stats matches 7 run tag @a[distance=..5] add checkedBeacon
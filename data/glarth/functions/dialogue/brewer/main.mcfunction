# Cycle
function glarth:dialogue/brewer/cycle
# Dialogue
execute if score cycle Temp matches 0 unless score quest Stats matches 9 run function glarth:dialogue/brewer/lines/night
execute if score cycle Temp matches 1 unless score quest Stats matches 9 if entity @s[tag=!d2] run function glarth:dialogue/brewer/lines/day
execute if score cycle Temp matches 1 unless score quest Stats matches 9 if entity @s[tag=d2] run function glarth:dialogue/brewer/lines/day2

execute if score cycle Temp matches 0 if score quest Stats matches 9 run function glarth:dialogue/brewer/lines/night_9
execute if score cycle Temp matches 1 if score quest Stats matches 9 run function glarth:dialogue/brewer/lines/day_9
# Trades
execute unless score quest Stats matches 9 run function glarth:dialogue/brewer/trades/all
execute if score quest Stats matches 1..2 run function glarth:dialogue/brewer/trades/1_2
execute if score quest Stats matches 3 run function glarth:dialogue/brewer/trades/3_8
execute if score quest Stats matches 4..6 run function glarth:dialogue/brewer/trades/default
execute if score quest Stats matches 7 run function glarth:dialogue/brewer/trades/7
execute if score quest Stats matches 8 run function glarth:dialogue/brewer/trades/3_8
execute if score quest Stats matches 8 run function glarth:dialogue/brewer/trades/8
execute if score quest Stats matches 10..11 run function glarth:dialogue/brewer/trades/default
# Extra
tag @s add d2
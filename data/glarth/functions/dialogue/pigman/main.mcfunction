# Dialogue
execute if score quest Stats matches 3 if entity @s[tag=!a] run function glarth:dialogue/pigman/lines/generic
execute if score quest Stats matches 3 if entity @s[tag=a] run function glarth:dialogue/pigman/lines/generic2

execute if score quest Stats matches 8 if entity @s[tag=!c] run function glarth:dialogue/pigman/lines/generic3
execute if score quest Stats matches 8 if entity @s[tag=c] run function glarth:dialogue/pigman/lines/generic4
# Trades
execute if score quest Stats matches 3 run function glarth:dialogue/pigman/trades/3
execute if score quest Stats matches 8 run function glarth:dialogue/pigman/trades/8

# Checked Beacon
execute if score quest Stats matches 3 run tag @a[distance=..5] add checkedBeacon
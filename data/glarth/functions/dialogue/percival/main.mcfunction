# Dialogue
execute if entity @s[tag=!a] run function glarth:dialogue/percival/lines/generic
execute if entity @s[tag=a,tag=!b] run function glarth:dialogue/percival/lines/generic2
execute if entity @s[tag=b,tag=!c] run function glarth:dialogue/percival/lines/generic3
execute if entity @s[tag=c] run function glarth:dialogue/percival/lines/generic4
# Trades
function glarth:dialogue/percival/trades/all

# Checked Beacon
execute if score quest Stats matches 6 run tag @a[distance=..5] add checkedBeacon
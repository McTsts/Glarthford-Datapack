# Cycle
function glarth:dialogue/archaeologist/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!b] run function glarth:dialogue/archaeologist/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!b] run function glarth:dialogue/archaeologist/lines/day
execute if entity @s[tag=b,tag=!c] run function glarth:dialogue/archaeologist/lines/generic1
execute if entity @s[tag=c] run function glarth:dialogue/archaeologist/lines/generic2
# Trades
execute if score quest Stats matches 2 run function glarth:dialogue/archaeologist/trades/2
execute if score quest Stats matches 4 run function glarth:dialogue/archaeologist/trades/4

# Checked Beacon
execute if score quest Stats matches 2 run tag @a[distance=..5] add checkedBeacon
# Cycle
function glarth:dialogue/checkminer/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!a] run function glarth:dialogue/checkminer/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!a] run function glarth:dialogue/checkminer/lines/day
execute if entity @s[tag=a] run function glarth:dialogue/checkminer/lines/generic
# Trades
function glarth:dialogue/checkminer/trades/all
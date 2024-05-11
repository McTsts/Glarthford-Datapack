# Cycle
function glarth:dialogue/adri/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!b,tag=!dogSkull] run function glarth:dialogue/adri/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!b,tag=!dogSkull] run function glarth:dialogue/adri/lines/day
execute if entity @s[tag=b,tag=!dogSkull] if entity @e[type=wolf,tag=adriDog] run function glarth:dialogue/adri/lines/generic2
execute if entity @s[tag=b,tag=!dogSkull] unless entity @e[type=wolf,tag=adriDog] run function glarth:dialogue/adri/lines/generic3
execute if entity @s[tag=dogSkull] run function glarth:dialogue/adri/lines/generic4
# Trade
execute unless entity @s[tag=dogSkull] run function glarth:dialogue/adri/trades/all
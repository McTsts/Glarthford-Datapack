# Cycle
function glarth:dialogue/adri/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!b,tag=!dogSkull,tag=!e] run function glarth:dialogue/adri/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!b,tag=!dogSkull,tag=!e] run function glarth:dialogue/adri/lines/day
execute if entity @s[tag=b,tag=!dogSkull,tag=!e] if entity @e[type=wolf,tag=adriDog] run function glarth:dialogue/adri/lines/generic2
execute if entity @s[tag=b,tag=!dogSkull,tag=!e] unless entity @e[type=wolf,tag=adriDog] run function glarth:dialogue/adri/lines/generic3
execute if entity @s[tag=dogSkull,tag=!e] run function glarth:dialogue/adri/lines/generic4
execute if entity @s[tag=e,tag=!moved_to_gary] run function glarth:dialogue/adri/lines/gary3
execute if entity @s[tag=moved_to_gary] run function glarth:dialogue/adri/lines/gary4
# Trade
execute if entity @s[tag=!dogSkull,tag=!gary] run function glarth:dialogue/adri/trades/all
execute if entity @s[tag=!dogSkull,tag=gary] run function glarth:dialogue/adri/trades/gary
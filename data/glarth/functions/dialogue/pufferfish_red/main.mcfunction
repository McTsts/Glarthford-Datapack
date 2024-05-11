# Cycle
function glarth:dialogue/pufferfish_red/cycle
# Dialogue
execute if score cycle Temp matches 0 if entity @s[tag=!a] run function glarth:dialogue/pufferfish_red/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!a] run function glarth:dialogue/pufferfish_red/lines/day
execute if entity @s[tag=a] run function glarth:dialogue/pufferfish_red/lines/generic2
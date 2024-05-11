# Cycle
function glarth:dialogue/creeper/cycle
# Dialogue
execute if score cycle Temp matches 0 run schedule function glarth:dialogue/creeper/lines/night 30
execute if score cycle Temp matches 1 run schedule function glarth:dialogue/creeper/lines/day 30
# Fight
execute if entity @s[tag=!charged_creeper] run function glarth:combat/start/default/creeper
execute if entity @s[tag=charged_creeper] run function glarth:combat/start/default/charged_creeper
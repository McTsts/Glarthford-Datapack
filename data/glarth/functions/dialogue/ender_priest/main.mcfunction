# Cycle
function glarth:dialogue/ender_priest/cycle
# Dialogue
execute if score cycle Temp matches 0 unless entity @s[tag=a] run schedule function glarth:dialogue/ender_priest/lines/night 30
execute if score cycle Temp matches 1 unless entity @s[tag=a] run schedule function glarth:dialogue/ender_priest/lines/day 30
execute if entity @s[tag=a,tag=g] run schedule function glarth:dialogue/ender_priest/lines/lose8 30
# Fight
execute unless entity @s[tag=a] run function glarth:combat/start/boss/ender_priest
execute if entity @s[tag=g,tag=a] run function glarth:combat/start/boss/ender_priest
tag @s remove die4

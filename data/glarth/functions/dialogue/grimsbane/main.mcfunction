# Cycle
function glarth:dialogue/grimsbane/cycle
# Dialogue
execute unless entity @s[tag=gb_moved] if score difficulty Stats matches 0 if score cycle Temp matches 0 run function glarth:dialogue/grimsbane/lines/night
execute unless entity @s[tag=gb_moved] if score difficulty Stats matches 0 if score cycle Temp matches 1 run function glarth:dialogue/grimsbane/lines/day
execute unless entity @s[tag=gb_moved] if score difficulty Stats matches 1..3 if score cycle Temp matches 0 run schedule function glarth:dialogue/grimsbane/lines/night 30
execute unless entity @s[tag=gb_moved] if score difficulty Stats matches 1..3 if score cycle Temp matches 1 run schedule function glarth:dialogue/grimsbane/lines/day 30
execute if entity @s[tag=gb_moved] if score cycle Temp matches 0 run schedule function glarth:dialogue/grimsbane/lines/night 30
execute if entity @s[tag=gb_moved] if score cycle Temp matches 1 run schedule function glarth:dialogue/grimsbane/lines/day 30
# Fight
execute if entity @s[tag=gb_moved] run function glarth:combat/start/boss/grimsbane
execute unless entity @s[tag=gb_moved] if score difficulty Stats matches 1..3 run function glarth:combat/start/boss/grimsbane
# Cycle
function glarth:dialogue/ghost_queen/cycle
# Dialogue
execute if score cycle Temp matches 0 run function glarth:dialogue/ghost_queen/lines/night
execute if score cycle Temp matches 1 if entity @s[tag=!fly_off] run function glarth:dialogue/ghost_queen/lines/day
execute if score cycle Temp matches 1 if entity @s[tag=fly_off] run function glarth:dialogue/ghost_queen/lines/day2
# Extra
tag @e[tag=ghost_queen] add fly_off

# Checked Town
execute if score quest Stats matches 6 run tag @a[distance=..5] add checkedTown
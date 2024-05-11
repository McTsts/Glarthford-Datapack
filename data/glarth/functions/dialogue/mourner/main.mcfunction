# Cycle
function glarth:dialogue/mourner/cycle

# Additional D2 check
execute as @s[tag=!b,tag=a] at @s unless entity @e[type=wolf,distance=..5] run tag @s add d2

# Dialogue
execute unless score quest Stats matches 7..8 if score cycle Temp matches 0 if entity @s[tag=!b,tag=!a,tag=!d2] run function glarth:dialogue/mourner/lines/night
execute unless score quest Stats matches 7..8 if score cycle Temp matches 1 if entity @s[tag=!b,tag=!a,tag=!d2] run function glarth:dialogue/mourner/lines/day
execute unless score quest Stats matches 7..8 if score cycle Temp matches 0 if entity @s[tag=d2,tag=!b] run function glarth:dialogue/mourner/lines/night2
execute unless score quest Stats matches 7..8 if score cycle Temp matches 1 if entity @s[tag=d2,tag=!b] run function glarth:dialogue/mourner/lines/day2
execute unless score quest Stats matches 7..8 if entity @s[tag=b] run function glarth:dialogue/mourner/lines/generic
execute unless score quest Stats matches 7..8 if entity @s[tag=!b,tag=a,tag=!d2] run function glarth:dialogue/mourner/lines/generic2

# 7 (Before Trades)
execute if score quest Stats matches 7 if entity @s[tag=mourner_generic2] if score cycle Temp matches 0 if entity @s[tag=!b,tag=!a,tag=!d2] run function glarth:dialogue/mourner/lines/night
execute if score quest Stats matches 7 if entity @s[tag=mourner_generic2] if score cycle Temp matches 1 if entity @s[tag=!b,tag=!a,tag=!d2] run function glarth:dialogue/mourner/lines/day
execute if score quest Stats matches 7 if entity @s[tag=mourner_generic2] if score cycle Temp matches 0 if entity @s[tag=d2,tag=!b] run function glarth:dialogue/mourner/lines/night2
execute if score quest Stats matches 7 if entity @s[tag=mourner_generic2] if score cycle Temp matches 1 if entity @s[tag=d2,tag=!b] run function glarth:dialogue/mourner/lines/day2
execute if score quest Stats matches 7 if entity @s[tag=mourner_generic2] if entity @s[tag=b] run function glarth:dialogue/mourner/lines/generic
execute if score quest Stats matches 7 if entity @s[tag=mourner_generic2] if entity @s[tag=!b,tag=a,tag=!d2] run function glarth:dialogue/mourner/lines/generic2

# 8 Dialogue
execute if score quest Stats matches 8 run function glarth:dialogue/mourner/lines/generic3

# Trades
execute unless score quest Stats matches 7..8 run function glarth:dialogue/mourner/trades/all
execute if score quest Stats matches 7 if entity @s[tag=mourner_generic2] run function glarth:dialogue/mourner/trades/all

# 7 (after Trades)
execute if score quest Stats matches 7 if entity @s[tag=mourner_generic,tag=!mourner_generic2] run function glarth:dialogue/mourner/lines/generic2_7
execute if score quest Stats matches 7 if entity @s[tag=!mourner_generic] run function glarth:dialogue/mourner/lines/generic_7
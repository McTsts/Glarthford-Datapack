# Cycle
function glarth:dialogue/miller/cycle

# Dialogue
execute unless score wind Stats matches 3 if score cycle Temp matches 0 unless score @s action matches 1.. unless score quest Stats matches 7 unless score quest Stats matches 9 run function glarth:dialogue/miller/lines/night
execute unless score wind Stats matches 3 if score cycle Temp matches 1 unless score @s action matches 1.. unless score quest Stats matches 7 unless score quest Stats matches 9 run function glarth:dialogue/miller/lines/day
execute if score wind Stats matches 3 unless score @s action matches 1.. unless score quest Stats matches 7 unless score quest Stats matches 9 run function glarth:dialogue/miller/lines/generic2
execute if score @s action matches 1.. unless score quest Stats matches 7 unless score quest Stats matches 9 run function glarth:dialogue/miller/lines/generic

# 7YA
execute if score cycle Temp matches 0 if score quest Stats matches 7 as @p positioned -3 26 -173 unless entity @s[distance=..2] if entity @e[tag=miller,type=armor_stand,tag=!d] run function glarth:dialogue/miller/lines/night7
execute if score cycle Temp matches 1 if score quest Stats matches 7 as @p positioned -3 26 -173 unless entity @s[distance=..2] if entity @e[tag=miller,type=armor_stand,tag=!d] run function glarth:dialogue/miller/lines/day7
execute if score cycle Temp matches 0 if score quest Stats matches 7 if entity @e[tag=miller,tag=d,type=armor_stand] run function glarth:dialogue/miller/lines/night7
execute if score cycle Temp matches 1 if score quest Stats matches 7 if entity @e[tag=miller,tag=d,type=armor_stand] run function glarth:dialogue/miller/lines/day7

# 9R
execute if score cycle Temp matches 0 if score quest Stats matches 9 run function glarth:dialogue/miller/lines/night_9
execute if score cycle Temp matches 1 if score quest Stats matches 9 run function glarth:dialogue/miller/lines/day_9

# Trades
execute if score quest Stats matches 1 run function glarth:dialogue/miller/trades/1

# Extra
execute if score quest Stats matches 7 as @p positioned -3 26 -173 if entity @s[distance=..2] as @e[tag=miller,type=armor_stand,tag=!d] at @s run function glarth:mechanic/action/scared_miller

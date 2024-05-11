scoreboard players add wind Temp 1
scoreboard players set r Random 6
function glarth:util/randomish
execute unless score wind Temp matches 10.. if score n Random matches 1 positioned ~2.5 ~ ~ run function glarth:mechanic/wind/wind
execute unless score wind Temp matches 10.. if score n Random matches 2 positioned ~-2.5 ~ ~ run function glarth:mechanic/wind/wind
execute unless score wind Temp matches 10.. if score n Random matches 3 positioned ~ ~2.5 ~ run function glarth:mechanic/wind/wind
execute unless score wind Temp matches 10.. if score n Random matches 4 positioned ~ ~-2.5 ~ run function glarth:mechanic/wind/wind
execute unless score wind Temp matches 10.. if score n Random matches 5 positioned ~ ~ ~2.5 run function glarth:mechanic/wind/wind
execute unless score wind Temp matches 10.. if score n Random matches 6 positioned ~ ~ ~-2.5 run function glarth:mechanic/wind/wind
execute if score wind Temp matches 10.. run particle minecraft:cloud ~ ~ ~ 1.5 0 1.5 0.1 0 normal @s
scoreboard players set n Random 0
scoreboard players set wind Temp 0
execute if score season winter matches 0 unless score quest Stats matches 4 run function glarth:mechanic/admap/4_default
execute if score season winter matches 0 if score quest Stats matches 4 run function glarth:mechanic/admap/4_end
execute if score season winter matches 1 run function glarth:mechanic/admap/4_winter
execute if score season winter matches 2 run function glarth:mechanic/admap/4_autumn
scoreboard players reset * admap
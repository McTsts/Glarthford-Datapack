## Always
execute unless score quest Stats matches 9 run function glarth:events/default
function glarth:events/weather
function glarth:events/animation
function glarth:events/tips

## Quest Specific
execute if score quest Stats matches 3 if score day Dis matches 1 run function glarth:events/3
execute if score quest Stats matches 4 if score day Dis matches 1 run function glarth:events/4
execute if score quest Stats matches 5 run function glarth:events/5
execute if score quest Stats matches 6 if score day Dis matches 1 if score combat Stats matches 1 run function glarth:events/6_pve
execute if score quest Stats matches 6 if score day Dis matches 1 if score combat Stats matches 0 run function glarth:events/6_tbc
execute if score quest Stats matches 9 run function glarth:events/9






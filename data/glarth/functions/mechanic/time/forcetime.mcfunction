scoreboard players operation minute Dis = tick Dis
scoreboard players operation minute Dis /= 20 Dis
scoreboard players operation hour Dis = minute Dis
scoreboard players operation minute Dis %= 60 Dis
scoreboard players operation hour Dis /= 60 Dis
scoreboard players operation time Dis = hour Dis
scoreboard players operation time Dis *= 100 Dis
scoreboard players operation time Dis += minute Dis
function glarth:mechanic/time/update
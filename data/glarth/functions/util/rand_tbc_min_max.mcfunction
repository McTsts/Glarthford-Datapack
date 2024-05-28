$scoreboard players set r Random $(max)
$scoreboard players remove r Random $(min)
scoreboard players add r Random 1
function glarth:util/rand_tbc
$scoreboard players add n Random $(min)
scoreboard players remove n Random 1
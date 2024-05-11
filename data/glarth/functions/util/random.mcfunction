scoreboard players operation t Random = r Random
scoreboard players operation k Random = r Random
function mctsts:util/random/spawn
function mctsts:util/random/kill
scoreboard players operation n Random = @e[tag=util_random] Random
execute @e[tag=util_random] ~ ~ ~ function mctsts:util/kill
scoreboard players reset t Random
scoreboard players reset k Random
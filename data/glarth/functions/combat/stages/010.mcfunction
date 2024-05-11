scoreboard players set r Random 4
function glarth:util/rand_tbc
execute if score n Random matches 1 as @s[tag=!tbcBoss] run function glarth:combat/flee_enemy
tag @s add tbcIgnoreThis
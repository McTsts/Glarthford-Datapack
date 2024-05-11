function glarth:util/rand_tbc
execute as @e[tag=rand_sel] if score @s rand_sel = n Random run tag @s add rand_sel_result
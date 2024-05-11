scoreboard players set r Random 4
function glarth:util/rand_tbc

execute if score n Random matches 01..02 run function glarth:combat/entity/pigman
execute if score n Random matches 01..02 run function glarth:dialogue/netheran/lines/attack1
execute if score n Random matches 03 run function glarth:combat/entity/wither_skeleton
execute if score n Random matches 04 run function glarth:combat/entity/wither_skeleton
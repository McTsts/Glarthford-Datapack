scoreboard players set r Random 4
function glarth:util/randomish
execute if score n Random matches 1 run function glarth:mechanic/animation/duck/s1
execute if score n Random matches 2 run function glarth:mechanic/animation/duck/s2
execute if score n Random matches 3 run function glarth:mechanic/animation/duck/s3
execute if score n Random matches 4 run function glarth:mechanic/animation/duck/s4
execute if score n Random matches 5 run function glarth:mechanic/animation/duck/s5
execute if score n Random matches 6 run function glarth:mechanic/animation/duck/s6
# yes twice
execute if score n Random matches 7 run function glarth:mechanic/animation/duck/s7
execute if score n Random matches 7 run function glarth:mechanic/animation/duck/s7
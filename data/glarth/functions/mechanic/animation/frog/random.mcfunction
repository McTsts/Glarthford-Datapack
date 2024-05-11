tag @e[tag=frog] add die3
scoreboard players set r Random 3
function glarth:util/random
execute if score n Random matches 1 run function glarth:mechanic/animation/frog/s1
execute if score n Random matches 2 run function glarth:mechanic/animation/frog/s2
execute if score n Random matches 3 run function glarth:mechanic/animation/frog/s3

scoreboard players set r Random 4
function glarth:util/random
execute if score n Random matches 1 run function glarth:mechanic/animation/frog/s14
execute if score n Random matches 2 run function glarth:mechanic/animation/frog/s15
execute if score n Random matches 3 run function glarth:mechanic/animation/frog/s16
execute if score n Random matches 4 run function glarth:mechanic/animation/frog/s17

scoreboard players set r Random 9
execute if score n Random matches 1 run function glarth:mechanic/animation/frog/s4
execute if score n Random matches 2 run function glarth:mechanic/animation/frog/s5
execute if score n Random matches 3 run function glarth:mechanic/animation/frog/s6
execute if score n Random matches 4 run function glarth:mechanic/animation/frog/s7
execute if score n Random matches 5 run function glarth:mechanic/animation/frog/s8
execute if score n Random matches 5 run function glarth:mechanic/animation/frog/s9
execute if score n Random matches 6 run function glarth:mechanic/animation/frog/s10
execute if score n Random matches 7 run function glarth:mechanic/animation/frog/s11
execute if score n Random matches 8 run function glarth:mechanic/animation/frog/s12
execute if score n Random matches 9 run function glarth:mechanic/animation/frog/s13
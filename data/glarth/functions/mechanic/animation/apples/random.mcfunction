scoreboard players set r Random 10
function glarth:util/randomish
execute as @e[tag=applex6] as @e[tag=applex7] as @e[tag=applex8] as @e[tag=applex9] as @e[tag=applex10] as @e[tag=applex11] as @e[tag=applex12] as @e[tag=applex13] as @e[tag=applex14] as @e[tag=applex15] run scoreboard players set n Random 0
execute if score n Random matches 1 if entity @e[tag=applex6] run function glarth:mechanic/animation/apples/random
execute if score n Random matches 2 if entity @e[tag=applex7] run function glarth:mechanic/animation/apples/random
execute if score n Random matches 3 if entity @e[tag=applex8] run function glarth:mechanic/animation/apples/random
execute if score n Random matches 4 if entity @e[tag=applex9] run function glarth:mechanic/animation/apples/random
execute if score n Random matches 5 if entity @e[tag=applex10] run function glarth:mechanic/animation/apples/random
execute if score n Random matches 6 if entity @e[tag=applex11] run function glarth:mechanic/animation/apples/random
execute if score n Random matches 7 if entity @e[tag=applex12] run function glarth:mechanic/animation/apples/random
execute if score n Random matches 8 if entity @e[tag=applex13] run function glarth:mechanic/animation/apples/random
execute if score n Random matches 9 if entity @e[tag=applex14] run function glarth:mechanic/animation/apples/random
execute if score n Random matches 10 if entity @e[tag=applex15] run function glarth:mechanic/animation/apples/random

execute if score n Random matches 1 unless entity @e[tag=applex6] run function glarth:mechanic/animation/apples/s6
execute if score n Random matches 2 unless entity @e[tag=applex7] run function glarth:mechanic/animation/apples/s7
execute if score n Random matches 3 unless entity @e[tag=applex8] run function glarth:mechanic/animation/apples/s8
execute if score n Random matches 4 unless entity @e[tag=applex9] run function glarth:mechanic/animation/apples/s9
execute if score n Random matches 5 unless entity @e[tag=applex10] run function glarth:mechanic/animation/apples/s10
execute if score n Random matches 6 unless entity @e[tag=applex11] run function glarth:mechanic/animation/apples/s11
execute if score n Random matches 7 unless entity @e[tag=applex12] run function glarth:mechanic/animation/apples/s12
execute if score n Random matches 8 unless entity @e[tag=applex13] run function glarth:mechanic/animation/apples/s13
execute if score n Random matches 9 unless entity @e[tag=applex14] run function glarth:mechanic/animation/apples/s14
execute if score n Random matches 10 unless entity @e[tag=applex15] run function glarth:mechanic/animation/apples/s15

scoreboard players set n Random 0


scoreboard players set r Random 9
scoreboard players operation r Random -= curSlot Temp
function glarth:util/rand_tbc
scoreboard players set slot Temp -1
execute if score attackStrength tbcStats >= n Random run scoreboard players operation slot Temp = curSlot Temp
execute if score attackStrength tbcStats >= n Random run scoreboard players remove attackStrength tbcStats 1
scoreboard players add curSlot Temp 1
execute if score slot Temp matches 0 run scoreboard players set 0 tbcBreakfree 1
execute if score slot Temp matches 1 run scoreboard players set 1 tbcBreakfree 1
execute if score slot Temp matches 2 run scoreboard players set 2 tbcBreakfree 1
execute if score slot Temp matches 3 run scoreboard players set 3 tbcBreakfree 1
execute if score slot Temp matches 4 run scoreboard players set 4 tbcBreakfree 1
execute if score slot Temp matches 5 run scoreboard players set 5 tbcBreakfree 1
execute if score slot Temp matches 6 run scoreboard players set 6 tbcBreakfree 1
execute if score slot Temp matches 7 run scoreboard players set 7 tbcBreakfree 1
execute if score slot Temp matches 8 run scoreboard players set 8 tbcBreakfree 1
execute if score attackStrength tbcStats matches 1.. run function glarth:combat/action/helper/breakfree_one
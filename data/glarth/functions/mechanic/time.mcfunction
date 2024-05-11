scoreboard players add tick Dis 1
scoreboard players set 20 Dis 20
scoreboard players set 60 Dis 60
scoreboard players set 100 Dis 100
scoreboard players operation minute Dis = tick Dis
scoreboard players operation minute Dis /= 20 Dis
scoreboard players operation hour Dis = minute Dis
scoreboard players operation minute Dis %= 60 Dis
scoreboard players operation hour Dis /= 60 Dis
scoreboard players operation time Dis = hour Dis
scoreboard players operation time Dis *= 100 Dis
scoreboard players operation time Dis += minute Dis
scoreboard players operation update Dis = tick Dis
scoreboard players operation update Dis %= 20 Dis
execute if score time Dis matches ..0 run scoreboard players remove day Dis 1
execute if score time Dis matches ..0 run scoreboard players add tick Dis 28800
execute if score update Dis matches 0 run function glarth:mechanic/update_1
execute if score update Dis matches 5 run function glarth:mechanic/update_2
execute if score update Dis matches 10 run function glarth:mechanic/update_3
execute if score update Dis matches 15 run function glarth:mechanic/update_4



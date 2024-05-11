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
execute @e[tag=area_main] ~ ~ ~ scoreboard players test update Dis 0 0
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/update




execute if score time Dis matches 0000..0959 run scoreboard players set cycle Temp 0
execute if score time Dis matches 1000..1959 run scoreboard players set cycle Temp 1
execute if score time Dis matches 2000..2359 run scoreboard players set cycle Temp 0

execute if score quest Stats matches 7 run function glarth:dialogue/cycle
execute if score quest Stats matches 9 run function glarth:dialogue/cycle
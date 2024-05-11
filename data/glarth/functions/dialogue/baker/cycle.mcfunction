execute if score time Dis matches 0000..0659 run scoreboard players set cycle Temp -1
execute if score time Dis matches 0700..1859 run scoreboard players set cycle Temp 1
execute if score time Dis matches 1900..2359 run scoreboard players set cycle Temp 0

execute if score quest Stats matches 1..2 if score time Dis matches 0000..0859 run scoreboard players set cycle Temp -1
execute if score quest Stats matches 1..2 if score time Dis matches 0900..1859 run scoreboard players set cycle Temp 1

execute if score quest Stats matches 3 run scoreboard players set cycle Temp 1
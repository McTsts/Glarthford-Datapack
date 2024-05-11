execute if score ship Animation matches 1.. run scoreboard players remove ship Animation 1
execute if score ship Animation matches ..-1 run scoreboard players add ship Animation 1

execute if score ship Animation matches 4 run clone -19 1 -143 -38 1 -149 -15 24 -135
execute if score ship Animation matches 8 run clone -19 2 -143 -38 2 -149 -15 25 -135
execute if score ship Animation matches 12 run clone -19 3 -143 -38 3 -149 -15 26 -135
execute if score ship Animation matches 16 run clone -19 4 -143 -38 4 -149 -15 27 -135
execute if score ship Animation matches 20 run clone -19 5 -143 -38 5 -149 -15 28 -135
execute if score ship Animation matches 24 run clone -19 6 -143 -38 6 -149 -15 29 -135
execute if score ship Animation matches 28 run clone -19 7 -143 -38 7 -149 -15 30 -135
execute if score ship Animation matches 32 run clone -19 8 -143 -38 8 -149 -15 31 -135
execute if score ship Animation matches 36 run clone -19 9 -143 -38 9 -149 -15 32 -135
execute if score ship Animation matches 40 run clone -19 10 -143 -38 10 -149 -15 33 -135
execute if score ship Animation matches 44 run clone -19 11 -143 -38 11 -149 -15 34 -135
execute if score ship Animation matches 48 run clone -19 12 -143 -38 12 -149 -15 35 -135
execute if score ship Animation matches 52 run clone -19 13 -143 -38 13 -149 -15 36 -135
execute if score ship Animation matches 56 run clone -19 14 -143 -38 14 -149 -15 37 -135
execute if score ship Animation matches 60 run clone -19 15 -143 -38 15 -149 -15 38 -135
execute if score ship Animation matches 64 run clone -19 16 -143 -38 16 -149 -15 39 -135

execute if score ship Animation matches -2 run kill @e[tag=shipl3]
execute if score ship Animation matches -4 run clone -19 16 -153 -38 16 -159 -15 39 -135
execute if score ship Animation matches -8 run clone -19 15 -153 -38 15 -159 -15 38 -135
execute if score ship Animation matches -12 run clone -19 14 -153 -38 14 -159 -15 37 -135
execute if score ship Animation matches -16 run clone -19 13 -153 -38 13 -159 -15 36 -135
execute if score ship Animation matches -20 run kill @e[tag=shipl2]
execute if score ship Animation matches -20 run clone -19 12 -153 -38 12 -159 -15 35 -135
execute if score ship Animation matches -24 run clone -19 11 -153 -38 11 -159 -15 34 -135
execute if score ship Animation matches -28 run clone -19 10 -153 -38 10 -159 -15 33 -135
execute if score ship Animation matches -32 run clone -19 9 -153 -38 9 -159 -15 32 -135
execute if score ship Animation matches -36 run clone -19 8 -153 -38 8 -159 -15 31 -135
execute if score ship Animation matches -40 run clone -19 7 -153 -38 7 -159 -15 30 -135
execute if score ship Animation matches -44 run kill @e[tag=shipl1]
execute if score ship Animation matches -44 run clone -19 6 -153 -38 6 -159 -15 29 -135
execute if score ship Animation matches -48 run clone -19 5 -153 -38 5 -159 -15 28 -135
execute if score ship Animation matches -52 run clone -19 4 -153 -38 4 -159 -15 27 -135
execute if score ship Animation matches -56 run clone -19 3 -153 -38 3 -159 -15 26 -135
execute if score ship Animation matches -60 run clone -19 2 -153 -38 2 -159 -15 25 -135
execute if score ship Animation matches -64 run clone -19 1 -153 -38 1 -159 -15 24 -135
execute if score ship Animation matches -64 run tp @e[tag=sailor] 1 28 -132

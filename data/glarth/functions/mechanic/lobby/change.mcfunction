#forceload add 184 -68 215 12

kill @e[type=end_crystal]

fill 186 15 -106 198 30 -118 air replace torch
fill 186 15 -106 198 30 -118 air replace #minecraft:carpets
fill 186 15 -106 198 30 -118 air replace #minecraft:flowers
fill 186 15 -106 198 30 -118 air replace short_grass
fill 186 15 -106 198 30 -118 air replace large_fern
stopsound @a block
fill 186 15 -106 198 30 -118 air replace tall_grass
stopsound @a block
fill 186 15 -106 198 30 -118 air replace crimson_roots
fill 186 15 -106 198 30 -118 air replace crimson_fungus
fill 186 15 -106 198 30 -118 air replace warped_roots
fill 186 15 -106 198 30 -118 air replace warped_fungus
fill 186 15 -106 198 30 -118 air replace nether_sprouts
fill 186 15 -106 198 30 -118 air replace twisting_vines

stopsound @a block

function glarth:mechanic/get_unlock_data

execute if score quest Stats matches 0 run function glarth:mechanic/lobby/0
execute if score quest Stats matches 1 run function glarth:mechanic/lobby/1
execute if score quest Stats matches 2 run function glarth:mechanic/lobby/9
execute if score quest Stats matches 3 run function glarth:mechanic/lobby/2
execute if score quest Stats matches 4 run function glarth:mechanic/lobby/3
execute if score quest Stats matches 5 run function glarth:mechanic/lobby/5
execute if score quest Stats matches 6 run function glarth:mechanic/lobby/8
execute if score quest Stats matches 7 run function glarth:mechanic/lobby/6
execute if score quest Stats matches 8 run function glarth:mechanic/lobby/7
execute if score quest Stats matches 9 run function glarth:mechanic/lobby/4
execute if score quest Stats matches 10 run function glarth:mechanic/lobby/10
execute if score quest Stats matches 11 run function glarth:mechanic/lobby/11

scoreboard objectives setdisplay sidebar 

stopsound @a block

#forceload remove 184 -68 215 12
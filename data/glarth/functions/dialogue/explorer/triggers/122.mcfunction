#122 Explorer | Torch to open Ascension 
function glarth:dialogue/explorer/lines/trade7
clear @s minecraft:torch 1
tag @e[tag=explorer,type=armor_stand] add c

clone 67 7 -235 63 1 -241 76 27 -240
fill 76 27 -240 80 29 -233 air replace #minecraft:leaves
fill 76 33 -234 79 30 -237 air replace #minecraft:leaves
fill 76 33 -234 79 30 -237 air replace barrier
fill 76 27 -240 80 29 -233 air replace barrier
setblock 77 28 -239 fire
setblock 79 30 -236 fire
fill 77 27 -235 79 29 -238 fire replace air
fill 77 27 -237 79 27 -236 air replace fire
setblock 78 27 -235 air
setblock 80 27 -234 fire
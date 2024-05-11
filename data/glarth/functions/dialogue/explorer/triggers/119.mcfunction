#119 Explorer | Shear to open Ascension
function glarth:dialogue/explorer/lines/trade4
clear @s minecraft:shears 1
give @s minecraft:shears 1
clone 67 7 -235 63 1 -241 76 27 -240
fill 76 33 -234 79 30 -237 air replace #minecraft:leaves
fill 76 27 -240 80 29 -233 air replace #minecraft:leaves
fill 76 33 -234 79 30 -237 air replace barrier
fill 76 27 -240 80 29 -233 air replace barrier
tag @e[tag=explorer,type=armor_stand] add c
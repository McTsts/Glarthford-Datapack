#118 Time Traveller | Emerald to Energizing Potion
function glarth:dialogue/time_traveller/lines/trade1
clear @s minecraft:emerald 1
loot give @s loot glarth:give/potions/energizing
tag @e[tag=time_traveller,type=armor_stand] add a
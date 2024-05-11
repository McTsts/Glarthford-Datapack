function glarth:mechanic/tip/all
tellraw @s {"translate":"tip42","color":"green","italic":true} 
tag @s add tip42
tag @e[tag=piglin7] remove a
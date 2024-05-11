execute store success score @s Success run clone ~7 ~7 ~7 ~-7 ~-7 ~-7 ~-7 ~-7 ~-7 filtered minecraft:trapped_chest force
execute if score @s Success matches 1 run function glarth:mechanic/tip/all
execute if score @s Success matches 1 run tellraw @s {"translate":"tip50","color":"green","italic":true} 
execute if score @s Success matches 1 run tag @s add tip50
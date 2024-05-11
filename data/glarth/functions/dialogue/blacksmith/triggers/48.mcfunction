#48 Blacksmith | Blaze Powder & Coal x2 to Blaze Coin
function glarth:dialogue/blacksmith/lines/trade5
clear @s coal 2
clear @s blaze_powder 1
tag @e[tag=blacksmith,type=armor_stand] add blaze_coin
tag @e[tag=blacksmith,type=armor_stand] add e

# Delayed
scoreboard players operation hour Temp = hour Dis
scoreboard players operation minute Temp = minute Dis
scoreboard players add hour Temp 1
function glarth:dialogue/delayed
 tellraw @a[distance=..5] ["",{"translate":"delayed_item","color":"gray","italic":true,"with":[[{"nbt":"time.hour","storage":"glarth:main","interpret":true,"color":"gray","italic":false},{"text":":"},{"nbt":"time.minute","storage":"glarth:main","interpret":true,"color":"gray"}],[{"nbt":"time.thour","storage":"glarth:main","interpret":true,"color":"gray","italic":false},{"text":":"},{"nbt":"time.tminute","storage":"glarth:main","interpret":true,"color":"gray"}],{"translate":"item.blaze_coin","color":"gray","italic":true}]}]
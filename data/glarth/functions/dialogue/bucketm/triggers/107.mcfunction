#107 Bucket Merchant | Sponge to Wooden Bucket
function glarth:dialogue/bucketm/lines/trade1
clear @s sponge 1
tag @e[tag=bucketm,type=armor_stand] add make_bucket
tag @e[tag=bucketm,type=armor_stand] add a
tag @e[tag=bucketm,type=armor_stand] add d

# Delayed
scoreboard players operation hour Temp = hour Dis
scoreboard players operation minute Temp = minute Dis
scoreboard players add hour Temp 1
function glarth:dialogue/delayed
 tellraw @a[distance=..5] ["",{"translate":"delayed_item","color":"gray","italic":true,"with":[[{"nbt":"time.hour","storage":"glarth:main","interpret":true,"color":"gray","italic":false},{"text":":"},{"nbt":"time.minute","storage":"glarth:main","interpret":true,"color":"gray"}],[{"nbt":"time.thour","storage":"glarth:main","interpret":true,"color":"gray","italic":false},{"text":":"},{"nbt":"time.tminute","storage":"glarth:main","interpret":true,"color":"gray"}],{"translate":"item.wooden_bucket","color":"gray","italic":true}]}]

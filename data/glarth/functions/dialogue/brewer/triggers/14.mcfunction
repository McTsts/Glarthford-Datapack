#14 Brewer | Blaze Powder to Fire Resistance Potion
function glarth:dialogue/brewer/lines/trade1

clear @s blaze_powder 1 

scoreboard players set @e[tag=brewer,type=armor_stand] action 400
tag @e[tag=brewer,type=armor_stand] add a

# Delayed
scoreboard players operation hour Temp = hour Dis
scoreboard players operation minute Temp = minute Dis
scoreboard players add minute Temp 20
function glarth:dialogue/delayed
 tellraw @a[distance=..5] ["",{"translate":"delayed_item","color":"gray","italic":true,"with":[[{"nbt":"time.hour","storage":"glarth:main","interpret":true,"color":"gray","italic":false},{"text":":"},{"nbt":"time.minute","storage":"glarth:main","interpret":true,"color":"gray"}],[{"nbt":"time.thour","storage":"glarth:main","interpret":true,"color":"gray","italic":false},{"text":":"},{"nbt":"time.tminute","storage":"glarth:main","interpret":true,"color":"gray"}],{"translate":"item.minecraft.potion.effect.fire_resistance","color":"gray","italic":true}]}]

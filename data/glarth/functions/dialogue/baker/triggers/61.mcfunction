#61 Baker | Give Flour
function glarth:dialogue/baker/lines/trade2
clear @s scute 1
tag @e[tag=baker,type=armor_stand] add bread
tag @e[tag=baker,type=armor_stand] add a

# Delayed
scoreboard players operation hour Temp = hour Dis
scoreboard players operation minute Temp = minute Dis
scoreboard players add hour Temp 1
function glarth:dialogue/delayed
 execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"delayed_item","color":"gray","italic":true,"with":[[{"nbt":"time.hour","storage":"glarth:main","interpret":true,"color":"gray","italic":false},{"text":":"},{"nbt":"time.minute","storage":"glarth:main","interpret":true,"color":"gray"}],[{"nbt":"time.thour","storage":"glarth:main","interpret":true,"color":"gray","italic":false},{"text":":"},{"nbt":"time.tminute","storage":"glarth:main","interpret":true,"color":"gray"}],{"translate":"item.bread_fresh","color":"gray","italic":true}]}]

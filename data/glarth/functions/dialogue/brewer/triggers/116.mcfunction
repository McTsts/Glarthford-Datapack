#116 Brewer | Apple + Sugar to Energizing Potion
function glarth:dialogue/brewer/lines/trade4

clear @s apple 1 
clear @s sugar 1 

scoreboard players set @e[tag=brewer,type=armor_stand] action 1200
tag @e[tag=brewer,type=armor_stand] add a

# Delayed
scoreboard players operation hour Temp = hour Dis
scoreboard players operation minute Temp = minute Dis
scoreboard players add hour Temp 1
function glarth:dialogue/delayed
 execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"delayed_item","color":"gray","italic":true,"with":[[{"nbt":"time.hour","storage":"glarth:main","interpret":true,"color":"gray","italic":false},{"text":":"},{"nbt":"time.minute","storage":"glarth:main","interpret":true,"color":"gray"}],[{"nbt":"time.thour","storage":"glarth:main","interpret":true,"color":"gray","italic":false},{"text":":"},{"nbt":"time.tminute","storage":"glarth:main","interpret":true,"color":"gray"}],{"translate":"item.energizing_potion","color":"gray","italic":true}]}]

function glarth:dialogue/invalid
execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"invalid_item","color":"red","with":[{"entity":"@e[type=armor_stand,tag=charT,limit=1]","nbt":"CustomName","interpret":true}]}]
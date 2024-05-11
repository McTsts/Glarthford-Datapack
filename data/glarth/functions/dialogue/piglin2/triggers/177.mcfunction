#177 Piglin 2| Talk
function glarth:dialogue/piglin2/lines/trade4
execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"piglin2.a4"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 178"}}]
tag @e[type=armor_stand,tag=piglin2] add d
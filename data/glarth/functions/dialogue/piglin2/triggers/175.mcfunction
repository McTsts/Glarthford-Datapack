#175 Piglin 2| Talk
function glarth:dialogue/piglin2/lines/trade2
execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"piglin2.a2"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 176"}}]
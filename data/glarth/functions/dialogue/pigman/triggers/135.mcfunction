#135 Pigman | Ask Nether Coin
function glarth:dialogue/pigman/lines/trade2
execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"pigman.a1"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 63"}}]

#176 Piglin 2| Talk
function glarth:dialogue/piglin2/lines/trade3
tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"piglin2.a3"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 177"}}]
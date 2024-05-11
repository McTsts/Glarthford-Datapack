function glarth:dialogue/bowm/trades/bow
# Gold -> Arrow
tellraw @a[distance=..5] ["",{"text":"[","color":"green"},{"translate":"bowm.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 129"}},{"text":"] ","color":"green"},{"text":"[","color":"green"},{"translate":"bowm.a2b","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 130"}},{"text":"] ","color":"green"}]
function glarth:dialogue/bowm/trades/tbc
#59 Witch | Dialogue
function glarth:dialogue/witch/lines/trade3
tellraw @a[distance=..5] ["",{"text":"[","color":"green"},{"translate":"witch.a3.1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 60"}},{"text":"] ","color":"green"}]
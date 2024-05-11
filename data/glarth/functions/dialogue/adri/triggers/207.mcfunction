#207 Adri | Dialogue
function glarth:dialogue/adri/lines/gary1
tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"adri.gary.a2"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 208"}}]
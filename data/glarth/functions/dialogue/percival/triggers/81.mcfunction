#81 Percival | Dialogue
function glarth:dialogue/percival/lines/trade2
tag @e[tag=percival,type=armor_stand] add b
tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"percival.a4"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 82"}}]
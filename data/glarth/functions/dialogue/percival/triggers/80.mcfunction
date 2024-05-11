#80 Percival | Dialogue
function glarth:dialogue/percival/lines/trade1
tag @e[tag=percival,type=armor_stand] add a
tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"percival.a3"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 81"}}]
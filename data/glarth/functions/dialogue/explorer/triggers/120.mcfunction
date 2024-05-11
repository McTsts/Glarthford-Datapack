#120 Explorer | Ask Torch
function glarth:dialogue/explorer/lines/trade5
tag @e[tag=explorer,type=armor_stand] add d
tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"explorer.a6"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 121"}}]
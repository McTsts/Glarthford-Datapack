#204 McTsts | Dialogue
function glarth:dialogue/mctsts/lines/trade2
tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"mctsts.a3"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 205"}}]
tag @e[tag=mctsts,type=armor_stand] add b
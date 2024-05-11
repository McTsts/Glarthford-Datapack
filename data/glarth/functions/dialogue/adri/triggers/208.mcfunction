#208 Adri | Dialogue
function glarth:dialogue/adri/lines/gary2
tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"adri.gary.a3"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 209"}}]
tag @e[tag=adri,type=armor_stand] add c
tag @e[tag=adri,type=armor_stand] add d
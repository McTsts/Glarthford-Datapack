#5 Fisher | Dialogue
 function glarth:dialogue/fisher/lines/trade1
 tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"fisher.a2"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 126"}}]
 tag @e[tag=fisher,type=armor_stand] add a
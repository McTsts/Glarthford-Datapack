#136 Ent King | Dialogue
function glarth:dialogue/ent_king/lines/trade2
tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"ent_king.a3"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 137"}}]
tag @e[tag=ent_king,type=armor_stand] add c
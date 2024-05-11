#188 Carrot | Dialogue
function glarth:dialogue/carrot/lines/trade1
tag @e[tag=carrot,type=armor_stand] add a
tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"carrot.a2"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 189"}}]
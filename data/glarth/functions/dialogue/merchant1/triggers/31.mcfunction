#31 Merchant #1 | Dialogue
function glarth:dialogue/merchant1/lines/trade3
tag @e[tag=merchant1,type=armor_stand] add c
tellraw @a[distance=..5] ["",{"text":"[","color":"green"},{"translate":"merchant1.a2.2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 32"}},{"text":"] ","color":"green"}]
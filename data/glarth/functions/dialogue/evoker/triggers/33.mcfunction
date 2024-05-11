#33 Evoker | Dialogue
function glarth:dialogue/evoker/lines/trade1
tag @e[tag=evoker,type=armor_stand] add a
tellraw @a[distance=..5] ["",{"text":"[","color":"green"},{"translate":"evoker.a1.1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 34"}},{"text":"] ","color":"green"}]
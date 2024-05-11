#37 Priest | Dialogue
 function glarth:dialogue/priest/lines/trade2
 tag @e[tag=priest,type=armor_stand] add b
 tellraw @a[distance=..5] ["",{"text":"[","color":"green"},{"translate":"priest.a2.1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 38"}},{"text":"] ","color":"green"}]
#47 Blacksmith | Dialogue 
function glarth:dialogue/blacksmith/lines/trade4
tellraw @a[distance=..5] ["",{"text":"[","color":"green"},{"translate":"blacksmith.a4.1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 48"}},{"text":"] ","color":"green"}]
tag @e[tag=blacksmith,type=armor_stand] add d
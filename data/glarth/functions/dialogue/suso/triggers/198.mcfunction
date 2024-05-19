#198 Suso | Dialogue
function glarth:dialogue/suso/lines/trade3
tag @e[tag=suso,type=armor_stand] add c
clear @s salmon
function glarth:items/util/give {item:"trades.suso.2"} 
tellraw @a[distance=..5] ["",{"text":"[","color":"green"},{"translate":"suso.a4","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 199"}},{"text":"] ","color":"green"}]
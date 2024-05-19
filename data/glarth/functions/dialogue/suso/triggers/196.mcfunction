#196 Suso | Dialogue
function glarth:dialogue/suso/lines/trade1
tag @e[tag=suso,type=armor_stand] add a
clear @s cod
function glarth:items/util/give {item:"trades.suso.1"} 
tellraw @a[distance=..5] ["",{"text":"[","color":"green"},{"translate":"suso.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 197"}},{"text":"] ","color":"green"}]
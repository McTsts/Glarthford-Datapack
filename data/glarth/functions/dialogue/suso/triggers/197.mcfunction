#197 Suso | Eat Cod
function glarth:dialogue/suso/lines/trade2
tag @e[tag=suso,type=armor_stand] add b
clear @s cooked_cod
tellraw @a[distance=..5,scores={iSalmon=..0,iSalmonCooked=..0}] ["",{"translate":"trade2","with":[{"translate":"suso.a3"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 198"}}]
tellraw @a[distance=..5,scores={iSalmon=1..,iSalmonCooked=..0}] ["",{"translate":"trade2","with":[{"translate":"suso.a3"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 198"}}]
tellraw @a[distance=..5,scores={iSalmon=..0,iSalmonCooked=1..}] ["",{"translate":"trade2","with":[{"translate":"suso.a4"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 199"}}]
tellraw @a[distance=..5,scores={iSalmon=1..,iSalmonCooked=1..}] ["",{"translate":"trade2","with":[{"translate":"suso.a4"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 199"}}]
#121 Explorer | Amethyst to allow torch
function glarth:dialogue/explorer/lines/trade6
clear @s minecraft:diamond_hoe{Damage:239} 1 
tag @e[tag=explorer,type=armor_stand] add e
execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"explorer.a7"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 122"}}]
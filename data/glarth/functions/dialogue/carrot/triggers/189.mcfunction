#189 Carrot | Dialogue
function glarth:dialogue/carrot/lines/trade2
tag @e[tag=carrot,type=armor_stand] add b
execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"carrot.a3"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 190"}}]

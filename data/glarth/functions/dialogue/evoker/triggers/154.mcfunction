#154 Evoker | Dialogue
function glarth:dialogue/evoker/lines/trade4
execute as @e[tag=evoker] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"evoker.a4"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 155"}}]
tag @e[tag=evoker] add c
execute if entity @s[tag=!a] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"brewer.a2"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 114"}}]
execute if entity @s[tag=b] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"brewer.a6"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 117"}}]
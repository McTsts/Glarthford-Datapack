execute if entity @s[tag=!a] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"brewer.a3"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 115"}}]
execute if entity @s[tag=b] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"brewer.a7"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 117"}}]
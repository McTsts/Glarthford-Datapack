execute if entity @s[tag=!a] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"worker.a1"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 53"}}]
execute if entity @s[tag=!a] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"worker.a2"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 54"}}]
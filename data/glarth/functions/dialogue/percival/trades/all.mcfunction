execute if entity @s[tag=!a] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"percival.a2"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 80"}}]
execute if entity @s[tag=a,tag=!b] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"percival.a3"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 81"}}]
execute if entity @s[tag=b,tag=!c] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"percival.a4"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 82"}}]
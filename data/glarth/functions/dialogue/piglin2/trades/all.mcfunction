execute if entity @s[tag=!d] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"piglin2.a1"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 175"}}]
execute if entity @s[tag=d,tag=!e] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"piglin2.a4"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 178"}}]
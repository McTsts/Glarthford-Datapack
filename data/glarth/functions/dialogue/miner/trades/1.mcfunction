execute if entity @s[tag=!a] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"miner.a1"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 9"}}]
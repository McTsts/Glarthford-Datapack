execute if entity @s[tag=!a,tag=!b] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"sprite.a1"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 76"}}]
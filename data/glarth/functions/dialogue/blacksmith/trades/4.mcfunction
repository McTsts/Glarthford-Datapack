# Buy Furnace
execute if entity @s[tag=!h] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"blacksmith.a9"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 104"}}]
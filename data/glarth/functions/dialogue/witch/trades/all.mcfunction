execute if entity @s[tag=!b] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"witch.a2"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 23"}}]
execute if score combat Stats matches 0 if entity @s[tag=!e] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"witch.a4"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 140"}}]

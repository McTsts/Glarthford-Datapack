# Energizing Potion
execute if entity @s[tag=!a] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"brewer.a4"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 116"}}]
execute if entity @s[tag=b] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"brewer.a8"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 117"}}]

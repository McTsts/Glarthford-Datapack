# Show Wolf
execute if entity @s[tag=!a] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"adri.a1"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 158"}}]
# Give Wolf
execute if entity @s[tag=!b,tag=a] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"adri.a2"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 159"}}]
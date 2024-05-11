# Door Part 1
execute if entity @s[tag=!b] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"archaeologist.a2"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 44"}}]
# Door Part 2
execute if entity @s[tag=b,tag=!c,tag=!cave_wall] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"archaeologist.a3"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 45"}}]
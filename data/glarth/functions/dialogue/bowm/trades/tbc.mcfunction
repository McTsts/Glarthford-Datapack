# Train Bow
execute if score combat Stats matches 0 if entity @s[tag=!b] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"bowm.a3"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 131"}}]
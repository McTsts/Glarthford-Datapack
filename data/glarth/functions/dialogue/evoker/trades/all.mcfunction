execute if entity @s[tag=!a] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"evoker.a1"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 33"}}]
execute if entity @s[tag=a,tag=!b] run tellraw @a[distance=..5] ["",{"text":"[","color":"green"},{"translate":"evoker.a1.1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 34"}},{"text":"] ","color":"green"}]
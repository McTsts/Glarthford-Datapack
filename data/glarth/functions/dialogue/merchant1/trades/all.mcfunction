execute if entity @s[tag=!a] run tellraw @a[distance=..5] ["",{"text":"[","color":"green"},{"translate":"merchant1.a1","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 17"}},{"text":"] ","color":"green"},{"text":"[","color":"green"},{"translate":"merchant1.a1b","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 86"}},{"text":"] ","color":"green"}]
execute if entity @s[tag=!b] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"merchant1.a2"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 30"}}]
execute if entity @s[tag=b,tag=!c] run tellraw @a[distance=..5] ["",{"text":"[","color":"aqua"},{"translate":"merchant1.a2.1","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 31"}},{"text":"] ","color":"aqua"}]
execute if entity @s[tag=c,tag=!d] run tellraw @a[distance=..5] ["",{"text":"[","color":"green"},{"translate":"merchant1.a2.2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 32"}},{"text":"] ","color":"green"}]

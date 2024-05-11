# Key -> Open Shed
execute if entity @s[tag=!a] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"carrot.a1"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 188"}}]
execute if entity @s[tag=!b,tag=a] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"carrot.a2"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 189"}}]
execute if entity @s[tag=!c,tag=b] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"carrot.a3"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 190"}}]

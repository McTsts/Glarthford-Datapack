# Key -> Open Shed
execute if entity @s[tag=!a] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"akid.a1"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 105"}}]

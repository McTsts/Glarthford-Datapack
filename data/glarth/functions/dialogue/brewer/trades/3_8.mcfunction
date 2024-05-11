# Fire Resistance Potion
execute if entity @s[tag=!a] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"brewer.a1"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 14"}}]
execute if entity @s[tag=b,tag=!regenPotion] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"brewer.a5"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 117"}}]
execute if entity @s[tag=b,tag=regenPotion,tag=regenPotionDone] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"brewer.a5"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 117"}}]

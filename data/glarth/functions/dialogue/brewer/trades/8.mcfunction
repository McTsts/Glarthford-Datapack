# Regeneration Potion
execute if entity @s[tag=!a,tag=!regenPotionDone] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"brewer.a10"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 169"}}]
execute if entity @s[tag=b,tag=!regenPotionDone,tag=regenPotion] run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"brewer.a11"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 117"}}]

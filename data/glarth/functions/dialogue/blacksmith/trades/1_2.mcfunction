# Gem -> Mines
execute if entity @s[tag=!c] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"blacksmith.a3"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 42"}}] 
execute if entity @s[tag=!c] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5,scores={iSapphire=0,iRuby=1..}] ["",{"translate":"trade2","with":[{"translate":"blacksmith.a3b"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 42"}}] 
execute if entity @s[tag=!c] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5,scores={iSapphire=1..,iRuby=0}] ["",{"translate":"trade2","with":[{"translate":"blacksmith.a3b"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 42"}}] 
execute if entity @s[tag=!c] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5,scores={iSapphire=1..,iRuby=1..}] ["",{"translate":"trade2","with":[{"translate":"blacksmith.a3b"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 42"}}] 
# Ask About Mines
execute if entity @s[tag=!i,tag=!c] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"blacksmith.a10"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 133"}}]
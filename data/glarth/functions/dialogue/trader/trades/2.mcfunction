execute if entity @s[tag=!b] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"green"},{"translate":"trader.a2","color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 144"}},{"text":"]","color":"green"}]
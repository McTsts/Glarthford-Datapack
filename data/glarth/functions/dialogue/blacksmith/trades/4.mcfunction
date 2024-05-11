# Buy Furnace
execute if entity @s[tag=!h,tag=!gary] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"blacksmith.a9"}],"color":"green","clickEvent":{"action":"run_command","value":"/trigger trigger set 104"}}]
execute if entity @s[tag=gary] run function glarth:dialogue/blacksmith/trades/1_2
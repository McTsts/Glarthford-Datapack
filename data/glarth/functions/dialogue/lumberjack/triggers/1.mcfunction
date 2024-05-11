#1 Lumberjack | Dialogue
 function glarth:dialogue/lumberjack/lines/trade1
 execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"aqua"},{"translate":"lumberjack.a1.1","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 2"}},{"text":"] ","color":"aqua"}]
 execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"aqua"},{"translate":"lumberjack.a1.2","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 3"}},{"text":"] ","color":"aqua"}]
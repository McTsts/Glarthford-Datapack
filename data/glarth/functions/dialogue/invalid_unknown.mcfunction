function glarth:dialogue/invalid
execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"invalid_unknown","color":"red"}]
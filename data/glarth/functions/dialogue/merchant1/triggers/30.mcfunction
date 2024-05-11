#30 Merchant #1 | Dialogue
function glarth:dialogue/merchant1/lines/trade2
tag @e[tag=merchant1,type=armor_stand] add b
execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"text":"[","color":"aqua"},{"translate":"merchant1.a2.1","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 31"}},{"text":"] ","color":"aqua"}]
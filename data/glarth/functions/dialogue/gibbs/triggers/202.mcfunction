#202 Gibbs | Sapphire
function glarth:dialogue/gibbs/lines/sapphire2
clear @s minecraft:diamond_hoe[custom_model_data=503]
tag @e[tag=gibbs] add d
tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"gibbs.quickfast.sapphire.a2"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 203"}}]
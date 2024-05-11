#158 Adri | Show Dog
execute at @e[tag=adri,type=armor_stand] if entity @e[type=wolf,distance=..7] run function glarth:dialogue/adri/lines/trade1
execute at @e[tag=adri,type=armor_stand] if entity @e[type=wolf,distance=..7] run tag @e[tag=adri,type=armor_stand] add a
execute at @e[tag=adri,type=armor_stand] if entity @e[type=wolf,distance=..7] run execute unless score @s trigger = @s triggerPrev run tellraw @a[distance=..5] ["",{"translate":"trade2","with":[{"translate":"adri.a2"}],"color":"aqua","clickEvent":{"action":"run_command","value":"/trigger trigger set 159"}}]
execute at @e[tag=adri,type=armor_stand] unless entity @e[type=wolf,distance=..7] run function glarth:dialogue/adri/lines/trade2

# 161 Ender Guard | PCF to Upper Floor [A]
function glarth:dialogue/enderman_s1/lines/trade1
clear @s minecraft:shulker_shell 1
give @s minecraft:totem_of_undying 1
tag @e[tag=enderman_s1,type=armor_stand] add a
execute at @e[tag=enderman_s1] run particle minecraft:portal ~ ~ ~ 0.4 0.4 0.4 1 500
schedule function glarth:dialogue/enderman_s1/triggers/166b 41t
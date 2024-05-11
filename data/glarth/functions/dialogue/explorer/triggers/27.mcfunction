#27 Explorer | Torch to Iron Boots
execute unless score quest Stats matches 3 unless score quest Stats matches 8 run function glarth:dialogue/explorer/lines/trade1
execute if score quest Stats matches 3 run function glarth:dialogue/explorer/lines/trade9
execute if score quest Stats matches 8 run function glarth:dialogue/explorer/lines/trade9
clear @s torch 1 
execute unless score quest Stats matches 3 unless score quest Stats matches 8 run give @s iron_boots 1
execute if score quest Stats matches 3 run give @s golden_boots 1
execute if score quest Stats matches 8 run give @s golden_boots 1
tag @e[tag=explorer,type=armor_stand] add a
tag @e[tag=explorer,type=armor_stand] add charTorch
item replace entity @e[tag=explorer,type=armor_stand] armor.head with diamond_hoe{Damage:111}
execute if score quest Stats matches 1..2 run setblock 92 32 -174 minecraft:lantern[hanging=false]
execute if score quest Stats matches 3 run setblock -219 26 -198 minecraft:lantern[hanging=false]
execute if score quest Stats matches 4 run setblock -65 82 -533 minecraft:lantern[hanging=false]
execute if score quest Stats matches 5 run setblock -3 20 -105 minecraft:lantern[hanging=false]
execute if score quest Stats matches 8 run setblock -219 26 -198 minecraft:lantern[hanging=false]
#126 Fisher | Beer to Fishing Rod
 execute if score realms Stats matches 0 run function glarth:dialogue/fisher/lines/trade2
 execute if score realms Stats matches 1 run function glarth:dialogue/fisher/lines/trade2_realms
 clear @s potion{custom:"beer"} 1
 give @s minecraft:fishing_rod{Damage:7,Enchantments:[{id:"lure",lvl:5}]} 1
 execute as @e[tag=fr] run data merge entity @s {DeathTime:19,Health:0.0f}
 item replace entity @e[tag=fisher] armor.head with diamond_hoe{Damage:8}
 tag @e[tag=fisher,type=armor_stand] add b
scoreboard players set isPickaxe tbcStats 0
scoreboard players set isShovel tbcStats 0
execute if score @p[tag=tbcTurn] tbcAttack matches 1 if score attackType tbcStats matches 2 run scoreboard players set isPickaxe tbcStats 1
execute if score @p[tag=tbcTurn] tbcAttack matches 1 if score attackType tbcStats matches 5 run scoreboard players set isPickaxe tbcStats 1
execute if score @p[tag=tbcTurn] tbcAttack matches 1 if score attackType tbcStats matches 18 run scoreboard players set isPickaxe tbcStats 1
execute if score @p[tag=tbcTurn] tbcAttack matches 1 if score attackType tbcStats matches 3 run scoreboard players set isShovel tbcStats 1
execute if score @p[tag=tbcTurn] tbcAttack matches 1 if score attackType tbcStats matches 13 run scoreboard players set isShovel tbcStats 1
execute if score @p[tag=tbcTurn] tbcAttack matches 1 if score attackType tbcStats matches 14 run scoreboard players set isShovel tbcStats 1
execute if entity @s[tag=!tbcShovelBlock] if score isPickaxe tbcStats matches 1 run function glarth:combat/action/util/deal_damage
execute if entity @s[tag=!tbcShovelBlock] if score isPickaxe tbcStats matches 0 run scoreboard players set dodged tbcStats 2
execute if entity @s[tag=tbcShovelBlock] if score isPickaxe tbcStats matches 1 run function glarth:combat/action/util/deal_damage
execute if entity @s[tag=tbcShovelBlock] if score isPickaxe tbcStats matches 0 if score isShovel tbcStats matches 1 run scoreboard players set damage tbcStats 30
execute if entity @s[tag=tbcShovelBlock] if score isPickaxe tbcStats matches 0 if score isShovel tbcStats matches 1 run function glarth:combat/action/util/deal_damage
execute if entity @s[tag=tbcShovelBlock] if score isPickaxe tbcStats matches 0 if score isShovel tbcStats matches 0 run scoreboard players set dodged tbcStats 5
scoreboard players set @s blocking 1

execute unless score @s failedBlock matches 1 run item replace entity @s hotbar.0 with iron_ingot
execute unless score @s failedBlock matches 1 run item replace entity @s hotbar.1 with iron_ingot
execute unless score @s failedBlock matches 1 run item replace entity @s hotbar.2 with iron_ingot
execute unless score @s failedBlock matches 1 run item replace entity @s hotbar.3 with iron_ingot
execute unless score @s failedBlock matches 1 run item replace entity @s hotbar.4 with iron_ingot
execute unless score @s failedBlock matches 1 run item replace entity @s hotbar.5 with iron_ingot
execute unless score @s failedBlock matches 1 run item replace entity @s hotbar.6 with iron_ingot
execute unless score @s failedBlock matches 1 run item replace entity @s hotbar.7 with iron_ingot
execute unless score @s failedBlock matches 1 run item replace entity @s hotbar.8 with iron_ingot

execute at @s run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 2 0.1
execute at @s run playsound minecraft:item.armor.equip_iron player @s ~ ~ ~ 2 1 0.1
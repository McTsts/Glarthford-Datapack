scoreboard players set @s crossbowfix 0
execute store result score bow Temp run clear @s crossbow[custom_data={bow:"crossbow"}] 0
scoreboard players operation @s crossbowfix += bow Temp
execute store result score bow Temp run clear @s crossbow[custom_data={bow:"crossbow_multi"}] 0
scoreboard players operation @s crossbowfix += bow Temp
execute store result score bow Temp run clear @s crossbow 0
scoreboard players operation @s crossbowfix -= bow Temp

execute unless score @s crossbowfix matches 0 run clear @s crossbow
execute unless score @s crossbowfix matches 0 run give @s minecraft:crossbow[custom_data={bow:"crossbow"}] 1

scoreboard players set @s crossbowfix 0
execute store result score bow Temp run clear @s bow[custom_data={bow:"default"}] 0
scoreboard players operation @s crossbowfix += bow Temp
execute store result score bow Temp run clear @s bow[custom_data={bow:"dockmaster"}] 0
scoreboard players operation @s crossbowfix += bow Temp
execute store result score bow Temp run clear @s bow 0
scoreboard players operation @s crossbowfix -= bow Temp

execute unless score @s crossbowfix matches 0 run clear @s bow
execute unless score @s crossbowfix matches 0 run give @s brown_dye 1
loot replace entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet",components:{"minecraft:custom_model_data":2}}]}] loot glarth:give/dog_skull_helmet
scoreboard players set slot Temp -1
execute store success score success Temp run data get entity @s Inventory[{id:"minecraft:diamond_hoe",tag:{CustomModelData:471}}].Slot
execute if score success Temp matches 1 store result score slot Temp run data get entity @s Inventory[{id:"minecraft:diamond_hoe",tag:{CustomModelData:471}}].Slot
execute if score slot Temp matches 0..35 run give @s minecraft:command_block_minecart[custom_name='""'] 36
execute if score slot Temp matches 0..35 run clear @s diamond_hoe[custom_model_data=471]
execute if score slot Temp matches 0..35 run loot give @s loot glarth:give/dog_skull_helmet
execute if score slot Temp matches 0..35 run clear @s minecraft:command_block_minecart
execute if score slot Temp matches 0..35 at @s run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:command_block_minecart"}}]
execute if score slot Temp matches 0..35 run stopsound @s * minecraft:entity.item.pickup
scoreboard players set slot Temp -1
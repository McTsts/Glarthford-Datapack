item replace entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet",components:{"minecraft:custom_model_data":1}}]}] armor.head with minecraft:diamond_hoe[custom_model_data=275,custom_name='{"italic":"false","translate":"item.vindicator_skull"}',hide_additional_tooltip={},custom_data={custom:"vindicator_skull"}]
scoreboard players set slot Temp -1
execute store success score success Temp run data get entity @s Inventory[{id:"minecraft:diamond_hoe",tag:{CustomModelData:275}}].Slot
execute if score success Temp matches 1 store result score slot Temp run data get entity @s Inventory[{id:"minecraft:diamond_hoe",tag:{CustomModelData:275}}].Slot
execute if score slot Temp matches 0..35 run give @s minecraft:command_block_minecart[custom_name='""'] 36
execute if score slot Temp matches 0..35 run clear @s diamond_hoe[custom_model_data=275]
execute if score slot Temp matches 0..35 run give @s minecraft:golden_helmet[custom_model_data=1,custom_name='{"italic":"false","translate":"item.vindicator_skull"}',hide_additional_tooltip={},custom_data={custom:"vindicator_skull"}]
execute if score slot Temp matches 0..35 run clear @s minecraft:command_block_minecart
execute if score slot Temp matches 0..35 at @s run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:command_block_minecart"}}]
execute if score slot Temp matches 0..35 run stopsound @s * minecraft:entity.item.pickup
scoreboard players set slot Temp -1
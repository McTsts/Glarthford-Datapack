item replace entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet",components:{"minecraft:custom_model_data":2}}]}] armor.head with minecraft:diamond_hoe[custom_model_data=471,custom_name='{"translate":"item.dog_skull","italic":false}',hide_additional_tooltip={},custom_data={isDogSkull:1}]
scoreboard players set slot Temp -1
execute store success score success Temp run data get entity @s Inventory[{id:"minecraft:diamond_hoe",tag:{CustomModelData:471}}].Slot
execute if score success Temp matches 1 store result score slot Temp run data get entity @s Inventory[{id:"minecraft:diamond_hoe",tag:{CustomModelData:471}}].Slot
execute if score slot Temp matches 0..35 run give @s minecraft:command_block_minecart[custom_name='""'] 36
execute if score slot Temp matches 0..35 run clear @s diamond_hoe[custom_model_data=471]
execute if score slot Temp matches 0..35 run give @s minecraft:golden_helmet[custom_model_data=2,custom_name='{"translate":"item.dog_skull","italic":false}',hide_additional_tooltip={},custom_data={isDogSkull:1}]
execute if score slot Temp matches 0..35 run clear @s minecraft:command_block_minecart
execute if score slot Temp matches 0..35 at @s run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:command_block_minecart"}}]
execute if score slot Temp matches 0..35 run stopsound @s * minecraft:entity.item.pickup
scoreboard players set slot Temp -1
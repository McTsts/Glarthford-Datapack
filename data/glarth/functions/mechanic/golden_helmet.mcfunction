item replace entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet",components:{"minecraft:custom_model_data":0}}]}] armor.head with minecraft:diamond_hoe[custom_model_data=481,custom_name='{"translate":"item.minecraft.golden_helmet","italic":false}',attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.armor",amount:2,name:"generic.armor",uuid:[I;-1,-775420,-1,-2668481]}],show_in_tooltip:0b},hide_additional_tooltip={}]
scoreboard players set slot Temp -1
execute store success score success Temp run data get entity @s Inventory[{id:"minecraft:diamond_hoe",tag:{CustomModelData:481}}].Slot
execute if score success Temp matches 1 store result score slot Temp run data get entity @s Inventory[{id:"minecraft:diamond_hoe",tag:{CustomModelData:481}}].Slot
execute if score slot Temp matches 0..35 run give @s minecraft:command_block_minecart[custom_name='""'] 36
execute if score slot Temp matches 0..35 run clear @s diamond_hoe[custom_model_data=481]
execute if score slot Temp matches 0..35 run give @s minecraft:golden_helmet[custom_model_data=0,custom_name='{"translate":"item.minecraft.golden_helmet","italic":false}',hide_additional_tooltip={}]
execute if score slot Temp matches 0..35 run clear @s minecraft:command_block_minecart
execute if score slot Temp matches 0..35 at @s run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:command_block_minecart"}}]
execute if score slot Temp matches 0..35 run stopsound @s * minecraft:entity.item.pickup
scoreboard players set slot Temp -1
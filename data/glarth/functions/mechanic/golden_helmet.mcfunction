item replace entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet",tag:{CustomModelData:0}}]}] armor.head with diamond_hoe{CustomModelData:481,HideFlags:63,display:{Name: '{"translate":"item.minecraft.golden_helmet","italic":false}'},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-1,-775420,-1,-2668481]}]}
scoreboard players set slot Temp -1
execute store success score success Temp run data get entity @s Inventory[{id:"minecraft:diamond_hoe",tag:{CustomModelData:481}}].Slot
execute if score success Temp matches 1 store result score slot Temp run data get entity @s Inventory[{id:"minecraft:diamond_hoe",tag:{CustomModelData:481}}].Slot
execute if score slot Temp matches 0..35 run give @s minecraft:command_block_minecart{display:{Name:'""'}} 36
execute if score slot Temp matches 0..35 run clear @s diamond_hoe{CustomModelData:481}
execute if score slot Temp matches 0..35 run give @s golden_helmet{CustomModelData:0,HideFlags:63,display:{Name:'{"translate":"item.minecraft.golden_helmet","italic":false}'}}
execute if score slot Temp matches 0..35 run clear @s minecraft:command_block_minecart
execute if score slot Temp matches 0..35 at @s run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:command_block_minecart"}}]
execute if score slot Temp matches 0..35 run stopsound @s * minecraft:entity.item.pickup
scoreboard players set slot Temp -1
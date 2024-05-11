item replace entity @s[nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet",tag:{CustomModelData:2}}]}] armor.head with diamond_hoe{CustomModelData:471,HideFlags:63,isDogSkull:1,display:{Name: '{"translate":"item.dog_skull","italic":false}'}}
scoreboard players set slot Temp -1
execute store success score success Temp run data get entity @s Inventory[{id:"minecraft:diamond_hoe",tag:{CustomModelData:471}}].Slot
execute if score success Temp matches 1 store result score slot Temp run data get entity @s Inventory[{id:"minecraft:diamond_hoe",tag:{CustomModelData:471}}].Slot
execute if score slot Temp matches 0..35 run give @s minecraft:command_block_minecart{display:{Name:'""'}} 36
execute if score slot Temp matches 0..35 run clear @s diamond_hoe{CustomModelData:471}
execute if score slot Temp matches 0..35 run give @s golden_helmet{CustomModelData:2,HideFlags:63,isDogSkull:1,display:{Name:'{"translate":"item.dog_skull","italic":false}'}}
execute if score slot Temp matches 0..35 run clear @s minecraft:command_block_minecart
execute if score slot Temp matches 0..35 at @s run kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:command_block_minecart"}}]
execute if score slot Temp matches 0..35 run stopsound @s * minecraft:entity.item.pickup
scoreboard players set slot Temp -1
data modify block 84 26 -121 Items[0].components.minecraft:lore set from entity @s Inventory[-3].components.minecraft:lore
data modify block 84 26 -121 Items[0].components.minecraft:custom_name set from entity @s Inventory[-3].components.minecraft:custom_name
data modify block 84 26 -121 Items[0].components.minecraft:item_name set from entity @s Inventory[-3].components.minecraft:item_name
data modify block 84 26 -121 Items[0].components.minecraft:dyed_color set from entity @s Inventory[-3].components.minecraft:dyed_color
execute store result score slot Temp run data get entity @s Inventory[-3].Slot
data modify block 84 26 -121 Items[0].Slot set value 0
execute if score slot Temp matches 0..3 run function glarth:combat/menu/util/put/0_3
execute if score slot Temp matches 4..8 run function glarth:combat/menu/util/put/4_8
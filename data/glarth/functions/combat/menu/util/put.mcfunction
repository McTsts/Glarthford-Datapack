data modify block 84 26 -121 Items[0].tag.display set from entity @s Inventory[-3].tag.display
execute store result score slot Temp run data get entity @s Inventory[-3].Slot
data modify block 84 26 -121 Items[0].Slot set value 0
execute if score slot Temp matches 0..3 run function glarth:combat/menu/util/put/0_3
execute if score slot Temp matches 4..8 run function glarth:combat/menu/util/put/4_8
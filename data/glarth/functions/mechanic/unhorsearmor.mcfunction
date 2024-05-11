data modify block 84 26 -121 Items set value []
data modify block 84 26 -121 Items append from entity @s ArmorItem
item replace entity @s horse.armor with air
item replace entity @s armor.chest with air
data modify entity @s ArmorItem
data modify entity @s ArmorItems set value [{},{},{},{}]
loot spawn ~ ~1 ~ mine 84 26 -121
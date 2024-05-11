setblock -53 20 -194 diorite_slab[type=top]
execute positioned -53 20 -194 if entity @p[distance=..10,gamemode=adventure] run setblock -53 20 -194 minecraft:diorite
execute positioned -53 29 -194 if entity @p[distance=..10,gamemode=adventure] run setblock -53 20 -194 minecraft:diorite
execute positioned -53 37 -194 if entity @p[distance=..10,gamemode=adventure] run setblock -53 20 -194 minecraft:diorite

# Ensure Ship Exists
execute unless block -2 31 -132 light_gray_wool run clone -19 16 -163 -38 1 -169 -15 24 -135
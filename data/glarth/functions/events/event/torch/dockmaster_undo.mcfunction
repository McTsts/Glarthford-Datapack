item replace entity @e[tag=dockmaster] armor.head with minecraft:diamond_hoe[damage=65]
data modify entity @e[tag=dockmaster,limit=1] ArmorItems[0] set from entity @e[tag=dockmaster,limit=1] ArmorItems[3]
tag @e[tag=dockmaster] remove charTorch
setblock -67 29 -170 minecraft:air
tag @e[tag=events,type=area_effect_cloud] remove evDockmasterTorch
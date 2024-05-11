replaceitem entity @e[tag=dockmaster] armor.head diamond_hoe{Damage:174}
data modify entity @e[tag=dockmaster,limit=1] ArmorItems[0] set from entity @e[tag=dockmaster,limit=1] ArmorItems[3]
tag @e[tag=dockmaster] add charTorch
setblock -73 39 -181 minecraft:lantern[hanging=false]
tag @e[tag=events,type=area_effect_cloud] add evDockmasterTorch
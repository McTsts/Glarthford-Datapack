item replace entity @e[tag=apple] armor.head with minecraft:diamond_hoe[damage=173]
data modify entity @e[tag=apple,limit=1] ArmorItems[0] set from entity @e[tag=apple,limit=1] ArmorItems[3]
tag @e[tag=apple] add charTorch
setblock -6 27 -269 minecraft:lantern[hanging=false]
tag @e[tag=events,type=area_effect_cloud] add evAppleLoverTorch
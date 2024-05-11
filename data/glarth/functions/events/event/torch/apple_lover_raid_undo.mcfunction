replaceitem entity @e[tag=apple] armor.head diamond_hoe{Damage:13}
data modify entity @e[tag=apple,limit=1] ArmorItems[0] set from entity @e[tag=apple,limit=1] ArmorItems[3]
tag @e[tag=apple] remove charTorch
setblock 11 27 -204 minecraft:air
tag @e[tag=events,type=area_effect_cloud] remove evAppleLoverTorch
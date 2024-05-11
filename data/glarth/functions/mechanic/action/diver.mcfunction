scoreboard players add @e[tag=diver] diver 1

data merge entity @e[tag=diver,scores={diver=1},limit=1] {ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":262,"minecraft:unbreakable":{}}}]}
data merge entity @e[tag=diver,scores={diver=6},limit=1] {ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":51,"minecraft:unbreakable":{}}}]}
data merge entity @e[tag=diver,scores={diver=11},limit=1] {ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":263,"minecraft:unbreakable":{}}}]}
scoreboard players set @e[tag=diver,scores={diver=16..}] diver 0
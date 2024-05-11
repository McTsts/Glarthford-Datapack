scoreboard players add @e[tag=diver] diver 1

data merge entity @e[tag=diver,scores={diver=1},limit=1] {ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:262,Unbreakable:1}}]}
data merge entity @e[tag=diver,scores={diver=6},limit=1] {ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:51,Unbreakable:1}}]}
data merge entity @e[tag=diver,scores={diver=11},limit=1] {ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:263,Unbreakable:1}}]}
scoreboard players set @e[tag=diver,scores={diver=16..}] diver 0
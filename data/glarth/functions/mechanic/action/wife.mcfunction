scoreboard players add @e[tag=wife2] wife 1
scoreboard players add @e[tag=wife2] wife2 1
execute as @e[tag=wife2,scores={wife=1}] at @s run tp @s 7 26 -212 0 0
execute as @e[tag=wife2,scores={wife=2..101}] at @s run tp @s ~ ~ ~0.1
execute as @e[tag=wife2,scores={wife=102..146}] at @s run tp @s ~ ~ ~ ~4 ~
execute as @e[tag=wife2,scores={wife=147..246}] at @s run tp @s ~ ~ ~-0.1 ~ ~
execute as @e[tag=wife2,scores={wife=247..292}] at @s run tp @s ~ ~ ~ ~4 ~
scoreboard players set @e[tag=wife2,scores={wife=293..}] wife 0

data merge entity @e[tag=wife2,scores={wife2=1},limit=1] {ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:107,Unbreakable:1}}]}
data merge entity @e[tag=wife2,scores={wife2=6},limit=1] {ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:33,Unbreakable:1}}]}
data merge entity @e[tag=wife2,scores={wife2=11},limit=1] {ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:108,Unbreakable:1}}]}
scoreboard players set @e[tag=wife2,scores={wife2=16..}] wife2 0
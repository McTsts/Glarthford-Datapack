scoreboard players remove @e[tag=wife2] wife 1
scoreboard players remove @e[tag=wife2] wife2 1
execute as @e[tag=wife2,scores={wife=1}] at @s run tp @s 7 26 -212 0 0
execute as @e[tag=wife2,scores={wife=2..101}] at @s run tp @s ~ ~ ~-0.1
execute as @e[tag=wife2,scores={wife=102..146}] at @s run tp @s ~ ~ ~ ~-4 ~
execute as @e[tag=wife2,scores={wife=147..246}] at @s run tp @s ~ ~ ~0.1 ~ ~
execute as @e[tag=wife2,scores={wife=247..292}] at @s run tp @s ~ ~ ~ ~-4 ~
scoreboard players set @e[tag=wife2,scores={wife=..1}] wife 294

data merge entity @e[tag=wife2,scores={wife2=1},limit=1] {ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":107,"minecraft:unbreakable":{}}}]}
data merge entity @e[tag=wife2,scores={wife2=6},limit=1] {ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":33,"minecraft:unbreakable":{}}}]}
data merge entity @e[tag=wife2,scores={wife2=11},limit=1] {ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":108,"minecraft:unbreakable":{}}}]}
scoreboard players set @e[tag=wife2,scores={wife2=..1}] wife2 17
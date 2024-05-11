summon armor_stand 63 26 -221 {Tags:["sapling"]}
summon armor_stand 50 26 -247 {Tags:["sapling"]}
execute as @e[tag=sapling] at @s run spreadplayers ~ ~ 10 20 false @e[tag=sapling]
execute as @e[tag=sapling] at @s run summon item ~ 27 ~ {Tags:["sapling_item"],Item:{id:"minecraft:spruce_sapling",count:1},Age:-32768,Thrower:[I;0,0,0,0]}
kill @e[tag=sapling]
summon armor_stand 63 26 -221 {Tags:["sapling"]}
summon armor_stand 50 26 -247 {Tags:["sapling"]}
execute @e[tag=sapling] ~ ~ ~ spreadplayers ~ ~ 10 20 false @e[tag=sapling]
execute @e[tag=sapling] ~ ~ ~ summon item ~ 27 ~ {Tags:["sapling_item"],Item:{id:"minecraft:sapling",Damage:1,Count:1b}}
kill @e[tag=sapling]
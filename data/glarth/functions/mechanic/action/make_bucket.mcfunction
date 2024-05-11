execute if score @s action matches ..99 if entity @e[tag=mbPlank1] run kill @e[tag=mbPlank1]
execute if score @s action matches 100..1170 unless entity @e[tag=mbPlank1] run summon minecraft:armor_stand 3.5 26.3 -200.5 {ArmorItems:[{},{},{},{id:"spruce_planks",count:1}],Marker:1,Tags:["mbPlank","mbPlank1"],NoGravity:1,Invisible:1,Small:1}

execute if score @s action matches ..199 if entity @e[tag=mbPlank2] run kill @e[tag=mbPlank2]
execute if score @s action matches 200..1170 unless entity @e[tag=mbPlank2] run summon minecraft:armor_stand 3.2 26.3 -200.5 {ArmorItems:[{},{},{},{id:"spruce_planks",count:1}],Marker:1,Tags:["mbPlank","mbPlank2"],NoGravity:1,Invisible:1,Small:1}

execute if score @s action matches ..299 if entity @e[tag=mbPlank3] run kill @e[tag=mbPlank3]
execute if score @s action matches 300..1170 unless entity @e[tag=mbPlank3] run summon minecraft:armor_stand 3.8 26.3 -200.5 {ArmorItems:[{},{},{},{id:"spruce_planks",count:1}],Marker:1,Tags:["mbPlank","mbPlank3"],NoGravity:1,Invisible:1,Small:1}

execute if score @s action matches ..399 if entity @e[tag=mbPlank4] run kill @e[tag=mbPlank4]
execute if score @s action matches 400..1170 unless entity @e[tag=mbPlank4] run summon minecraft:armor_stand 3.5 26.3 -200.8 {ArmorItems:[{},{},{},{id:"spruce_planks",count:1}],Marker:1,Tags:["mbPlank","mbPlank4"],NoGravity:1,Invisible:1,Small:1}

execute if score @s action matches ..499 if entity @e[tag=mbPlank5] run kill @e[tag=mbPlank5]
execute if score @s action matches 500..1170 unless entity @e[tag=mbPlank5] run summon minecraft:armor_stand 3.5 26.3 -200.2 {ArmorItems:[{},{},{},{id:"spruce_planks",count:1}],Marker:1,Tags:["mbPlank","mbPlank5"],NoGravity:1,Invisible:1,Small:1}

execute if score @s action matches 501..700 as @e[tag=mbPlank] at @s run tp @s ~ ~ ~ ~1 ~
execute if score @s action matches 701..900 as @e[tag=mbPlank] at @s run tp @s ~ ~ ~ ~5 ~
execute if score @s action matches 901..1100 as @e[tag=mbPlank] at @s run tp @s ~ ~ ~ ~10 ~
execute if score @s action matches 1101..1150 as @e[tag=mbPlank] at @s run particle minecraft:block{block_state:{Name:"spruce_planks"}} ~ ~1 ~ 0.2 0.2 0.2 0 5

execute if score @s action matches 1171.. run kill @e[tag=mbPlank] 
execute if score @s action matches ..1170 if entity @e[tag=mbBucket] run kill @e[tag=mbBucket]
execute if score @s action matches 1171.. unless entity @e[tag=mbBucket] run summon minecraft:armor_stand 3.5 25.6 -200.5 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":118}}],Marker:1,Tags:["mbBucket"],NoGravity:1,Invisible:1}
execute if score @s action matches 1200.. run tag @s add b
execute if score @s action matches ..1199 run tag @s remove b

execute if score @s action matches 1..1200 run scoreboard players set r Random 100
execute if score @s action matches 1..1200 run function glarth:util/random
execute if score @s action matches 1..1200 if score n Random matches 1 at @s run playsound minecraft:block.wood.break neutral @a ~ ~ ~ 1 0
execute if score @s action matches 1..1200 if score n Random matches 2 at @s run playsound minecraft:block.wood.break neutral @a ~ ~ ~ 1 1
execute if score @s action matches 1..1200 if score n Random matches 3 at @s run playsound minecraft:block.wood.break neutral @a ~ ~ ~ 1 2
execute if score @s action matches 1..1200 if score n Random matches 4 at @s run playsound minecraft:block.wood.fall neutral @a ~ ~ ~ 1 0
execute if score @s action matches 1..1200 if score n Random matches 5 at @s run playsound minecraft:block.wood.fall neutral @a ~ ~ ~ 1 1
execute if score @s action matches 1..1200 if score n Random matches 6 at @s run playsound minecraft:block.wood.fall neutral @a ~ ~ ~ 1 2
execute if score @s action matches 1..1200 if score n Random matches 7 at @s run playsound minecraft:block.wood.place neutral @a ~ ~ ~ 1 0
execute if score @s action matches 1..1200 if score n Random matches 8 at @s run playsound minecraft:block.wood.place neutral @a ~ ~ ~ 1 1
execute if score @s action matches 1..1200 if score n Random matches 9 at @s run playsound minecraft:block.wood.place neutral @a ~ ~ ~ 1 2
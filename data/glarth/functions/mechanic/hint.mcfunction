tellraw @a[x=-13,y=27,z=-136,distance=..5,gamemode=!creative,tag=!hint1] ["",{"translate":"hint.dive","color":"gold","italic":true}]
execute as @a[x=-13,y=27,z=-136,distance=..5,gamemode=!creative,tag=!hint1] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
tag @a[x=-13,y=27,z=-136,distance=..5,gamemode=!creative,tag=!hint1] add hint1

tellraw @a[x=-13,y=26,z=-176,distance=..5,gamemode=!creative,tag=!hint2] ["",{"translate":"hint.grave","color":"gold","italic":true}]
execute as @a[x=-13,y=26,z=-176,distance=..5,gamemode=!creative,tag=!hint2] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
tag @a[x=-13,y=26,z=-176,distance=..5,gamemode=!creative,tag=!hint2] add hint2

tellraw @a[x=-81,y=27,z=-209,distance=..5,gamemode=!creative,tag=!hint3] ["",{"translate":"hint.graves","color":"gold","italic":true}]
execute as @a[x=-81,y=27,z=-209,distance=..5,gamemode=!creative,tag=!hint3] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
tag @a[x=-81,y=27,z=-209,distance=..5,gamemode=!creative,tag=!hint3] add hint3

execute unless score quest Stats matches 1 run tag @a add hint4
tellraw @a[x=98,y=32,z=-170,distance=..5,gamemode=!creative,tag=!hint4] ["",{"translate":"hint.mine","color":"gold","italic":true}]
execute as @a[x=98,y=32,z=-170,distance=..5,gamemode=!creative,tag=!hint4] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
tag @a[x=98,y=32,z=-170,distance=..5,gamemode=!creative,tag=!hint4] add hint4

tellraw @a[x=-3,y=19,z=-127,distance=..5,gamemode=!creative,tag=!hint5] ["",{"translate":"hint.equipment","color":"gold","italic":true}]
execute as @a[x=-3,y=19,z=-127,distance=..5,gamemode=!creative,tag=!hint5] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
tag @a[x=-3,y=19,z=-127,distance=..5,gamemode=!creative,tag=!hint5] add hint5
execute unless entity @e[tag=c,tag=witch,type=armor_stand,tag=char] run tellraw @a[x=-3,y=19,z=-127,distance=..5,gamemode=!creative,tag=!hint12,scores={iCHelmet=1..}] ["",{"translate":"hint.equipment2","color":"gold","italic":true}]
execute unless entity @e[tag=c,tag=witch,type=armor_stand,tag=char] as @a[x=-3,y=19,z=-127,distance=..5,gamemode=!creative,tag=!hint12,scores={iCHelmet=1..}] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
execute unless entity @e[tag=c,tag=witch,type=armor_stand,tag=char] run tag @a[x=-3,y=19,z=-127,distance=..5,gamemode=!creative,tag=!hint12,scores={iCHelmet=1..}] add hint12

tellraw @a[x=-8,y=46,z=-83,distance=..5,gamemode=!creative,tag=!hint5b] ["",{"translate":"hint.equipment","color":"gold","italic":true}]
execute as @a[x=-8,y=46,z=-83,distance=..5,gamemode=!creative,tag=!hint5b] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
tag @a[x=-8,y=46,z=-83,distance=..5,gamemode=!creative,tag=!hint5b] add hint5b
execute unless entity @e[tag=c,tag=witch,type=armor_stand,tag=char] run tellraw @a[x=-8,y=46,z=-83,distance=..5,gamemode=!creative,tag=!hint12b,scores={iCHelmet=1..}] ["",{"translate":"hint.equipment2","color":"gold","italic":true}]
execute unless entity @e[tag=c,tag=witch,type=armor_stand,tag=char] as @a[x=-8,y=46,z=-83,distance=..5,gamemode=!creative,tag=!hint12b,scores={iCHelmet=1..}] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
execute unless entity @e[tag=c,tag=witch,type=armor_stand,tag=char] run tag @a[x=-8,y=46,z=-83,distance=..5,gamemode=!creative,tag=!hint12b,scores={iCHelmet=1..}] add hint12b

execute unless entity @e[tag=blacksmith,type=armor_stand,tag=c] if score quest Stats matches 1..2 run tellraw @a[x=64,y=26,z=-194,distance=..7,gamemode=!creative,tag=!hint6] ["",{"translate":"hint.cant","color":"gold","italic":true}]
execute unless entity @e[tag=blacksmith,type=armor_stand,tag=c] if score quest Stats matches 1..2 as @a[x=64,y=26,z=-194,distance=..7,gamemode=!creative,tag=!hint6] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
execute unless entity @e[tag=blacksmith,type=armor_stand,tag=c] if score quest Stats matches 1..2 run tag @a[x=64,y=26,z=-194,distance=..7,gamemode=!creative,tag=!hint6] add hint6
execute unless entity @e[tag=blacksmith,type=armor_stand,tag=c] if score quest Stats matches 1..2 run tag @a[x=64,y=26,z=-194,distance=30..,gamemode=!creative,tag=hint6] remove hint6

tellraw @a[x=3,y=28,z=-326,distance=..5,gamemode=!creative,tag=!hint7] ["",{"translate":"hint.blocks","color":"gold","italic":true}]
execute as @a[x=3,y=28,z=-326,distance=..5,gamemode=!creative,tag=!hint7] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
tag @a[x=3,y=28,z=-326,distance=..5,gamemode=!creative,tag=!hint7] add hint7

tellraw @a[x=87,y=28,z=-223,distance=..5,gamemode=!creative,tag=!hint9] ["",{"translate":"hint.ascension_key","color":"gold","italic":true}]
execute as @a[x=87,y=28,z=-223,distance=..5,gamemode=!creative,tag=!hint9] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
tag @a[x=87,y=28,z=-223,distance=..5,gamemode=!creative,tag=!hint9] add hint9

execute if entity @e[tag=bHS1] run tellraw @a[x=40,y=27,z=-164,distance=..4,gamemode=!creative,tag=!hint10] ["",{"translate":"hint.bee","color":"gold","italic":true}]
execute if entity @e[tag=bHS2] run tellraw @a[x=-14,y=28,z=-257,distance=..4,gamemode=!creative,tag=!hint10] ["",{"translate":"hint.bee","color":"gold","italic":true}]
execute if entity @e[tag=bHS1] as @a[x=40,y=27,z=-164,distance=..4,gamemode=!creative,tag=!hint10] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
execute if entity @e[tag=bHS2] as @a[x=-14,y=28,z=-257,distance=..4,gamemode=!creative,tag=!hint10] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
execute if entity @e[tag=bHS1] run tag @a[x=40,y=27,z=-164,distance=..4,gamemode=!creative,tag=!hint10] add hint10
execute if entity @e[tag=bHS2] run tag @a[x=-14,y=28,z=-257,distance=..4,gamemode=!creative,tag=!hint10] add hint10

tellraw @a[x=10,y=26,z=-180,distance=..2.5,gamemode=!creative,tag=!hint11] ["",{"translate":"hint.board","color":"gold","italic":true}]
execute as @a[x=10,y=26,z=-180,distance=..2.5,gamemode=!creative,tag=!hint11] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
tag @a[x=10,y=26,z=-180,distance=..2.5,gamemode=!creative,tag=!hint11] add hint11

execute unless score quest Stats matches 6 if entity @e[tag=evTsMoves,tag=!evTsFreed] run tellraw @a[x=77,y=23,z=-256,distance=..5,gamemode=!creative,tag=!hint8] ["",{"translate":"ts_escapes","color":"gold","italic":true}]
execute unless score quest Stats matches 6 if entity @e[tag=evTsMoves,tag=!evTsFreed] run tag @a[x=77,y=23,z=-256,distance=..5,gamemode=!creative,tag=!hint8] add hint8


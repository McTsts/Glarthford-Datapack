execute if score time Dis matches 0400.. if entity @e[type=area_effect_cloud,tag=events,tag=!evStart] run function glarth:events/event/start

particle minecraft:happy_villager 74.39 28.00 -201.09 3 3 3 0 1

execute as @e[tag=bat_boss,type=zombie] run function glarth:combat/boss_pve/bat/main

execute if entity @a[x=72,y=26,z=-198,distance=..3.5] unless entity @e[tag=tut2x] run summon minecraft:area_effect_cloud 69 27.3 -199 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG2"],CustomName:'{"translate":"tutorial.2.a","color":"green"}',CustomNameVisible:1}
execute if entity @a[x=72,y=26,z=-198,distance=..3.5] unless entity @e[tag=tut2x] run summon minecraft:area_effect_cloud 69 27.0 -199 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG2"],CustomName:'{"translate":"tutorial.2.b","color":"green"}',CustomNameVisible:1}
execute if entity @a[x=72,y=26,z=-198,distance=..3.5] unless entity @e[tag=tut2x] run summon minecraft:area_effect_cloud 69 26.7 -199 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG2"],CustomName:'{"translate":"tutorial.2.c","color":"green"}',CustomNameVisible:1}
execute if entity @a[x=72,y=26,z=-198,distance=..3.5] unless entity @e[tag=tut2x] run tag @e[tag=events] add tut2x

execute if entity @a[scores={tutorialChest=1..}] unless entity @e[tag=tut3x] run scoreboard players set tutorial3delay Temp 0
execute if entity @a[scores={tutorialChest=1..}] unless entity @e[tag=tut3x] run kill @e[tag=tutorialMSG1]
execute if entity @a[scores={tutorialChest=1..}] unless entity @e[tag=tut3x] run kill @e[tag=tutorialMSG2]
execute if entity @a[scores={tutorialChest=1..}] unless entity @e[tag=tut3x] run data merge entity @e[tag=explorer2,limit=1] {CustomNameVisible:0}
execute if entity @a[scores={tutorialChest=1..}] unless entity @e[tag=tut3x] run summon minecraft:area_effect_cloud 70.0 28.0 -200.0 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG3"],CustomName:'{"translate":"tutorial.3.a","color":"green"}',CustomNameVisible:1}
execute if entity @a[scores={tutorialChest=1..}] unless entity @e[tag=tut3x] run summon minecraft:area_effect_cloud 70.0 27.7 -200.0 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG3"],CustomName:'{"translate":"tutorial.3.b","color":"green"}',CustomNameVisible:1}
execute if entity @a[scores={tutorialChest=1..}] unless entity @e[tag=tut3x] run summon minecraft:area_effect_cloud 70.0 27.4 -200.0 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG3"],CustomName:'{"translate":"tutorial.3.c","color":"green"}',CustomNameVisible:1}
execute if entity @a[scores={tutorialChest=1..}] unless entity @e[tag=tut3x] run summon minecraft:area_effect_cloud 70.0 27.1 -200.0 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG3"],CustomName:'{"translate":"tutorial.3.d","color":"green"}',CustomNameVisible:1}
execute if entity @a[scores={tutorialChest=1..}] unless entity @e[tag=tut3x] run summon minecraft:area_effect_cloud 80.0 26.7 -194.0 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG4"],CustomName:'{"translate":"tutorial.4.a","color":"green"}',CustomNameVisible:1}
execute if entity @a[scores={tutorialChest=1..}] unless entity @e[tag=tut3x] run summon minecraft:area_effect_cloud 80.0 26.4 -194.0 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG4"],CustomName:'{"translate":"tutorial.4.b","color":"green"}',CustomNameVisible:1}
execute if entity @a[scores={tutorialChest=1..}] unless entity @e[tag=tutorialMSG3x] run tag @e[tag=events] add tut3x
execute if entity @a[scores={tutorialChest=1..}] if entity @e[tag=tut3x] run scoreboard players add tutorial3delay Temp 1
execute if entity @a[scores={tutorialChest=1..}] if entity @e[tag=tut3x] if score tutorial3delay Temp matches 40.. run fill 73 25 -195 74 25 -194 air replace gray_wool

execute if entity @a[x=78,y=26,z=-195,distance=..3] unless entity @e[tag=tut4x] run kill @e[tag=tutorialMSG3]
execute if entity @a[x=78,y=26,z=-195,distance=..3] unless entity @e[tag=tut4x] run summon minecraft:area_effect_cloud 84 21.3 -196 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG5"],CustomName:'{"translate":"tutorial.5.a","color":"green","with":[{"translate":"tutorial.5.c","color":"green","underlined":true}]}',CustomNameVisible:1}
execute if entity @a[x=78,y=26,z=-195,distance=..3] unless entity @e[tag=tut4x] run summon minecraft:area_effect_cloud 84 21.0 -196 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG5"],CustomName:'{"translate":"tutorial.5.b","color":"green","with":[{"translate":"tutorial.5.c","color":"green","underlined":true}]}',CustomNameVisible:1}
execute if entity @a[x=78,y=26,z=-195,distance=..3] unless entity @e[tag=tut4x] run data merge entity @e[tag=explorer2,limit=1] {CustomNameVisible:1}
execute if entity @a[x=78,y=26,z=-195,distance=..3] unless entity @e[tag=tut4x] run data merge entity @e[tag=miner_chief,limit=1] {CustomNameVisible:1}
execute if entity @a[x=78,y=26,z=-195,distance=..3] unless entity @e[tag=tut4x] run tag @e[tag=events] add tut4x

execute if entity @a[gamemode=adventure,x=99,y=2,z=-200,distance=..7] unless entity @e[tag=tut6x] run summon minecraft:area_effect_cloud 102 6 -210 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG9"],CustomName:'{"translate":"tutorial.9.a","color":"green"}',CustomNameVisible:1}
execute if entity @a[gamemode=adventure,x=99,y=2,z=-200,distance=..7] unless entity @e[tag=tut6x] run tag @e[tag=events] add tut6x

execute if entity @a[nbt={Inventory:[{id:"minecraft:sand"}]}] unless entity @e[tag=tut7x] run kill @e[tag=tutorialMSG9]
execute if entity @a[nbt={Inventory:[{id:"minecraft:sand"}]}] unless entity @e[tag=tut7x] run tag @e[tag=events] add tut7x

execute if entity @a[nbt={Inventory:[{id:"minecraft:tnt"}]}] unless entity @e[tag=tut8x] run kill @e[tag=tutorialMSG6]
execute if entity @a[nbt={Inventory:[{id:"minecraft:tnt"}]}] unless entity @e[tag=tut8x] run kill @e[tag=tutorialMSG7]
execute if entity @a[nbt={Inventory:[{id:"minecraft:tnt"}]}] unless entity @e[tag=tut8x] run tag @e[tag=events] add tut8x

execute if entity @a[x=83,y=10,z=-207,distance=..3] unless entity @e[tag=tut9x] run summon minecraft:area_effect_cloud 82 12 -207 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG10"],CustomName:'{"translate":"tutorial.10.a","color":"green"}',CustomNameVisible:1}
execute if entity @a[x=83,y=10,z=-207,distance=..3] unless entity @e[tag=tut9x] run summon minecraft:area_effect_cloud 82 11.7 -207 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG10"],CustomName:'{"translate":"tutorial.10.b","color":"green"}',CustomNameVisible:1}
execute if entity @a[x=83,y=10,z=-207,distance=..3] unless entity @e[tag=tut9x] run summon minecraft:area_effect_cloud 82 11.4 -207 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG10"],CustomName:'{"translate":"tutorial.10.c","color":"green"}',CustomNameVisible:1}
execute if entity @a[x=83,y=10,z=-207,distance=..3] unless entity @e[tag=tut9x] run summon minecraft:area_effect_cloud 82 11.1 -207 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG10"],CustomName:'{"translate":"tutorial.10.d","color":"green"}',CustomNameVisible:1}
execute if entity @a[x=83,y=10,z=-207,distance=..3] unless entity @e[tag=tut9x] run tag @e[tag=events] add tut9x

execute if entity @a[x=81,y=6,z=-192,distance=..3] unless entity @e[tag=tut10x] run summon minecraft:area_effect_cloud 81 8.6 -194 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG11"],CustomName:'{"translate":"tutorial.11.a","color":"green"}',CustomNameVisible:1}
execute if entity @a[x=81,y=6,z=-192,distance=..3] unless entity @e[tag=tut10x] run summon minecraft:area_effect_cloud 81 8.3 -194 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG11"],CustomName:'{"translate":"tutorial.11.b","color":"green"}',CustomNameVisible:1}
execute if entity @a[x=81,y=6,z=-192,distance=..3] unless entity @e[tag=tut10x] run summon minecraft:area_effect_cloud 81 8.0 -194 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG11"],CustomName:'{"translate":"tutorial.11.c","color":"green"}',CustomNameVisible:1}
execute if entity @a[x=81,y=6,z=-192,distance=..3] unless entity @e[tag=tut10x] run tag @e[tag=events] add tut10x
execute unless entity @e[tag=tut5x] run data merge entity @e[tag=miner_chief,limit=1] {CustomNameVisible:0}
execute unless entity @e[tag=tut5x] run kill @e[tag=tutorialMSG4]
execute unless entity @e[tag=tut5x] run kill @e[tag=tutorialMSG5]
execute unless entity @e[tag=tut5x] run summon minecraft:area_effect_cloud 82 22.7 -197 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG6"],CustomName:'{"translate":"tutorial.6.a","color":"green"}',CustomNameVisible:1}
execute unless entity @e[tag=tut5x] run summon minecraft:area_effect_cloud 82 22.4 -197 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG6"],CustomName:'{"translate":"tutorial.6.b","color":"green"}',CustomNameVisible:1}
execute unless entity @e[tag=tut5x] run summon minecraft:area_effect_cloud 82 22.1 -197 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG6"],CustomName:'{"translate":"tutorial.6.c","color":"green"}',CustomNameVisible:1}
execute unless entity @e[tag=tut5x] run summon minecraft:area_effect_cloud 82 21.8 -197 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG6"],CustomName:'{"translate":"tutorial.6.d","color":"green"}',CustomNameVisible:1}
execute unless entity @e[tag=tut5x] run summon minecraft:area_effect_cloud 82 21.5 -197 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG6"],CustomName:'{"translate":"tutorial.6.e","color":"green"}',CustomNameVisible:1}
execute unless entity @e[tag=tut5x] run summon minecraft:area_effect_cloud 82 21.2 -197 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG6"],CustomName:'{"translate":"tutorial.6.f","color":"green"}',CustomNameVisible:1}
execute unless entity @e[tag=tut5x] run summon minecraft:area_effect_cloud 83 8.3 -174 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG7"],CustomName:'{"translate":"tutorial.7.a","color":"green"}',CustomNameVisible:1}
execute unless entity @e[tag=tut5x] run summon minecraft:area_effect_cloud 83 8.0 -174 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG7"],CustomName:'{"translate":"tutorial.7.b","color":"green"}',CustomNameVisible:1}
execute unless entity @e[tag=tut5x] run summon minecraft:area_effect_cloud 83 7.7 -174 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG7"],CustomName:'{"translate":"tutorial.7.c","color":"green"}',CustomNameVisible:1}
execute unless entity @e[tag=tut5x] run summon minecraft:area_effect_cloud 80.0 6.9 -192.0 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG8"],CustomName:'{"translate":"tutorial.8.a","color":"green"}',CustomNameVisible:1}
execute unless entity @e[tag=tut5x] run summon minecraft:area_effect_cloud 80.0 6.6 -192.0 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG8"],CustomName:'{"translate":"tutorial.8.b","color":"green"}',CustomNameVisible:1}
execute unless entity @e[tag=tut5x] run summon minecraft:area_effect_cloud 80.0 6.3 -192.0 {Radius:0.0f,Duration:2147483647,Tags:["tutorialMSG8"],CustomName:'{"translate":"tutorial.8.c","color":"green"}',CustomNameVisible:1}
execute unless entity @e[tag=tut5x] run tag @e[tag=events] add tut5x

fill 86 20 -194 86 22 -195 minecraft:air
fill 81 21 -189 83 23 -189 minecraft:air
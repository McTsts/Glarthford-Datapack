scoreboard players set r Random 8
scoreboard players tag @s add func
function mctsts:util/random
execute @e[tag=area_main] ~ ~ ~ scoreboard players test n Random 1 1
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ entitydata @e[tag=func] {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,Damage:82,tag:{Unbreakable:1}}],CustomName:"Grave",Team:gray,CustomNameVisible:1}
execute @e[tag=area_main] ~ ~ ~ scoreboard players test n Random 2 2
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ entitydata @e[tag=func] {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,Damage:83,tag:{Unbreakable:1}}],CustomName:"Grave",Team:gray,CustomNameVisible:1}
execute @e[tag=area_main] ~ ~ ~ scoreboard players test n Random 3 3
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ entitydata @e[tag=func] {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,Damage:84,tag:{Unbreakable:1}}],CustomName:"Grave",Team:gray,CustomNameVisible:1}
execute @e[tag=area_main] ~ ~ ~ scoreboard players test n Random 4 4
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ entitydata @e[tag=func] {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,Damage:85,tag:{Unbreakable:1}}],CustomName:"Grave",Team:gray,CustomNameVisible:1}
execute @e[tag=area_main] ~ ~ ~ scoreboard players test n Random 5 5
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ entitydata @e[tag=func] {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,Damage:86,tag:{Unbreakable:1}}],CustomName:"Grave",Team:gray,CustomNameVisible:1}
execute @e[tag=area_main] ~ ~ ~ scoreboard players test n Random 6 6
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ entitydata @e[tag=func] {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,Damage:87,tag:{Unbreakable:1}}],CustomName:"Grave",Team:gray,CustomNameVisible:1}
execute @e[tag=area_main] ~ ~ ~ scoreboard players test n Random 7 7
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ entitydata @e[tag=func] {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,Damage:88,tag:{Unbreakable:1}}],CustomName:"Grave",Team:gray,CustomNameVisible:1}
execute @e[tag=area_main] ~ ~ ~ scoreboard players test n Random 8 8
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ entitydata @e[tag=func] {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,Damage:89,tag:{Unbreakable:1}}],CustomName:"Grave",Team:gray,CustomNameVisible:1}
scoreboard players tag @s remove func
scoreboard players tag @s remove char
scoreboard players tag @s remove die2
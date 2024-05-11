execute if block ~ ~ ~ #minecraft:doors[facing=east,hinge=left] run summon minecraft:armor_stand ~-0.4 ~1 ~-0.4 {NoGravity:1b,Tags:["door","doorNew","doorPositive","doorLeft"],Marker:1b,Rotation:[90.0f,0.0f],Invisible:1b,CustomName:'"Door"'}
execute if block ~ ~ ~ #minecraft:doors[facing=east,hinge=right] run summon minecraft:armor_stand ~-0.4 ~1 ~0.4 {NoGravity:1b,Tags:["door","doorNew","doorNegative","doorRight"],Marker:1b,Rotation:[90.0f,0.0f],Invisible:1b,CustomName:'"Door"'}

execute if block ~ ~ ~ #minecraft:doors[facing=south,hinge=left] run summon minecraft:armor_stand ~0.4 ~1 ~-0.4 {NoGravity:1b,Tags:["door","doorNew","doorNegative","doorLeft"],Rotation:[0.0f,0.0f],Marker:1b,Invisible:1b,CustomName:'"Door"'}
execute if block ~ ~ ~ #minecraft:doors[facing=south,hinge=right] run summon minecraft:armor_stand ~-0.4 ~1 ~-0.4 {NoGravity:1b,Tags:["door","doorNew","doorPositive","doorRight"],Marker:1b,Invisible:1b,CustomName:'"Door"'}

execute if block ~ ~ ~ #minecraft:doors[facing=north,hinge=left] run summon minecraft:armor_stand ~-0.4 ~1 ~0.4 {NoGravity:1b,Tags:["door","doorNew","doorNegative","doorLeft"],Marker:1b,Rotation:[180.0f,0.0f],Invisible:1b,CustomName:'"Door"'}
execute if block ~ ~ ~ #minecraft:doors[facing=north,hinge=right] run summon minecraft:armor_stand ~0.4 ~1 ~0.4 {NoGravity:1b,Tags:["door","doorNew","doorPositive","doorRight"],Marker:1b,Rotation:[180.0f,0.0f],Invisible:1b,CustomName:'"Door"'}

execute if block ~ ~ ~ #minecraft:doors[facing=west,hinge=left] run summon minecraft:armor_stand ~0.4 ~1 ~0.4 {NoGravity:1b,Tags:["door","doorNew","doorPositive","doorLeft"],Marker:1b,Rotation:[-90.0f,0.0f],Invisible:1b,CustomName:'"Door"'}
execute if block ~ ~ ~ #minecraft:doors[facing=west,hinge=right] run summon minecraft:armor_stand ~0.4 ~1 ~-0.4 {NoGravity:1b,Tags:["door","doorNew","doorNegative","doorRight"],Marker:1b,Rotation:[-90.0f,0.0f],Invisible:1b,CustomName:'"Door"'}

execute if block ~ ~ ~ iron_door if score door Temp matches 0 run item replace entity @e[tag=doorNew,type=armor_stand] armor.head with diamond_hoe{CustomModelData:224}
execute if block ~ ~ ~ iron_door if score door Temp matches 1 run item replace entity @e[tag=doorNew,type=armor_stand] armor.head with diamond_hoe{CustomModelData:355}
execute if block ~ ~ ~ spruce_door run item replace entity @e[tag=doorNew,type=armor_stand] armor.head with diamond_hoe{CustomModelData:225}
execute if block ~ ~ ~ jungle_door run item replace entity @e[tag=doorNew,type=armor_stand] armor.head with diamond_hoe{CustomModelData:226}
execute if block ~ ~ ~ acacia_door run item replace entity @e[tag=doorNew,type=armor_stand] armor.head with diamond_hoe{CustomModelData:227}

tag @e[tag=doorNew,type=armor_stand] remove doorNew

execute as @e[tag=door,distance=..4,type=armor_stand] run function glarth.doors:execute
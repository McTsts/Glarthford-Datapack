scoreboard players set tick Dis 0
#Butcher
scoreboard players tag @e[tag=butcher] add sleep
tp @e[tag=butcher] 0.7 29.5 -211.8 
entitydata @e[tag=butcher] {Pose:{Head:[-90f,0f,0f]},NoGravity:1,Rotation:[110f,0f]}
blockdata -2 30 -214 {Lock:""}
#Baker
scoreboard players tag @e[tag=baker] add sleep
tp @e[tag=baker] 13.3 29.5 -213
entitydata @e[tag=baker] {Pose:{Head:[-90f,0f,0f]},NoGravity:1,Rotation:[-90f,0f]}
blockdata 14 26 -217 {Lock:""}
blockdata 17 30 -215 {Lock:""}
#Zombie/Skeleton
summon armor_stand -11 26 -159 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:22,tag:{Unbreakable:1}}],Tags:["char","skeleton"],Rotation:[140f,0f],CustomName:"Skeleton",Team:dark_gray,CustomNameVisible:1}
summon armor_stand -24 29 -229 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,Damage:68,tag:{Unbreakable:1}}],Tags:["char","zombie"],Rotation:[0f,0f],CustomName:"Zombie",Team:dark_green,CustomNameVisible:1}
#Lumberjack/Guard
scoreboard players tag @e[tag=lumberjack] add sleep
blockdata 77 28 -257 {Lock:""}
scoreboard players tag @e[tag=guard] add sleep
blockdata 21 26 -186 {Lock:""}
fill 15 26 -250 17 26 -252 air replace wheat
setblock 17 26 -249 air
setblock 15 26 -249 air
scoreboard players set r Random 3
function glarth:util/randomish
execute if score n Random matches 1 positioned 18 26 -250 unless entity @e[tag=crow_scarecrow,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:158}}],Tags:["crow","crow1","crow_scarecrow"],Invulnerable:1b,DisabledSlots:4144959,Invisible:1,NoGravity:1,Rotation:[110f,0f],Marker:1}
execute if score n Random matches 2 positioned 17 26 -249 unless entity @e[tag=crow_scarecrow,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:158}}],Tags:["crow","crow1","crow_scarecrow"],Invulnerable:1b,DisabledSlots:4144959,Invisible:1,NoGravity:1,Rotation:[160f,0f],Marker:1}
execute if score n Random matches 3 positioned 15 26 -249 unless entity @e[tag=crow_scarecrow,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:158}}],Tags:["crow","crow1","crow_scarecrow"],Invulnerable:1b,DisabledSlots:4144959,Invisible:1,NoGravity:1,Rotation:[-130f,0f],Marker:1}
scoreboard players set r Random 3
function glarth:util/randomish
execute if score n Random matches 1 positioned 15 26 -250 unless entity @e[tag=crow_scarecrow,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:158}}],Tags:["crow","crow21","crowPeck","crow_scarecrow"],Invulnerable:1b,DisabledSlots:4144959,Invisible:1,NoGravity:1,Rotation:[-90f,0f]}
execute if score n Random matches 2 positioned 16 26 -252 unless entity @e[tag=crow_scarecrow,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:158}}],Tags:["crow","crow21","crowPeck","crow_scarecrow"],Invulnerable:1b,DisabledSlots:4144959,Invisible:1,NoGravity:1,Rotation:[0f,0f],Marker:1}
execute if score n Random matches 3 positioned 17 26 -252 unless entity @e[tag=crow_scarecrow,distance=..0.1] run summon minecraft:armor_stand ~ ~ ~ {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:158}}],Tags:["crow","crow21","crowPeck","crow_scarecrow"],Invulnerable:1b,DisabledSlots:4144959,Invisible:1,NoGravity:1,Rotation:[50f,0f],Marker:1}
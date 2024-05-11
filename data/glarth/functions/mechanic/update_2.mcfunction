## Char Based

# Events
execute unless score quest Stats matches 0 run function glarth:events/main

# Lumberjack Tree
execute as @a[x=71,y=27,z=-249,distance=..10,tag=!nearLumber] run scoreboard players set r Random 5
execute as @a[x=71,y=27,z=-249,distance=..10,tag=!nearLumber] run function glarth:util/randomish
execute as @a[x=71,y=27,z=-249,distance=..10,tag=!nearLumber] if score n Random matches 1 unless score season winter matches 1 run tag @e[tag=lumberjack,tag=!sleep,type=armor_stand,tag=char] add cut_tree 
execute as @a[x=71,y=27,z=-249,distance=..10,tag=!nearLumber] run tag @s add nearLumber 
execute as @a[x=71,y=27,z=-249,distance=11..,tag=nearLumber] run tag @s remove nearLumber 

# Mourner
execute unless score quest Stats matches 8 as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",tag:{isDogSkull:1}}]},gamemode=adventure] at @s run function glarth:mechanic/char/skull_dog
execute unless score quest Stats matches 8 unless entity @a[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_hoe",tag:{isDogSkull:1}}]},gamemode=adventure] run function glarth:mechanic/char/skull_undog

# Die
execute as @e[tag=die] at @s run function glarth:mechanic/action/die
execute as @e[tag=die2] at @s run function glarth:mechanic/action/die2
execute as @e[tag=die3] at @s run function glarth:mechanic/action/die3

# TTEXTT Notes
execute if entity @e[tag=ttextt,tag=a,type=armor_stand,tag=char] run function glarth:mechanic/animation/notes

execute if score quest Stats matches 9 run data merge entity @e[tag=apple,limit=1,tag=char] {Motion:[0.0,0.3,0.0]}

# Glowing
execute as @a[gamemode=adventure] at @s as @e[tag=char_glow,distance=20..,type=armor_stand] run data merge entity @s {Glowing:0b}
execute as @a[gamemode=adventure] at @s as @e[tag=char_glow,distance=..19,type=armor_stand] run data merge entity @s {Glowing:1b}


# ZP Fix
data merge entity @e[type=minecraft:zombified_piglin,limit=1] {DeathTime:19s,Health:0.0f}
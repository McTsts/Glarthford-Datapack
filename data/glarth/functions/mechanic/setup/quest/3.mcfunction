 # Remove Default Baker
 kill @e[tag=baker]
 # Set Fire
 fill 9 27 -210 15 33 -215 minecraft:fire replace air
 # Extra Characters
 summon armor_stand 8 26 -214 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":9,"minecraft:unbreakable":{}}}],Tags:["char","baker2"],Rotation:[-70.0f,0.0f],CustomName:'{"translate":"baker","color":"#FF8488"}',CustomNameVisible:1,NoGravity:1}
execute unless entity @a[scores={playerid=1,charSpouse=2}] run summon armor_stand 7 26 -206 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":33,"minecraft:unbreakable":{}}}],Tags:["char","wife2","cnoc"],Rotation:[0.0f,0.0f],CustomName:'{"translate":"wife","color":"#FF8488"}',CustomNameVisible:1,NoGravity:1}
execute if entity @a[scores={playerid=1,charSpouse=2}] run summon armor_stand 7 26 -206 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":157,"minecraft:unbreakable":{}}}],Tags:["char","husband2","cnoc"],Rotation:[0.0f,0.0f],CustomName:'{"translate":"husband","color":"aqua"}',CustomNameVisible:1,NoGravity:1}
summon armor_stand 10 26 -189 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":71,"minecraft:unbreakable":{}}}],Tags:["char","citizen"],Rotation:[120.0f,0.0f],CustomName:'{"translate":"citizen","color":"gold"}',CustomNameVisible:1}
 # Nether
function glarth:mechanic/setup/extra/nether


# Observatory Easteregg
function glarth:mechanic/setup/extra/empty_observatory


scoreboard players set blazes Stats 2

# open tower
fill 22 45 -181 30 45 -181 minecraft:air
fill 30 45 -181 30 45 -189 minecraft:air
fill 30 45 -189 22 45 -189 minecraft:air
fill 22 45 -189 22 45 -181 minecraft:air


# Empty Mines
function glarth:mechanic/setup/extra/empty_mines

# gary #4 
clone 53 21 -232 50 17 -240 22 19 -217
summon armor_stand -82 55 -218 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":348,"minecraft:unbreakable":{}}}],Tags:["char","gibbs","asLoaderOverwrite"],Rotation:[-70.0f,0.0f],CustomName:'{"translate":"gibbs","color":"gray"}',CustomNameVisible:1}
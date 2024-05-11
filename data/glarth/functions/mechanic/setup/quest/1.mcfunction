# Extra Characters
summon armor_stand -8 26 -199 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":70,"minecraft:unbreakable":{}}}],Tags:["char","roberto_fake"],Rotation:[0.0f,0.0f],CustomName:'{"translate":"roberto","color":"#282828"}',CustomNameVisible:0,NoGravity:1}
summon armor_stand 173 26 -156 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":70,"minecraft:unbreakable":{}}}],Tags:["char","roberto","tbcLoc074"],Rotation:[115.0f,0.0f],CustomName:'{"translate":"roberto","color":"#282828"}',CustomNameVisible:1}
summon armor_stand 101 26 -192 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":45,"minecraft:unbreakable":{}}}],Tags:["char","char_look","szombie","tbcLoc075"],Rotation:[45.0f,0.0f],CustomName:'{"translate":"szombie","color":"#00A975"}',CustomNameVisible:1}
execute unless entity @a[scores={playerid=1,charSpouse=2}] run summon armor_stand 173 30 -161 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":33,"minecraft:unbreakable":{}}}],Tags:["char","wife"],Rotation:[90.0f,0.0f],CustomName:'{"translate":"wife","color":"#FF8488"}',CustomNameVisible:1}
execute if entity @a[scores={playerid=1,charSpouse=2}] run summon armor_stand 173 30 -161 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":157,"minecraft:unbreakable":{}}}],Tags:["char","husband"],Rotation:[90.0f,0.0f],CustomName:'{"translate":"husband","color":"aqua"}',CustomNameVisible:1}
function glarth:mechanic/setup/extra/characters_mines
function glarth:mechanic/setup/extra/monk
function glarth:mechanic/setup/extra/hide_bowm

summon minecraft:armor_stand 2 26 -199 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":102}}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[140.0f,0.0f],DisabledSlots:2039583,Marker:1,Tags:["asLoader"]}
summon minecraft:armor_stand 4 26 -205 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":102}}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[180.0f,0.0f],DisabledSlots:2039583,Marker:1,Tags:["asLoader"]}
summon minecraft:armor_stand 0 26 -198 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":102}}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[50.0f,0.0f],DisabledSlots:2039583,Marker:1,Tags:["asLoader"]}

kill @e[tag=dockmaster]
kill @e[tag=archaeologist]
kill @e[tag=suso]

# Remove Golden Pickaxe
setblock -38 28 -269 air

# Observatory Easteregg
function glarth:mechanic/setup/extra/empty_observatory

# Roberto Forced
fill -9 26 -199 -7 28 -199 minecraft:barrier

# Newspaper Tip
tag @a remove tip27

# gary #1
clone 38 21 -232 35 17 -240 22 19 -217
setblock 25 20 -211 minecraft:jungle_button[face=wall,facing=north,powered=true]
setblock 38 18 -233 minecraft:iron_trapdoor[facing=west,half=top,open=true,powered=true,waterlogged=false]
summon slime 25 20 -210 {NoAI:1b,PersistenceRequired:1,NoGravity:1b,Silent:1b,Size:1,ActiveEffects:[{Id:14,Duration:999999,ShowParticles:0b},{Id:11,Duration:999999,ShowParticles:0b,Amplifier:120}],Tags:["beeHiveSlime"],Team:"noc"}
summon armor_stand 68 60 -159 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":348,"minecraft:unbreakable":{}}}],Tags:["char","gibbs","asLoaderOverwrite"],Rotation:[135.0f,0.0f],CustomName:'{"translate":"gibbs","color":"gray"}',CustomNameVisible:1}
# Open Ancient Volcano
fill -9 19 -129 -9 17 -130 air
fill -10 17 -129 -10 16 -129 air
setblock -10 19 -128 air
setblock -11 16 -128 air
setblock -9 17 -131 air
# Pollute Food
clone -4 23 -211 -4 23 -211 -5 26 -210
clone 0 24 -216 0 24 -216 -2 28 -216
clone 17 23 -212 17 23 -212 17 26 -214
setblock 16 27 -214 air
# Balloon Posters
setblock -69 30 -172 minecraft:iron_trapdoor[facing=east,half=top,open=true,powered=false,waterlogged=false]
setblock 8 27 -265 minecraft:iron_trapdoor[facing=south,half=top,open=true,powered=false,waterlogged=false]
# Yellow Shulker Box for Bucket Merchant Light
setblock 3 26 -201 minecraft:yellow_shulker_box[facing=up]{Lock:"locked",CustomName:"\"\""}
# Pollute Field
fill 10 26 -253 23 26 -243 air replace wheat
fill 10 26 -253 23 26 -243 air replace beetroots
fill 10 26 -253 23 26 -243 air replace carrots
fill 22 26 -245 22 26 -244 slime_block
fill 15 26 -248 16 26 -248 slime_block
fill 12 26 -243 11 26 -244 slime_block
setblock 10 26 -245 minecraft:slime_block
setblock 12 26 -250 minecraft:slime_block
setblock 11 26 -252 minecraft:slime_block
setblock 16 26 -251 minecraft:slime_block
setblock 20 26 -247 minecraft:slime_block
setblock 20 26 -248 minecraft:slime_block
setblock 23 26 -249 minecraft:slime_block
# Extra Characters
summon armor_stand 3 30 -203 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":31,"minecraft:unbreakable":{}}}],Tags:["char","enderman","cnoc"],Rotation:[35.0f,0.0f],CustomName:'{"translate":"enderman","color":"dark_purple"}',CustomNameVisible:1}
summon armor_stand 8 26 -211 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":73,"minecraft:unbreakable":{}}}],Tags:["char","uncle2"],Rotation:[-120.0f,0.0f],CustomName:'{"translate":"uncle","color":"gray"}',CustomNameVisible:1}
summon armor_stand -3 20 -105 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":52,"minecraft:unbreakable":{}}}],Tags:["char","explorer"],Rotation:[90.0f,0.0f],CustomName:'{"translate":"explorer","color":"#8C5800"}',CustomNameVisible:1}
summon armor_stand 1 27.1 -101 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":37,"minecraft:unbreakable":{}}}],Tags:["char","slime","tbcLoc033","cnoc"],Rotation:[-165.0f,0.0f],CustomName:'{"translate":"slime","color":"green"}',CustomNameVisible:1}
 summon armor_stand 11 25 -152 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":76,"minecraft:unbreakable":{}}}],Tags:["char","pufferfish","cnoc"],Rotation:[70.0f,0.0f],CustomName:'{"translate":"pufferfish","color":"yellow"}',CustomNameVisible:1,Pose:{Head:[-20.0f,0.0f,0.0f]}}
 summon armor_stand 2.0 26 -201.0 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":117,"minecraft:unbreakable":{}}}],Tags:["char","bucketm"],Rotation:[-45.0f,0.0f],CustomName:'{"translate":"bucketm","color":"red"}',CustomNameVisible:1}
 summon armor_stand -28 27 -248 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":228,"minecraft:unbreakable":{}}}],Tags:["char","trader"],Rotation:[-150.0f,0.0f],CustomName:'{"translate":"trader","color":"blue"}',CustomNameVisible:1}
 summon armor_stand -47 27 -228 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":71,"minecraft:unbreakable":{}}}],Tags:["char","citizen"],Rotation:[-100.0f,0.0f],CustomName:'{"translate":"citizen","color":"gold"}',CustomNameVisible:1}
summon armor_stand -69 28 -270 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":180,"minecraft:unbreakable":{}}}],Tags:["char","pufferfish_red","cnoc"],Rotation:[-40.0f,0.0f],CustomName:'{"translate":"pufferfish_red","color":"red"}',CustomNameVisible:1,Pose:{Head:[-20.0f,0.0f,0.0f]}}
tp @e[tag=merchant2] 16 26 -206 120 0
tp @e[tag=diver] 19 19 -112 90 0
tp @e[tag=dockmaster,tag=char] -73 39 -181 -90 0
function glarth:mechanic/setup/extra/observatory
# Slime
fill -11 33 -221 19 25 -195 minecraft:slime_block replace minecraft:structure_void
fill 27 30 -178 28 30 -178 minecraft:slime_block
fill -16 26 -199 -16 26 -198 slime_block
setblock 20 27 -174 slime_block
setblock 27 25 -174 slime_block
setblock 21 28 -174 slime_block
setblock 32 26 -178 slime_block
setblock 4 26 -175 slime_block
setblock 3 28 -170 slime_block
setblock 19 26 -184 slime_block
setblock 30 26 -198 slime_block
setblock 33 27 -192 slime_block
setblock -6 26 -193 slime_block
setblock -9 26 -200 slime_block
setblock -18 26 -193 slime_block
# Slime Flow
setblock 10 28 -211 minecraft:birch_button[face=floor,powered=true,facing=east]
setblock 10 29 -213 minecraft:birch_button[face=floor,powered=true,facing=east]
setblock 3 29 -212 minecraft:birch_button[face=floor,powered=true,facing=west]
setblock 2 28 -207 minecraft:birch_button[face=floor,powered=true,facing=north]
setblock 13 28 -201 minecraft:birch_button[face=floor,powered=true,facing=north]
setblock -6 28 -199 minecraft:birch_button[face=floor,powered=true,facing=north]
setblock 21 27 -175 minecraft:birch_button[face=floor,powered=true,facing=south]
setblock 27 29 -177 minecraft:birch_button[face=floor,powered=true,facing=north]
setblock 29 29 -178 minecraft:birch_button[face=floor,powered=true,facing=west]
setblock 5 28 -176 minecraft:birch_button[face=floor,powered=true,facing=north]
setblock 18 28 -182 minecraft:birch_button[face=floor,powered=true,facing=east]
setblock 21 29 -200 minecraft:birch_button[face=floor,powered=true,facing=west]
setblock -12 27 -193 minecraft:birch_button[face=floor,powered=true,facing=south]

# forceload baloon
forceload add 8 24

# Empty Mines
function glarth:mechanic/setup/extra/empty_mines

# gary #5
clone 58 21 -232 55 17 -240 22 19 -217
summon armor_stand 59 83 -99 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":348,"minecraft:unbreakable":{}}}],Tags:["char","gibbs","asLoaderOverwrite"],Rotation:[70.0f,0.0f],CustomName:'{"translate":"gibbs","color":"gray"}',CustomNameVisible:1}
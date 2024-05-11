# Lake
clone -15 21 -99 -24 18 -104 -5 24 -144
# Disable Lake Hint
tag @a add hint1


# Christmas 
summon minecraft:armor_stand 15.0 30.4 -196.4 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":282}}],Rotation:[180.0f,0.0f],Marker:1,Invisible:1,Tags:["asLoader"]}
summon minecraft:armor_stand 7.6 30.6 -187.0 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":283}}],Rotation:[90.0f,0.0f],Marker:1,Invisible:1,Tags:["asLoader"]}
summon minecraft:armor_stand 6.6 30.6 -193.0 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":284}}],Rotation:[90.0f,0.0f],Marker:1,Invisible:1,Tags:["asLoader"]}
summon minecraft:armor_stand 10.0 31.4 -194.4 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":283}}],Rotation:[180.0f,0.0f],Marker:1,Invisible:1,Tags:["asLoader"]}

setblock 14 32 -197 light[level=15]
setblock 7 32 -188 light[level=15]
setblock 6 32 -193 light[level=15]
setblock 9 32 -195 light[level=15]

 
 # stray
summon armor_stand -60 27 -174 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":145,"minecraft:unbreakable":{}}}],Tags:["char","stray","char_look","tbcLoc002"],Rotation:[-110.0f,0.0f],CustomName:'{"translate":"stray","color":"aqua"}',CustomNameVisible:1}

# snowman
summon armor_stand -42 27 -234 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":183,"minecraft:unbreakable":{}}}],Tags:["char","char_look","snowman"],Rotation:[-33.0f,0.0f],CustomName:'{"translate":"snowman","color":"white"}',CustomNameVisible:1}
 
  
# Freeze Field
fill 22 26 -252 21 26 -251 minecraft:cyan_carpet
fill 18 26 -245 17 26 -244 minecraft:cyan_carpet
fill 14 26 -246 13 26 -247 minecraft:cyan_carpet
fill 13 26 -251 12 26 -251 minecraft:cyan_carpet
fill 17 26 -250 17 26 -249 minecraft:cyan_carpet
setblock 21 26 -250 minecraft:cyan_carpet
setblock 20 26 -251 minecraft:cyan_carpet
setblock 19 26 -249 minecraft:cyan_carpet
setblock 19 26 -253 minecraft:cyan_carpet
setblock 19 26 -245 minecraft:cyan_carpet
setblock 16 26 -244 minecraft:cyan_carpet
setblock 16 26 -243 minecraft:cyan_carpet
setblock 17 26 -243 minecraft:cyan_carpet
setblock 16 26 -246 minecraft:cyan_carpet
setblock 14 26 -244 minecraft:cyan_carpet
setblock 12 26 -247 minecraft:cyan_carpet
setblock 14 26 -250 minecraft:cyan_carpet
setblock 13 26 -253 minecraft:cyan_carpet
fill 18 26 -247 17 26 -247 air
setblock 11 26 -243 air
fill 22 26 -245 23 26 -244 air
setblock 21 26 -245 air
fill 18 26 -251 17 26 -252 air
fill 11 26 -251 11 26 -252 air
setblock 11 26 -244 minecraft:beetroots[age=1]
setblock 12 26 -244 minecraft:beetroots[age=2]
setblock 11 26 -245 minecraft:beetroots[age=2]
setblock 13 26 -245 minecraft:beetroots[age=2]
fill 19 26 -243 20 26 -243 minecraft:beetroots[age=2]
setblock 23 26 -243 minecraft:beetroots[age=0]
setblock 21 26 -244 minecraft:beetroots[age=0]
setblock 22 26 -243 minecraft:beetroots[age=1]
setblock 15 26 -244 minecraft:beetroots[age=2]
fill 12 26 -249 13 26 -249 minecraft:carrots[age=4]
fill 15 26 -247 16 26 -248 minecraft:carrots[age=2]
fill 16 26 -249 17 26 -248 minecraft:carrots[age=5] replace minecraft:carrots
fill 21 26 -247 22 26 -248 minecraft:carrots[age=5]
fill 20 26 -248 21 26 -249 minecraft:carrots[age=2]
setblock 22 26 -249 minecraft:carrots[age=0]
fill 10 26 -251 10 26 -252 wheat[age=3]
fill 14 26 -251 15 26 -250 wheat[age=5] replace wheat
fill 20 26 -253 21 26 -253 wheat[age=2]
setblock 22 26 -253 wheat[age=4]
setblock 20 26 -252 wheat[age=3]
setblock 11 26 -247 short_grass
setblock 12 26 -253 short_grass
setblock 21 26 -249 short_grass
setblock 15 26 -245 short_grass


 # Drowned
kill @e[tag=drowned]
summon armor_stand 1 24 -141 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":276,"minecraft:unbreakable":{}}}],Tags:["char","drowned"],Rotation:[-20.0f,0.0f],CustomName:'{"translate":"drowned_frozen","color":"aqua"}',CustomNameVisible:1}
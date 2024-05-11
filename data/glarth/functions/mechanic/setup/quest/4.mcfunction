 # Update Archaeologist
 replaceitem entity @e[tag=archaeologist] armor.head diamond_hoe{Damage:14}
# End Setup
summon area_effect_cloud 7 30 -196 {Radius:0.0f,Duration:2147483647,Tags:["endSetup"],CustomName:'"End Setup"',CustomNameVisible:0}
function glarth:mechanic/setup/extra/show_end

# Empty Mines
function glarth:mechanic/setup/extra/empty_mines

# broken iron trapdoor
setblock 21 26 -175 air


# ice spike field 
fill 5 27 -271 5 26 -271 air replace minecraft:barrier

 # Snowflakes
summon minecraft:armor_stand 3 26 -280 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:165}}],Marker:1,Invisible:1,NoGravity:1,Tags:["asLoader"]}
summon minecraft:armor_stand 6 26 -276 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:165}}],Marker:1,Invisible:1,NoGravity:1,Tags:["asLoader"]}
summon minecraft:armor_stand 7 26 -283 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:165}}],Marker:1,Invisible:1,NoGravity:1,Tags:["asLoader"]}
summon minecraft:armor_stand 5 28 -324 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:165}}],Marker:1,Invisible:1,NoGravity:1,Tags:["asLoader"]}
 summon minecraft:armor_stand -4 28 -321 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:165}}],Marker:1,Invisible:1,NoGravity:1,Tags:["asLoader"]}
 # Extra Characters
 summon armor_stand -35 33 -168 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:34,Unbreakable:1}}],Tags:["char","assassin"],Rotation:[180f,0f],CustomName:"{\"translate\":\"assassin\",\"color\":\"#282828\"}",CustomNameVisible:1}
summon armor_stand -11.0 26 -202 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:73,Unbreakable:1}}],Tags:["char","uncle"],Rotation:[180f,0f],CustomName:"{\"translate\":\"uncle\",\"color\":\"gray\"}",CustomNameVisible:1}
summon armor_stand 2 26 -284 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:31,Unbreakable:1}}],Tags:["char","enderman","cnoc"],Rotation:[-50f,0f],CustomName:"{\"translate\":\"enderman\",\"color\":\"dark_purple\"}",CustomNameVisible:1}
 summon armor_stand -16 31 -277 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:145,Unbreakable:1}}],Tags:["char","stray","char_look","tbcLoc053"],Rotation:[-160f,0f],CustomName:"{\"translate\":\"stray\",\"color\":\"aqua\"}",CustomNameVisible:1}
 summon armor_stand 15 28 -321 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:145,Unbreakable:1}}],Tags:["char","stray","char_look","tbcLoc053"],Rotation:[90f,0f],CustomName:"{\"translate\":\"stray\",\"color\":\"aqua\"}",CustomNameVisible:1}
 summon armor_stand 0 26 -173 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:240,Unbreakable:1}}],Tags:["char","akid"],Rotation:[-90f,0f],CustomName:"{\"translate\":\"akid\",\"color\":\"red\"}",CustomNameVisible:1}
 summon armor_stand 23.5 26.25 -290.5 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:183,Unbreakable:1}}],Tags:["char","char_look","snowman"],Rotation:[90f,0f],CustomName:"{\"translate\":\"snowman\",\"color\":\"white\"}",CustomNameVisible:1}
summon armor_stand -34 26 -170 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:74,Unbreakable:1}}],Tags:["char","vampire"],Rotation:[80f,0f],CustomName:"{\"translate\":\"vampire\",\"color\":\"dark_red\"}",CustomNameVisible:1}
summon armor_stand 30 27 -137 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:348,Unbreakable:1}}],Tags:["char","gibbs"],Rotation:[-45f,0f],CustomName:"{\"translate\":\"gibbs\",\"color\":\"gray\"}",CustomNameVisible:1}
summon armor_stand -37 28 -259 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:228,Unbreakable:1}}],Tags:["char","trader"],Rotation:[140f,0f],CustomName:"{\"translate\":\"trader\",\"color\":\"blue\"}",CustomNameVisible:1}
function glarth:mechanic/setup/extra/monk

setblock -34 33 -169 campfire
setblock -34 32 -169 minecraft:hay_block

fill 3 27 -335 1 26 -337 air destroy

# Snow Foxes
summon fox -2 27 -317 {Type:"snow",HandItems:[{id:"golden_apple",Count:1}]}
summon fox 13 28 -318 {Type:"snow",HandItems:[{id:"snowball",Count:1}]}
summon fox -13 27 -299 {Type:"snow",HandItems:[{id:"gold_ingot",Count:1}]}

# End Stone
summon minecraft:armor_stand 4 27 -328 {Marker:1,Invisible:1,Tags:["endStone","fire","asLoader"],Invulnerable:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:181}}],Fire:1000s}
summon minecraft:armor_stand 4 27 -329 {Marker:1,Invisible:1,Tags:["endStone","fire","asLoader"],Invulnerable:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:181}}],Fire:1000s}
summon minecraft:armor_stand 2 27 -330 {Marker:1,Invisible:1,Tags:["endStone","fire","asLoader"],Invulnerable:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:181}}],Fire:1000s}
summon minecraft:armor_stand 2 27 -331 {Marker:1,Invisible:1,Tags:["endStone","fire","asLoader"],Invulnerable:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:181}}],Fire:1000s}
		
# End Posters Town
setblock 20 26 -194 birch_button[powered=true,face=wall,facing=north]
setblock 22 26 -193 birch_button[powered=true,face=wall,facing=north]
setblock 27 27 -189 birch_button[powered=true,face=wall,facing=north]
setblock 24 29 -189 birch_button[powered=true,face=wall,facing=north]
setblock 8 27 -185 birch_button[powered=true,face=wall,facing=north]
setblock 6 27 -185 birch_button[powered=true,face=wall,facing=north]
setblock 21 27 -175 birch_button[powered=true,face=wall,facing=north]
setblock 8 28 -170 birch_button[powered=true,face=wall,facing=north]
setblock -12 27 -173 birch_button[powered=true,face=wall,facing=north]
setblock -3 27 -190 birch_button[powered=true,face=wall,facing=north]
setblock -11 27 -194 birch_button[powered=true,face=wall,facing=north]
setblock -17 27 -194 birch_button[powered=true,face=wall,facing=north]
setblock 3 27 -218 birch_button[powered=true,face=wall,facing=east]
setblock 2 28 -217 birch_button[powered=true,face=wall,facing=east]
setblock 3 28 -214 birch_button[powered=true,face=wall,facing=east]
setblock 3 27 -211 birch_button[powered=true,face=wall,facing=east]
setblock 3 27 -208 birch_button[powered=true,face=wall,facing=east]
setblock 5 26 -203 birch_button[powered=true,face=wall,facing=east]
setblock 4 26 -201 birch_button[powered=true,face=wall,facing=east]
setblock 21 28 -200 birch_button[powered=true,face=wall,facing=east]
setblock 30 28 -182 birch_button[powered=true,face=wall,facing=east]
setblock -2 27 -181 birch_button[powered=true,face=wall,facing=east]
setblock -19 27 -198 birch_button[powered=true,face=wall,facing=south]
setblock -10 27 -199 birch_button[powered=true,face=wall,facing=south]
setblock -6 27 -199 birch_button[powered=true,face=wall,facing=south]
setblock 1 26 -198 birch_button[powered=true,face=wall,facing=south]
setblock 3 26 -200 birch_button[powered=true,face=wall,facing=south]
setblock 10 26 -201 birch_button[powered=true,face=wall,facing=south]
setblock 12 26 -199 birch_button[powered=true,face=wall,facing=south]
setblock 14 26 -198 birch_button[powered=true,face=wall,facing=south]
setblock 4 27 -221 birch_button[powered=true,face=wall,facing=south]
setblock 10 28 -221 birch_button[powered=true,face=wall,facing=south]
setblock 28 27 -177 birch_button[powered=true,face=wall,facing=south]
setblock 9 27 -176 birch_button[powered=true,face=wall,facing=south]
setblock 5 28 -176 birch_button[powered=true,face=wall,facing=south]
setblock -7 28 -180 birch_button[powered=true,face=wall,facing=south]
setblock -11 27 -180 birch_button[powered=true,face=wall,facing=south]
setblock -17 28 -180 birch_button[powered=true,face=wall,facing=south]
setblock 9 26 -202 birch_button[powered=true,face=wall,facing=west]
setblock 11 26 -200 birch_button[powered=true,face=wall,facing=west]
setblock 24 28 -200 birch_button[powered=true,face=wall,facing=west]
setblock 32 28 -193 birch_button[powered=true,face=wall,facing=west]
setblock 33 27 -179 birch_button[powered=true,face=wall,facing=west]
setblock 33 28 -174 birch_button[powered=true,face=wall,facing=west]
setblock 18 27 -185 birch_button[powered=true,face=wall,facing=west]
setblock 10 29 -212 birch_button[powered=true,face=wall,facing=west]
# Brewery
setblock -43 28 -192 birch_button[powered=true,face=wall,facing=north]
setblock -40 28 -196 birch_button[powered=true,face=wall,facing=east]
setblock -42 28 -190 birch_button[powered=true,face=wall,facing=south]
setblock -45 28 -204 birch_button[powered=true,face=wall,facing=east]
# Farm
setblock 0 27 -244 birch_button[powered=true,face=wall,facing=east]
setblock 0 28 -247 birch_button[powered=true,face=wall,facing=east]
setblock 8 27 -265 birch_button[powered=true,face=wall,facing=south]
setblock 8 26 -247 birch_button[powered=true,face=wall,facing=west]
# Misc
setblock 41 27 -190 birch_button[powered=true,face=wall,facing=north]
setblock -21 29 -124 birch_button[powered=true,face=wall,facing=north]
setblock -67 31 -179 birch_button[powered=true,face=wall,facing=east]
setblock 25 28 -152 birch_button[powered=true,face=wall,facing=west]
setblock 70 28 -254 birch_button[powered=true,face=wall,facing=west]
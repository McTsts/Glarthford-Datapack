# Lake
clone -15 21 -99 -24 18 -104 -5 24 -144
# Ship
clone -19 16 -163 -38 1 -169 -15 24 -135
# Disable Lake Hint
tag @a add hint1
# Mill
kill @e[tag=mill]
clone 24 21 -229 14 1 -239 14 25 -239

# Junkyard
clone -20 23 -264 -31 11 -274 -47 27 -273

# Brewery Lever
setblock -47 28 -193 lever[face=wall,facing=west]

# Remove Brewery TP Button
setblock -59 22 -189 air

# Brick Posters
setblock 18 27 -185 minecraft:iron_trapdoor[facing=west,half=top,open=true,powered=false,waterlogged=false]
setblock 0 27 -172 minecraft:iron_trapdoor[facing=east,half=top,open=true,powered=true,waterlogged=false]
setblock -49 30 -265 minecraft:iron_trapdoor[facing=east,half=top,open=true,powered=false,waterlogged=false]

# Change Characters
tp @e[tag=farmer,tag=char] -7 30 -243 180 0
tp @e[tag=dockmaster,tag=char] -73 39 -181 -90 0
tp @e[tag=adventurer,tag=char] 2 26 -206 -90 0
tp @e[tag=blacksmith,tag=char] 23 27 -201
tp @e[tag=sailor,tag=char] -4 26 -194 -160 0
tp @e[tag=brewer,tag=char] -4 26 -199 -30 0

kill @e[tag=bum,tag=char] 
kill @e[tag=richard,tag=char] 
tag @e[tag=rose,tag=char] add die2
tag @e[tag=ttextt,tag=char] add die2
tag @e[tag=checkminer,tag=char] add die2
kill @e[tag=archaeologist,tag=char]

tag @e[tag=worker,tag=char] remove sleep
tag @e[tag=worker,tag=char] add die2

tp @e[tag=diver,tag=char] 11 26 -196 -90 0
tag @e[tag=diver] add diverScared

tp @e[tag=miller,tag=char] -5 26 -174 -60 0
setblock -1 24 -173 minecraft:redstone_torch

tp @e[tag=graveyard,tag=char] 8 26 -186 180 0
tag @e[tag=graveyard,tag=char] add a
scoreboard players set @e[tag=graveyard,tag=char] action 10000000

tp @e[tag=fisher,tag=char] 15 27 -144 180 0
tag @e[tag=fisher,tag=char] remove fishing
tag @e[tag=fisher,tag=char] add die2

tag @e[tag=apple,tag=char] add cnoc
tag @e[tag=apple,tag=char] add charPermaLoad
tp @e[tag=apple,tag=char] 11 26 -205 0 0
fill -7 27 -265 -12 28 -271 minecraft:structure_void replace minecraft:birch_pressure_plate
setblock -11 27 -271 air
clone -11 25 -270 -11 25 -270 13 26 -204

tp @e[tag=hermit,tag=char] 27.2 43 -183.7 -75 0
data merge entity @e[tag=hermit,tag=char,limit=1] {Pose:{Head:[-5.0f,0.0f,0.0f]}}

execute unless entity @a[scores={playerid=1,charSpouse=2}] run summon armor_stand 7 26 -206 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:33,Unbreakable:1}}],Tags:["char","wife2","cnoc"],Rotation:[0f,0f],CustomName:'{"translate":"wife","color":"#FF8488"}',CustomNameVisible:1 ,NoGravity:1}
execute if entity @a[scores={playerid=1,charSpouse=2}] run summon armor_stand 7 26 -206 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:157,Unbreakable:1}}],Tags:["char","husband2","cnoc"],Rotation:[0f,0f],CustomName:'{"translate":"husband","color":"aqua"}',CustomNameVisible:1 ,NoGravity:1}

function glarth:mechanic/setup/extra/hide_bowm
summon armor_stand 16 26 -192 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:40,Unbreakable:1}}],Tags:["char","bowm","char_look","tbcLoc041"],Rotation:[180f,0f],CustomName:'{"translate":"bowm","color":"green"}',CustomNameVisible:1}

summon armor_stand -25 27 -250 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:354,Unbreakable:1}}],Tags:["char","villager"],Rotation:[90f,0f],CustomName:'{"translate":"villager","color":"#F4AB72"}',CustomNameVisible:1}

function glarth:mechanic/setup/extra/monk
tp @e[tag=monk,tag=char] -15 26 -194 180 0

function glarth:mechanic/setup/extra/brother
tp @e[tag=brother,tag=char] 17 26 -198 0 0

summon armor_stand -18 26 -196 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:73,Unbreakable:1}}],Tags:["char","uncle"],Rotation:[90f,0f],CustomName:'{"translate":"uncle","color":"gray"}',CustomNameVisible:1}
summon armor_stand 7 26 -220 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:71,Unbreakable:1}}],Tags:["char","citizen"],Rotation:[180f,0f],CustomName:'{"translate":"citizen","color":"gold"}',CustomNameVisible:1}
summon armor_stand 5 26 -219 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:52,Unbreakable:1}}],Tags:["char","explorer"],Rotation:[180f,0f],CustomName:'{"translate":"explorer","color":"#8C5800"}',CustomNameVisible:1}
summon armor_stand 4 26 -212 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:176,Unbreakable:1}}],Tags:["char","miner_chief","miner_light"],Rotation:[-90f,0f],CustomName:'{"translate":"miner_chief","color":"gray"}',CustomNameVisible:1}

 summon armor_stand -42 27 -234 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:183,Unbreakable:1}}],Tags:["char","char_look","snowman"],Rotation:[-33f,0f],CustomName:'{"translate":"snowman","color":"white"}',CustomNameVisible:1}
 
# Evoker
replaceitem entity @e[tag=evoker] armor.head diamond_hoe{CustomModelData:280}

# Farmer
replaceitem entity @e[tag=farmer] armor.head diamond_hoe{CustomModelData:286}
 
 # stray
summon armor_stand -60 27 -174 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:145,Unbreakable:1}}],Tags:["char","stray","char_look","tbcLoc002"],Rotation:[-110f,0f],CustomName:"{\"translate\":\"stray\",\"color\":\"aqua\"}",CustomNameVisible:1}
 
# Assassin
summon armor_stand -61.5 29.0 -256.0 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:34,Unbreakable:1}}],Tags:["char","assassin"],Rotation:[-70f,0f],CustomName:"{\"translate\":\"assassin\",\"color\":\"#282828\"}",CustomNameVisible:1}
 
#Thief Gold Trail
setblock -19 27 -262 minecraft:iron_trapdoor[facing=north]
setblock -20 28 -264 minecraft:iron_trapdoor[facing=north]
setblock -18 28 -265 minecraft:iron_trapdoor[facing=north]
setblock -19 28 -267 minecraft:iron_trapdoor[facing=north]
setblock -20 29 -269 minecraft:iron_trapdoor[facing=north]
setblock -21 28 -271 minecraft:iron_trapdoor[facing=north]
setblock -23 26 -272 minecraft:iron_trapdoor[facing=north]
setblock -21 27 -259 minecraft:iron_trapdoor[facing=south]
setblock -25 27 -256 minecraft:iron_trapdoor[facing=north]
setblock -28 27 -251 minecraft:iron_trapdoor[facing=south]

# Junkyard Banners
clone -58 19 -238 -58 19 -238 -59 32 -242
clone -58 19 -238 -58 19 -238 -41 31 -238
clone -57 19 -239 -57 19 -239 -31 32 -253
clone -57 19 -239 -57 19 -239 -28 33 -267
 
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
setblock 11 26 -247 grass
setblock 12 26 -253 grass
setblock 21 26 -249 grass
setblock 15 26 -245 grass

# Christmas 
summon minecraft:armor_stand 15.0 30.4 -196.4 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:282}}],Rotation:[180f,0f],Marker:1,Invisible:1,Tags:["asLoader"]}
summon minecraft:armor_stand 7.6 30.6 -187.0 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:283}}],Rotation:[90f,0f],Marker:1,Invisible:1,Tags:["asLoader"]}
summon minecraft:armor_stand 6.6 30.6 -193.0 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:284}}],Rotation:[90f,0f],Marker:1,Invisible:1,Tags:["asLoader"]}
summon minecraft:armor_stand 10.0 31.4 -194.4 {NoGravity:1,ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{CustomModelData:283}}],Rotation:[180f,0f],Marker:1,Invisible:1,Tags:["asLoader"]}

setblock 14 32 -197 lantern[hanging=false]
setblock 7 32 -188 lantern[hanging=false]
setblock 6 32 -193 lantern[hanging=false]
setblock 9 32 -195 lantern[hanging=false]


 # Drowned
kill @e[tag=drowned]
summon armor_stand 1 24 -141 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:276,Unbreakable:1}}],Tags:["char","drowned"],Rotation:[-20f,0f],CustomName:'{"translate":"drowned_frozen","color":"aqua"}',CustomNameVisible:1}
 
 # Pillagers
summon armor_stand -51 27 -190 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:260,Unbreakable:1}}],Tags:["char","char_look","pillager1","tbcLoc011"],Rotation:[180f,0f],CustomName:'{"translate":"pillager1","color":"gray"}',CustomNameVisible:1}
summon armor_stand -57 31 -194 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:260,Unbreakable:1}}],Tags:["char","char_look","pillager2","tbcLoc011"],Rotation:[-90f,0f],CustomName:'{"translate":"pillager2","color":"gray"}',CustomNameVisible:1}
summon armor_stand 10 27 -158 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:260,Unbreakable:1}}],Tags:["char","char_look","pillager3","tbcLoc031"],Rotation:[30f,0f],CustomName:'{"translate":"pillager3","color":"gray"}',CustomNameVisible:1}
summon armor_stand -9 28 -267 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:260,Unbreakable:1}}],Tags:["char","char_look","pillager4","tbcLoc052"],Rotation:[15f,0f],CustomName:'{"translate":"pillager4","color":"gray"}',CustomNameVisible:1}
summon armor_stand 17 26 -227 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:260,Unbreakable:1}}],Tags:["char","char_look","pillager5","tbcLoc052"],Rotation:[90f,0f],CustomName:'{"translate":"pillager5","color":"gray"}',CustomNameVisible:1}
summon armor_stand -34 26 -171 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:260,Unbreakable:1}}],Tags:["char","char_look","pillager6","tbcLoc002"],Rotation:[160f,0f],CustomName:'{"translate":"pillager6","color":"gray"}',CustomNameVisible:1}

# Illusioners
summon armor_stand 11 27 -145 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:266,Unbreakable:1}}],Tags:["char","char_look","illusioner1","tbcLoc031"],Rotation:[90f,0f],CustomName:'{"translate":"illusioner1","color":"blue"}',CustomNameVisible:1}
summon armor_stand -23 27 -125 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:266,Unbreakable:1}}],Tags:["char","char_look","illusioner2","tbcLoc031"],Rotation:[-120f,0f],CustomName:'{"translate":"illusioner2","color":"blue"}',CustomNameVisible:1}

# Vindicators
summon armor_stand -53 31 -199 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:267,Unbreakable:1}}],Tags:["char","char_look","vindicator1","tbcLoc011"],Rotation:[0f,0f],CustomName:'{"translate":"vindicator1","color":"gray"}',CustomNameVisible:1}
summon armor_stand -47 28 -259 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:267,Unbreakable:1}}],Tags:["char","char_look","vindicator2","tbcLoc023"],Rotation:[45f,0f],CustomName:'{"translate":"vindicator2","color":"gray"}',CustomNameVisible:1}
summon armor_stand -58 28 -240 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:267,Unbreakable:1}}],Tags:["char","char_look","vindicator3","tbcLoc023"],Rotation:[0f,0f],CustomName:'{"translate":"vindicator3","color":"gray"}',CustomNameVisible:1}

# Pillager Guard
summon armor_stand -42.5 27.0 -193.0 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:265,Unbreakable:1}}],Tags:["char","char_look","pillager_guard1"],Rotation:[-95f,0f],CustomName:'{"translate":"pillager_guard1","color":"gray"}',CustomNameVisible:1}
summon armor_stand -57 22 -204 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:265,Unbreakable:1}}],Tags:["char","char_look","pillager_guard2"],Rotation:[0f,0f],CustomName:'{"translate":"pillager_guard2","color":"gray"}',CustomNameVisible:1}

# Special Pillagers
summon armor_stand -35 27 -217 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:278,Unbreakable:1}}],Tags:["char","char_look","pillager_s1"],Rotation:[-45f,0f],CustomName:'{"translate":"pillager_s1","color":"white"}',CustomNameVisible:1}
summon armor_stand 8 26 -246 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:277,Unbreakable:1}}],Tags:["char","char_look","pillager_s2"],Rotation:[90f,0f],CustomName:'{"translate":"pillager_s2","color":"red"}',CustomNameVisible:1}
summon armor_stand -27 28 -187 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:268,Unbreakable:1}}],Tags:["char","char_look","pillager_s3"],Rotation:[135f,0f],CustomName:'{"translate":"pillager_s3","color":"dark_green"}',CustomNameVisible:1}

# Special Illusioners
summon armor_stand 49 27 -153 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:279,Unbreakable:1}}],Tags:["char","illusioner_s","tbcLoc061"],Rotation:[140f,0f],CustomName:'{"translate":"illusioner_s","color":"yellow"}',CustomNameVisible:1}

# Special Vindicators
summon armor_stand 51 26 -195 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:281,Unbreakable:1}}],Tags:["char","char_look","vindicator_s"],Rotation:[0f,0f],CustomName:'{"translate":"vindicator_s","color":"gray"}',CustomNameVisible:1}

# Bannerman
summon armor_stand 16 38 -231 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:269,Unbreakable:1}}],Tags:["char","bannerman_pillager","tbcLoc051"],Rotation:[-135f,0f],CustomName:'{"translate":"bannerman_pillager","color":"gray"}',CustomNameVisible:1}
summon armor_stand 1 28 -132 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:270,Unbreakable:1}}],Tags:["char","bannerman_illusioner","tbcLoc034"],Rotation:[90f,0f],CustomName:'{"translate":"bannerman_illusioner","color":"blue"}',CustomNameVisible:1}
summon armor_stand -40.0 28.0625 -270.0 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:271,Unbreakable:1}}],Tags:["char","bannerman_vindicator","tbcLoc023"],Rotation:[-10f,0f],CustomName:'{"translate":"bannerman_vindicator","color":"gray"}',CustomNameVisible:1}

# Advisors
summon armor_stand -48 21 -199 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:288,Unbreakable:1}}],Tags:["char","char_look","pillager_advisor1"],Rotation:[90f,0f],CustomName:'{"translate":"pillager_advisor1","color":"blue"}',CustomNameVisible:1}
summon armor_stand -50 23 -187 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:289,Unbreakable:1}}],Tags:["char","char_look","pillager_advisor2"],Rotation:[135f,0f],CustomName:'{"translate":"pillager_advisor2","color":"gray"}',CustomNameVisible:1}
summon armor_stand -53 21 -193 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:290,Unbreakable:1}}],Tags:["char","char_look","pillager_advisor3"],Rotation:[-65f,0f],CustomName:'{"translate":"pillager_advisor3","color":"gold"}',CustomNameVisible:1}


# Captain
summon armor_stand -57 21 -189 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:287,Unbreakable:1}}],Tags:["char","char_look","raid_leader","tbcLoc012"],Rotation:[-90f,0f],CustomName:'{"translate":"raid_leader","color":"gray"}',CustomNameVisible:1}



# Observatory Easteregg
summon armor_stand -76 38 -253 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1,Damage:210}}],Tags:["char","ender_guard1","charTorchEnd"],Rotation:[0f,0f],CustomName:"{\"translate\":\"ender_guard1\",\"color\":\"dark_purple\"}",CustomNameVisible:1}

# Newspaper Tip
tag @a remove tip27
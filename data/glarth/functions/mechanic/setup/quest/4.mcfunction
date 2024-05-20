 # Update Archaeologist
item replace entity @e[tag=archaeologist] armor.head with minecraft:diamond_hoe[damage=14]
# End Setup
summon area_effect_cloud 7 30 -196 {Radius:0.0f,Duration:2147483647,Tags:["endSetup"],CustomName:'"End Setup"',CustomNameVisible:0}
function glarth:mechanic/setup/extra/show_end


# broken iron trapdoor
setblock 21 26 -175 air


# unblock ice spike field
fill 3 29 -272 8 26 -283 air replace minecraft:barrier

# ice spike field 
fill 5 27 -271 5 26 -271 air replace minecraft:barrier

# gary
scoreboard players set garyMode Stats 0
execute if score forceGary Stats matches 1 run tag @a[gamemode=adventure] add doneGarySapphire
execute unless entity @a[gamemode=adventure,tag=doneGarySapphire] run summon armor_stand 30 27 -137 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":348,"minecraft:unbreakable":{}}}],Tags:["char","gibbs"],Rotation:[-45.0f,0.0f],CustomName:'{"translate":"gibbs","color":"gray"}',CustomNameVisible:1}
execute unless entity @a[gamemode=adventure,tag=doneGarySapphire] run function glarth:mechanic/setup/extra/empty_mines

execute if entity @a[gamemode=adventure,tag=doneGarySapphire] run summon armor_stand 171 26 -156 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":348,"minecraft:unbreakable":{}}}],Tags:["char","gibbs","f"],Rotation:[120.0f,0.0f],CustomName:'{"translate":"gibbs","color":"gray"}',CustomNameVisible:1}
execute if entity @a[gamemode=adventure,tag=doneGarySapphire] run tag @e[tag=mctsts] add gary
execute if entity @a[gamemode=adventure,tag=doneGarySapphire] run tag @e[tag=adri] add gary
execute if entity @a[gamemode=adventure,tag=doneGarySapphire] run tag @e[tag=suso] add gary
execute if entity @a[gamemode=adventure,tag=doneGarySapphire] run tag @e[tag=blacksmith] add gary
execute if entity @a[gamemode=adventure,tag=doneGarySapphire] run summon armor_stand 181.0 21.00 -159.0 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":70,"minecraft:unbreakable":{}}}],Tags:["char","roberto"],Rotation:[70.0f,0.0f],CustomName:'{"translate":"roberto2","color":"#282828"}',CustomNameVisible:1}
execute if entity @a[gamemode=adventure,tag=doneGarySapphire] run function glarth:mechanic/setup/extra/observatory
execute if entity @a[gamemode=adventure,tag=doneGarySapphire] run function glarth:mechanic/setup/extra/jerozgen
execute if entity @a[gamemode=adventure,tag=doneGarySapphire] run function glarth:mechanic/setup/extra/gary_mines
execute if entity @a[gamemode=adventure,tag=doneGarySapphire] run schedule function glarth:mechanic/tip/59 30s
execute if entity @a[gamemode=adventure,tag=doneGarySapphire] run scoreboard players set garyMode Stats 1
execute if score forceGary Stats matches 1 run scoreboard players set garyMode Stats 2

 # Snowflakes
summon minecraft:armor_stand 3 26 -280 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":165}}],Marker:1,Invisible:1,NoGravity:1,Tags:["asLoader"]}
summon minecraft:armor_stand 6 26 -276 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":165}}],Marker:1,Invisible:1,NoGravity:1,Tags:["asLoader"]}
summon minecraft:armor_stand 7 26 -283 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":165}}],Marker:1,Invisible:1,NoGravity:1,Tags:["asLoader"]}
summon minecraft:armor_stand 5 28 -324 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":165}}],Marker:1,Invisible:1,NoGravity:1,Tags:["asLoader"]}
 summon minecraft:armor_stand -4 28 -321 {ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:damage":165}}],Marker:1,Invisible:1,NoGravity:1,Tags:["asLoader"]}
 # Extra Characters
 summon armor_stand -35 33 -168 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":34,"minecraft:unbreakable":{}}}],Tags:["char","assassin"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"assassin","color":"#282828"}',CustomNameVisible:1}
summon armor_stand -11.0 26 -202 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":73,"minecraft:unbreakable":{}}}],Tags:["char","uncle"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"uncle","color":"gray"}',CustomNameVisible:1}
summon armor_stand 2 26 -284 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":31,"minecraft:unbreakable":{}}}],Tags:["char","enderman","cnoc"],Rotation:[-50.0f,0.0f],CustomName:'{"translate":"enderman","color":"dark_purple"}',CustomNameVisible:1}
 summon armor_stand -16 31 -277 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":145,"minecraft:unbreakable":{}}}],Tags:["char","stray","char_look","tbcLoc053"],Rotation:[-160.0f,0.0f],CustomName:'{"translate":"stray","color":"aqua"}',CustomNameVisible:1}
 summon armor_stand 15 28 -321 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":145,"minecraft:unbreakable":{}}}],Tags:["char","stray","char_look","tbcLoc053"],Rotation:[90.0f,0.0f],CustomName:'{"translate":"stray","color":"aqua"}',CustomNameVisible:1}
 summon armor_stand 0 26 -173 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":240,"minecraft:unbreakable":{}}}],Tags:["char","akid"],Rotation:[-90.0f,0.0f],CustomName:'{"translate":"akid","color":"red"}',CustomNameVisible:1}
 summon armor_stand 23.5 26.25 -290.5 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":183,"minecraft:unbreakable":{}}}],Tags:["char","char_look","snowman"],Rotation:[90.0f,0.0f],CustomName:'{"translate":"snowman","color":"white"}',CustomNameVisible:1}
summon armor_stand -34 26 -170 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":74,"minecraft:unbreakable":{}}}],Tags:["char","vampire"],Rotation:[80.0f,0.0f],CustomName:'{"translate":"vampire","color":"dark_red"}',CustomNameVisible:1}
summon armor_stand -37 28 -259 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":228,"minecraft:unbreakable":{}}}],Tags:["char","trader"],Rotation:[140.0f,0.0f],CustomName:'{"translate":"trader","color":"blue"}',CustomNameVisible:1}
function glarth:mechanic/setup/extra/monk

setblock -34 33 -169 campfire
setblock -34 32 -169 minecraft:hay_block

fill 3 27 -335 1 26 -337 air destroy

# Snow Foxes
summon fox -2 27 -317 {Type:"snow",HandItems:[{id:"golden_apple",count:1}]}
summon fox 13 28 -318 {Type:"snow",HandItems:[{id:"snowball",count:1}]}
summon fox -13 27 -299 {Type:"snow",HandItems:[{id:"gold_ingot",count:1}]}

# End Stone
summon minecraft:armor_stand 4 27 -328 {Marker:1,Invisible:1,Tags:["endStone","fire","asLoader"],Invulnerable:1,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":181}}],Fire:1000s}
summon minecraft:armor_stand 4 27 -329 {Marker:1,Invisible:1,Tags:["endStone","fire","asLoader"],Invulnerable:1,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":181}}],Fire:1000s}
summon minecraft:armor_stand 2 27 -330 {Marker:1,Invisible:1,Tags:["endStone","fire","asLoader"],Invulnerable:1,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":181}}],Fire:1000s}
summon minecraft:armor_stand 2 27 -331 {Marker:1,Invisible:1,Tags:["endStone","fire","asLoader"],Invulnerable:1,ArmorItems:[{},{},{},{id:"diamond_hoe",count:1,components:{"minecraft:custom_model_data":181}}],Fire:1000s}
		
		
# initialite posters
data modify storage glarth:translations Posters.EndDisease.South set value ['{"color":"#DEAD00","translate":"poster.end_disease"}', '{"color":"#DEAD01","translate":"poster.end_disease"}', '{"color":"#DEAD02","translate":"poster.end_disease"}', '{"color":"#DEAD03","translate":"poster.end_disease"}', '{"color":"#DEAD04","translate":"poster.end_disease"}', '{"color":"#DEAD05","translate":"poster.end_disease"}', '{"color":"#DEAD06","translate":"poster.end_disease"}', '{"color":"#DEAD07","translate":"poster.end_disease"}', '{"color":"#DEAD08","translate":"poster.end_disease"}', '{"color":"#DEAD09","translate":"poster.end_disease"}', '{"color":"#DEAD0A","translate":"poster.end_disease"}', '{"color":"#DEAD0B","translate":"poster.end_disease"}', '{"color":"#DEAD0C","translate":"poster.end_disease"}', '{"color":"#DEAD0D","translate":"poster.end_disease"}', '{"color":"#DEAD0E","translate":"poster.end_disease"}', '{"color":"#DEAD0F","translate":"poster.end_disease"}', '{"color":"#DEAD10","translate":"poster.end_disease"}', '{"color":"#DEAD11","translate":"poster.end_disease"}', '{"color":"#DEAD12","translate":"poster.end_disease"}', '{"color":"#DEAD13","translate":"poster.end_disease"}', '{"color":"#DEAD14","translate":"poster.end_disease"}', '{"color":"#DEAD15","translate":"poster.end_disease"}', '{"color":"#DEAD16","translate":"poster.end_disease"}', '{"color":"#DEAD17","translate":"poster.end_disease"}', '{"color":"#DEAD18","translate":"poster.end_disease"}', '{"color":"#DEAD19","translate":"poster.end_disease"}', '{"color":"#DEAD1A","translate":"poster.end_disease"}', '{"color":"#DEAD1B","translate":"poster.end_disease"}', '{"color":"#DEAD1C","translate":"poster.end_disease"}', '{"color":"#DEAD1D","translate":"poster.end_disease"}']
data modify storage glarth:translations Posters.EndDisease.West set value ['{"color":"#DEAD1E","translate":"poster.end_disease"}', '{"color":"#DEAD1F","translate":"poster.end_disease"}', '{"color":"#DEAD20","translate":"poster.end_disease"}', '{"color":"#DEAD21","translate":"poster.end_disease"}', '{"color":"#DEAD22","translate":"poster.end_disease"}', '{"color":"#DEAD23","translate":"poster.end_disease"}', '{"color":"#DEAD24","translate":"poster.end_disease"}', '{"color":"#DEAD25","translate":"poster.end_disease"}', '{"color":"#DEAD26","translate":"poster.end_disease"}', '{"color":"#DEAD27","translate":"poster.end_disease"}', '{"color":"#DEAD28","translate":"poster.end_disease"}', '{"color":"#DEAD29","translate":"poster.end_disease"}', '{"color":"#DEAD2A","translate":"poster.end_disease"}', '{"color":"#DEAD2B","translate":"poster.end_disease"}', '{"color":"#DEAD2C","translate":"poster.end_disease"}', '{"color":"#DEAD2D","translate":"poster.end_disease"}', '{"color":"#DEAD2E","translate":"poster.end_disease"}', '{"color":"#DEAD2F","translate":"poster.end_disease"}', '{"color":"#DEAD30","translate":"poster.end_disease"}', '{"color":"#DEAD31","translate":"poster.end_disease"}', '{"color":"#DEAD32","translate":"poster.end_disease"}', '{"color":"#DEAD33","translate":"poster.end_disease"}', '{"color":"#DEAD34","translate":"poster.end_disease"}', '{"color":"#DEAD35","translate":"poster.end_disease"}', '{"color":"#DEAD36","translate":"poster.end_disease"}', '{"color":"#DEAD37","translate":"poster.end_disease"}', '{"color":"#DEAD38","translate":"poster.end_disease"}', '{"color":"#DEAD39","translate":"poster.end_disease"}', '{"color":"#DEAD3A","translate":"poster.end_disease"}', '{"color":"#DEAD3B","translate":"poster.end_disease"}']
data modify storage glarth:translations Posters.EndDisease.North set value ['{"color":"#DEAD3C","translate":"poster.end_disease"}', '{"color":"#DEAD3D","translate":"poster.end_disease"}', '{"color":"#DEAD3E","translate":"poster.end_disease"}', '{"color":"#DEAD3F","translate":"poster.end_disease"}', '{"color":"#DEAD40","translate":"poster.end_disease"}', '{"color":"#DEAD41","translate":"poster.end_disease"}', '{"color":"#DEAD42","translate":"poster.end_disease"}', '{"color":"#DEAD43","translate":"poster.end_disease"}', '{"color":"#DEAD44","translate":"poster.end_disease"}', '{"color":"#DEAD45","translate":"poster.end_disease"}', '{"color":"#DEAD46","translate":"poster.end_disease"}', '{"color":"#DEAD47","translate":"poster.end_disease"}', '{"color":"#DEAD48","translate":"poster.end_disease"}', '{"color":"#DEAD49","translate":"poster.end_disease"}', '{"color":"#DEAD4A","translate":"poster.end_disease"}', '{"color":"#DEAD4B","translate":"poster.end_disease"}', '{"color":"#DEAD4C","translate":"poster.end_disease"}', '{"color":"#DEAD4D","translate":"poster.end_disease"}', '{"color":"#DEAD4E","translate":"poster.end_disease"}', '{"color":"#DEAD4F","translate":"poster.end_disease"}', '{"color":"#DEAD50","translate":"poster.end_disease"}', '{"color":"#DEAD51","translate":"poster.end_disease"}', '{"color":"#DEAD52","translate":"poster.end_disease"}', '{"color":"#DEAD53","translate":"poster.end_disease"}', '{"color":"#DEAD54","translate":"poster.end_disease"}', '{"color":"#DEAD55","translate":"poster.end_disease"}', '{"color":"#DEAD56","translate":"poster.end_disease"}', '{"color":"#DEAD57","translate":"poster.end_disease"}', '{"color":"#DEAD58","translate":"poster.end_disease"}', '{"color":"#DEAD59","translate":"poster.end_disease"}']
data modify storage glarth:translations Posters.EndDisease.East set value ['{"color":"#DEAD5A","translate":"poster.end_disease"}', '{"color":"#DEAD5B","translate":"poster.end_disease"}', '{"color":"#DEAD5C","translate":"poster.end_disease"}', '{"color":"#DEAD5D","translate":"poster.end_disease"}', '{"color":"#DEAD5E","translate":"poster.end_disease"}', '{"color":"#DEAD5F","translate":"poster.end_disease"}', '{"color":"#DEAD60","translate":"poster.end_disease"}', '{"color":"#DEAD61","translate":"poster.end_disease"}', '{"color":"#DEAD62","translate":"poster.end_disease"}', '{"color":"#DEAD63","translate":"poster.end_disease"}', '{"color":"#DEAD64","translate":"poster.end_disease"}', '{"color":"#DEAD65","translate":"poster.end_disease"}', '{"color":"#DEAD66","translate":"poster.end_disease"}', '{"color":"#DEAD67","translate":"poster.end_disease"}', '{"color":"#DEAD68","translate":"poster.end_disease"}', '{"color":"#DEAD69","translate":"poster.end_disease"}', '{"color":"#DEAD6A","translate":"poster.end_disease"}', '{"color":"#DEAD6B","translate":"poster.end_disease"}', '{"color":"#DEAD6C","translate":"poster.end_disease"}', '{"color":"#DEAD6D","translate":"poster.end_disease"}', '{"color":"#DEAD6E","translate":"poster.end_disease"}', '{"color":"#DEAD6F","translate":"poster.end_disease"}', '{"color":"#DEAD70","translate":"poster.end_disease"}', '{"color":"#DEAD71","translate":"poster.end_disease"}', '{"color":"#DEAD72","translate":"poster.end_disease"}', '{"color":"#DEAD73","translate":"poster.end_disease"}', '{"color":"#DEAD74","translate":"poster.end_disease"}', '{"color":"#DEAD75","translate":"poster.end_disease"}', '{"color":"#DEAD76","translate":"poster.end_disease"}', '{"color":"#DEAD77","translate":"poster.end_disease"}']
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
setblock 3 28 -214 birch_button[powered=true,face=wall,facing=east]
setblock 3 27 -211 birch_button[powered=true,face=wall,facing=east]
setblock 3 27 -208 acacia_wall_sign[facing=east]{front_text:{messages:['{"storage":"glarth:translations","nbt":"Posters.EndDisease.East[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}','""','""','""']}}
setblock 5 26 -203 acacia_wall_sign[facing=east]{front_text:{messages:['{"storage":"glarth:translations","nbt":"Posters.EndDisease.East[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}','""','""','""']}}
setblock 4 26 -201 birch_button[powered=true,face=wall,facing=east]
setblock 21 28 -200 birch_button[powered=true,face=wall,facing=east]
setblock 30 28 -182 birch_button[powered=true,face=wall,facing=east]
setblock -2 27 -181 birch_button[powered=true,face=wall,facing=east]
setblock -19 27 -198 birch_button[powered=true,face=wall,facing=south]
setblock -10 27 -199 birch_button[powered=true,face=wall,facing=south]
setblock -6 27 -199 acacia_wall_sign[facing=south]{front_text:{messages:['{"storage":"glarth:translations","nbt":"Posters.EndDisease.South[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}','""','""','""']}}
setblock 1 26 -198 birch_button[powered=true,face=wall,facing=south]
setblock 3 26 -200 birch_button[powered=true,face=wall,facing=south]
setblock 10 26 -201 birch_button[powered=true,face=wall,facing=south]
setblock 12 26 -199 acacia_wall_sign[facing=south]{front_text:{messages:['{"storage":"glarth:translations","nbt":"Posters.EndDisease.South[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}','""','""','""']}}
setblock 14 26 -198 birch_button[powered=true,face=wall,facing=south]
setblock 4 27 -221 birch_button[powered=true,face=wall,facing=south]
setblock 10 28 -221 acacia_wall_sign[facing=south]{front_text:{messages:['{"storage":"glarth:translations","nbt":"Posters.EndDisease.South[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}','""','""','""']}}
setblock 28 27 -177 birch_button[powered=true,face=wall,facing=south]
setblock 9 27 -176 birch_button[powered=true,face=wall,facing=south]
setblock 5 28 -176 birch_button[powered=true,face=wall,facing=south]
setblock -7 28 -180 acacia_wall_sign[facing=south]{front_text:{messages:['{"storage":"glarth:translations","nbt":"Posters.EndDisease.South[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}','""','""','""']}}
setblock -11 27 -180 birch_button[powered=true,face=wall,facing=south]
setblock -17 28 -180 acacia_wall_sign[facing=south]{front_text:{messages:['{"storage":"glarth:translations","nbt":"Posters.EndDisease.South[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}','""','""','""']}}
setblock 9 26 -202 birch_button[powered=true,face=wall,facing=west]
setblock 11 26 -200 birch_button[powered=true,face=wall,facing=west]
setblock 24 28 -200 birch_button[powered=true,face=wall,facing=west]
setblock 32 28 -193 acacia_wall_sign[facing=west]{front_text:{messages:['{"storage":"glarth:translations","nbt":"Posters.EndDisease.West[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}','""','""','""']}}
setblock 33 27 -179 birch_button[powered=true,face=wall,facing=west]
setblock 33 28 -175 acacia_wall_sign[facing=west]{front_text:{messages:['{"storage":"glarth:translations","nbt":"Posters.EndDisease.West[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}','""','""','""']}}
setblock 18 27 -185 birch_button[powered=true,face=wall,facing=west]
setblock 10 29 -212 birch_button[powered=true,face=wall,facing=west]
# Brewery
setblock -43 28 -192 birch_button[powered=true,face=wall,facing=north]
setblock -40 28 -196 birch_button[powered=true,face=wall,facing=east]
setblock -42 28 -190 birch_button[powered=true,face=wall,facing=south]
setblock -45 28 -204 birch_button[powered=true,face=wall,facing=east]
# Farm
setblock 0 27 -244 acacia_wall_sign[facing=east]{front_text:{messages:['{"storage":"glarth:translations","nbt":"Posters.EndDisease.East[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}','""','""','""']}}
setblock 0 28 -247 acacia_wall_sign[facing=east]{front_text:{messages:['{"storage":"glarth:translations","nbt":"Posters.EndDisease.East[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}','""','""','""']}}
setblock 8 27 -265 birch_button[powered=true,face=wall,facing=south]
setblock 8 26 -247 acacia_wall_sign[facing=west]{front_text:{messages:['{"storage":"glarth:translations","nbt":"Posters.EndDisease.West[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}','""','""','""']}}
# Misc
setblock 41 27 -190 acacia_wall_sign[facing=north]{front_text:{messages:['{"storage":"glarth:translations","nbt":"Posters.EndDisease.North[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}','""','""','""']}}
setblock -21 29 -124 acacia_wall_sign[facing=north]{front_text:{messages:['{"storage":"glarth:translations","nbt":"Posters.EndDisease.North[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}','""','""','""']}}
setblock -67 31 -179 birch_button[powered=true,face=wall,facing=east]
setblock 25 28 -152 birch_button[powered=true,face=wall,facing=west]
setblock 70 28 -254 acacia_wall_sign[facing=west]{front_text:{messages:['{"storage":"glarth:translations","nbt":"Posters.EndDisease.West[]","interpret":true,"font":"custom:poster/end_disease","separator":{"translate":"space.-1","font":"default"}}','""','""','""']}}


# gary no
clone 63 21 -232 60 17 -240 22 19 -217
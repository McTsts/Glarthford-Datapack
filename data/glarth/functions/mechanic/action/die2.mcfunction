# Prepare for Death 
execute if entity @s[tag=mourner,tag=b] run function glarth:mechanic/char/mourner_unfaint
execute if entity @s[tag=charUnloaded] run function glarth:mechanic/char/load
execute if entity @s[tag=asUnloaded] run function glarth:mechanic/as_load

# Kill
execute if score realms Stats matches 0 run scoreboard players set r Random 8
execute if score realms Stats matches 1 run scoreboard players set r Random 4
item replace entity @s weapon.mainhand with minecraft:black_carpet
data modify entity @s HandItems[0].tag.CustomNameOld set from entity @s CustomName
data modify entity @s HandItems[0].tag.ArmorItemsOld set from entity @s ArmorItems
function glarth:util/random
data merge entity @s {DisabledSlots:2036499}
execute if score n Random matches 1 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:83,Unbreakable:1}}],CustomName:"{\"translate\":\"item.grave\",\"color\":\"gray\"}",CustomNameVisible:1}
execute if score n Random matches 2 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:85,Unbreakable:1}}],CustomName:"{\"translate\":\"item.grave\",\"color\":\"gray\"}",CustomNameVisible:1}
execute if score n Random matches 3 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:87,Unbreakable:1}}],CustomName:"{\"translate\":\"item.grave\",\"color\":\"gray\"}",CustomNameVisible:1}
execute if score n Random matches 4 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:89,Unbreakable:1}}],CustomName:"{\"translate\":\"item.grave\",\"color\":\"gray\"}",CustomNameVisible:1}
execute if score n Random matches 5 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:82,Unbreakable:1}}],CustomName:"{\"translate\":\"item.grave\",\"color\":\"gray\"}",CustomNameVisible:1}
execute if score n Random matches 6 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:84,Unbreakable:1}}],CustomName:"{\"translate\":\"item.grave\",\"color\":\"gray\"}",CustomNameVisible:1}
execute if score n Random matches 7 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:86,Unbreakable:1}}],CustomName:"{\"translate\":\"item.grave\",\"color\":\"gray\"}",CustomNameVisible:1}
execute if score n Random matches 8 run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:88,Unbreakable:1}}],CustomName:"{\"translate\":\"item.grave\",\"color\":\"gray\"}",CustomNameVisible:1}

execute if entity @s[tag=asUnloaded] run data modify entity @s ArmorItems[0] set from entity @s ArmorItems[3]
execute if entity @s[tag=die2NN] run data merge entity @s {CustomNameVisible:0}
tag @s[tag=char_look] add deadChar_look
tag @s remove char_look
tag @s add deadChar
tag @s remove char
tag @s remove die2
execute if score quest Stats matches 4 run particle minecraft:portal ~ ~ ~ 0.5 0.5 0.5 0.5 100
execute as @e[type=shulker,distance=..5] run data merge entity @s {DeathTime:19s,Health:0.0f,Pos:[0.0,0.0,0.0]}
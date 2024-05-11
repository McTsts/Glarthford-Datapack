# Extra Characters
summon armor_stand -8 26 -199 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:70,Unbreakable:1}}],Tags:["char","roberto_fake"],Rotation:[0f,0f],CustomName:"{\"translate\":\"roberto\",\"color\":\"#282828\"}",CustomNameVisible:0,NoGravity:1}
summon armor_stand 173 26 -156 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:70,Unbreakable:1}}],Tags:["char","roberto","tbcLoc074"],Rotation:[115f,0f],CustomName:"{\"translate\":\"roberto\",\"color\":\"#282828\"}",CustomNameVisible:1}
summon armor_stand 101 26 -192 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:45,Unbreakable:1}}],Tags:["char","char_look","szombie","tbcLoc075"],Rotation:[45f,0f],CustomName:"{\"translate\":\"szombie\",\"color\":\"#00A975\"}",CustomNameVisible:1}
execute unless entity @a[scores={playerid=1,charSpouse=2}] run summon armor_stand 173 30 -161 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:33,Unbreakable:1}}],Tags:["char","wife"],Rotation:[90f,0f],CustomName:"{\"translate\":\"wife\",\"color\":\"#FF8488\"}",CustomNameVisible:1}
execute if entity @a[scores={playerid=1,charSpouse=2}] run summon armor_stand 173 30 -161 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:157,Unbreakable:1}}],Tags:["char","husband"],Rotation:[90f,0f],CustomName:"{\"translate\":\"husband\",\"color\":\"aqua\"}",CustomNameVisible:1}
function glarth:mechanic/setup/extra/characters_mines
function glarth:mechanic/setup/extra/monk
function glarth:mechanic/setup/extra/hide_bowm

summon minecraft:armor_stand 2 26 -199 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:102}}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[140f,0f],DisabledSlots:2039583,Marker:1,Tags:["asLoader"]}
summon minecraft:armor_stand 4 26 -205 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:102}}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[180f,0f],DisabledSlots:2039583,Marker:1,Tags:["asLoader"]}
summon minecraft:armor_stand 0 26 -198 {ArmorItems:[{},{},{},{id:"diamond_hoe",Count:1,tag:{Damage:102}}],NoGravity:1,Invisible:1,Invulnerable:1,Rotation:[50f,0f],DisabledSlots:2039583,Marker:1,Tags:["asLoader"]}

kill @e[tag=dockmaster]
kill @e[tag=archaeologist]

# Remove Golden Pickaxe
setblock -38 28 -269 air

# Observatory Easteregg
summon armor_stand -76 38 -253 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1,Damage:210}}],Tags:["char","ender_guard1","charTorchEnd"],Rotation:[0f,0f],CustomName:"{\"translate\":\"ender_guard1\",\"color\":\"dark_purple\"}",CustomNameVisible:1}

# Roberto Forced
fill -9 26 -199 -7 28 -199 minecraft:barrier

# Newspaper Tip
tag @a remove tip27
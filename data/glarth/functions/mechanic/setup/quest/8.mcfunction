# Nether
function glarth:mechanic/setup/extra/nether


forceload add -194 -194 -191 -188

# lock brewery
clone -48 31 -196 -48 31 -196 -49 31 -195
setblock -48 31 -196 minecraft:blue_glazed_terracotta[facing=north]
setblock -48 32 -196 minecraft:prismarine_brick_slab[type=top,waterlogged=false]
setblock -48 31 -195 minecraft:blue_glazed_terracotta[facing=west]

# open grave
fill -83 26 -204 -82 26 -204 air

# uncle
summon armor_stand -11.0 26 -202 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:488,Unbreakable:1}}],Tags:["char","uncle"],Rotation:[180f,0f],CustomName:"{\"translate\":\"uncle\",\"color\":\"gray\"}",CustomNameVisible:1}

# gibbs/vamp
summon armor_stand -34 26 -170 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:74,Unbreakable:1}}],Tags:["char","vampire"],Rotation:[80f,0f],CustomName:"{\"translate\":\"vampire\",\"color\":\"dark_red\"}",CustomNameVisible:1}
summon armor_stand 30 27 -137 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{CustomModelData:348,Unbreakable:1}}],Tags:["char","gibbs"],Rotation:[-45f,0f],CustomName:"{\"translate\":\"gibbs\",\"color\":\"gray\"}",CustomNameVisible:1}



# Observatory Easteregg
summon armor_stand -76 38 -253 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1,Damage:210}}],Tags:["char","ender_guard1","charTorchEnd"],Rotation:[0f,0f],CustomName:"{\"translate\":\"ender_guard1\",\"color\":\"dark_purple\"}",CustomNameVisible:1}

# Move Mourner
tp @e[tag=mourner] -81 27 -215 25 0


# Assassin
 summon armor_stand -35 33 -168 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Damage:34,Unbreakable:1}}],Tags:["char","assassin","notNether"],Rotation:[180f,0f],CustomName:"{\"translate\":\"assassin\",\"color\":\"#282828\"}",CustomNameVisible:1}
setblock -34 33 -169 campfire
setblock -34 32 -169 minecraft:hay_block


# Empty Mines
function glarth:mechanic/setup/extra/empty_mines

# gary #6
clone 63 21 -232 60 17 -240 22 19 -217
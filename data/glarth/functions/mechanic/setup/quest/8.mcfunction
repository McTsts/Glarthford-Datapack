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
summon armor_stand -11.0 26 -202 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":488,"minecraft:unbreakable":{}}}],Tags:["char","uncle"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"uncle","color":"gray"}',CustomNameVisible:1}

# gibbs/vamp
summon armor_stand -34 26 -170 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":74,"minecraft:unbreakable":{}}}],Tags:["char","vampire"],Rotation:[80.0f,0.0f],CustomName:'{"translate":"vampire","color":"dark_red"}',CustomNameVisible:1}
summon armor_stand 30 27 -137 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":348,"minecraft:unbreakable":{}}}],Tags:["char","gibbs"],Rotation:[-45.0f,0.0f],CustomName:'{"translate":"gibbs","color":"gray"}',CustomNameVisible:1}



# Observatory Easteregg
function glarth:mechanic/setup/extra/empty_observatory

# Move Mourner
tp @e[tag=mourner] -81 27 -215 25 0


# Assassin
 summon armor_stand -35 33 -168 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":34,"minecraft:unbreakable":{}}}],Tags:["char","assassin","notNether"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"assassin","color":"#282828"}',CustomNameVisible:1}
setblock -34 33 -169 campfire
setblock -34 32 -169 minecraft:hay_block


# Empty Mines
function glarth:mechanic/setup/extra/empty_mines

# gary #6
clone 63 21 -232 60 17 -240 22 19 -217
kill @e[tag=ghastDis]
kill @e[tag=ghastName]
playsound minecraft:entity.ghast.death hostile @a -192 28 -195 1 1

kill @e[tag=piglin2cut]
summon armor_stand -192 29 -189 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:custom_model_data":482,"minecraft:unbreakable":{}}}],Tags:["char","piglin2cut","angryPiglin","cnoc"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"piglin2","color":"light_purple"}',CustomNameVisible:1}

setblock -192 27 -192 minecraft:nether_bricks
setblock -193 27 -190 minecraft:nether_bricks
setblock -192 28 -194 air
setblock -193 27 -191 minecraft:nether_brick_slab[type=bottom,waterlogged=false]
setblock -192 27 -190 minecraft:nether_brick_slab[type=bottom,waterlogged=false]
setblock -191 27 -192 minecraft:nether_brick_slab[type=bottom,waterlogged=false]

schedule function glarth:dialogue/piglin2/lines/cutscene1 60t

tag @e[tag=events] add nether1
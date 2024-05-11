summon armor_stand 82 32 -186 {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:damage":176,"minecraft:unbreakable":{}}}],Tags:["char","miner_chief","miner_light"],Rotation:[115.0f,0.0f],CustomName:'{"translate":"miner_chief","color":"gray"}',CustomNameVisible:0}
fill 65 33 -193 65 31 -195 minecraft:air

fill 79 32 -184 80 33 -182 diamond_ore replace minecraft:emerald_ore

# Hide Gravel Cave In
fill 97 34 -170 99 32 -170 stone
fill 99 34 -170 98 34 -170 minecraft:cobblestone
setblock 97 32 -170 andesite
setblock 97 32 -171 air
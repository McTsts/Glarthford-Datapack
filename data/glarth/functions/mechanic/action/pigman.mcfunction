summon armor_stand ~ ~0.5 ~ {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:unbreakable":{},"minecraft:damage":27}}],Tags:["char","pigman2","tbcLoc003"],Rotation:[180.0f,0.0f],CustomName:'{"translate":"spigman","color":"light_purple"}',Team:"light_purple",CustomNameVisible:1}
tp @e[tag=pigman2] @s
data merge entity @s {Health:0.0f,DeathTime:19s}


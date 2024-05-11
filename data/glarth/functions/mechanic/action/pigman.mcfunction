summon armor_stand ~ ~0.5 ~ {Invulnerable:1b,Invisible:1b,DisabledSlots:2036499,ArmorItems:[{},{id:"minecraft:chainmail_leggings",Count:1b},{id:"minecraft:chainmail_chestplate",Count:1b},{id:"minecraft:diamond_hoe",Count:1b,tag:{Unbreakable:1,Damage:27}}],Tags:["char","pigman2","tbcLoc003"],Rotation:[180f,0f],CustomName:"{\"translate\":\"spigman\",\"color\":\"light_purple\"}",Team:light_purple,CustomNameVisible:1}
tp @e[tag=pigman2] @s
data merge entity @s {Health:0.0f,DeathTime:19s}


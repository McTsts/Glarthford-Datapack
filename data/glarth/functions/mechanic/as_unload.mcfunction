data modify entity @s[type=armor_stand,tag=!armor_as] ArmorItems[0] set from entity @s ArmorItems[3]
data modify entity @s[type=armor_stand,tag=!armor_as] ArmorItems[3] set value {}
data merge entity @s[type=armor_stand] {NoGravity:1}
data merge entity @s[type=!armor_stand] {NoGravity:1,NoAI:1,Silent:1}
data merge entity @s[type=cod] {NoGravity:1,NoAI:1,Silent:1}
data merge entity @s[type=squid] {Invulnerable:1}
data merge entity @s[type=cod] {Invulnerable:1}
tag @s add asUnloaded
execute at @s[tag=!asLoaderKeep] run tp @s ~ ~1000 ~
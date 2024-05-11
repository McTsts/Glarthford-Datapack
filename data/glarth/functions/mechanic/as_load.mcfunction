data modify entity @s[type=armor_stand,tag=!armor_as] ArmorItems[3] set from entity @s ArmorItems[0]
data modify entity @s[type=armor_stand,tag=!armor_as] ArmorItems[0] set value {}
data merge entity @s[type=!armor_stand] {NoGravity:0,NoAI:0,Silent:0}
data merge entity @s[type=squid] {Invulnerable:0}
data merge entity @s[type=cod] {Invulnerable:0}
tag @s remove asUnloaded
execute at @s[tag=!asLoaderKeep] run tp @s ~ ~-1000 ~
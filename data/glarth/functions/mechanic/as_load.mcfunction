data modify entity @s[type=armor_stand,tag=!armor_as] ArmorItems[3] set from entity @s ArmorItems[0]
data modify entity @s[type=armor_stand,tag=!armor_as] ArmorItems[0] set value {}
data merge entity @s[type=!armor_stand,tag=!foxSleep] {NoGravity:0,NoAI:0,Silent:0}
data merge entity @s[type=fox,tag=foxSleep] {NoGravity:0,Silent:0}
data merge entity @s[type=#glarth:aquatic] {Invulnerable:0}
data merge entity @s[type=ocelot] {Silent:1}
tag @s remove asUnloaded
execute at @s[tag=!asLoaderKeep] run tp @s ~ ~-1000 ~
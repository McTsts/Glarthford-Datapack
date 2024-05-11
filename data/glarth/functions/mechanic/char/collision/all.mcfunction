execute as @e[type=armor_stand,tag=char,tag=!cnoc,distance=..5] at @s if block ~ ~ ~ #glarth:not_solid run function glarth:mechanic/char/collision/active

execute as @e[type=armor_stand,tag=char,tag=!cnoc,distance=5..10,tag=hasC] at @s run function glarth:mechanic/char/collision/remove

execute as @e[type=armor_stand,tag=char_collision,distance=..3] at @s unless entity @e[type=armor_stand,tag=char,tag=!cnoc,distance=..2] run kill @s
execute as @e[type=shulker,tag=char_collision,distance=..3] at @s unless entity @e[type=armor_stand,tag=char,tag=!cnoc,distance=..2] run data merge entity @s {Health:0.0f,DeathTime:19s}


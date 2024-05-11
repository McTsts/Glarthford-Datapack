execute as @e[type=shulker,tag=char_collision,distance=..2] run data merge entity @s {Health:0.0f,DeathTime:19s}
kill @e[type=armor_stand,tag=char_collision,distance=..2]
tag @s remove hasC
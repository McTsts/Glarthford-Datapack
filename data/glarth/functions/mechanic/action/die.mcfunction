tag @s add canDie
tag @s remove char_look
execute as @a[gamemode=adventure] at @s run tag @e[distance=..15,tag=canDie] remove canDie
execute as @s[tag=canDie] at @s as @e[type=shulker,distance=..5] run data merge entity @s {DeathTime:19s,Health:0.0f}
kill @s[tag=canDie]

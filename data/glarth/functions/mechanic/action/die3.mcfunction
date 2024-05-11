tag @s add canDie
execute as @a[gamemode=adventure] at @s run tag @e[distance=..25,tag=canDie] remove canDie
data merge entity @s[tag=canDie] {DeathTime:19s,Health:0.0f}
execute as @s[tag=canDie] at @s as @e[type=shulker,distance=..5] run data merge entity @s {DeathTime:19s,Health:0.0f}
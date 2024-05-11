execute as @a at @s as @e[tag=magicLight,tag=a,distance=19..] run data modify entity @s ArmorItems[3].id set value diamond_hoe
execute as @a at @s as @e[tag=magicLight,tag=a,distance=19..] run tag @s remove a
execute as @a at @s as @e[tag=magicLight,tag=!a,distance=..18] run data modify entity @s ArmorItems[3].id set value black_carpet
execute as @a at @s as @e[tag=magicLight,tag=!a,distance=..18] run tag @s add a

execute as @e[type=witch] run data merge entity @s {DeathTime:19s,Health:0.0f}
execute as @e[type=minecraft:zombified_piglin] run data merge entity @s {DeathTime:19s,Health:0.0f}
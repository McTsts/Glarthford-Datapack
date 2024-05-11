#forceload remove 534 28 241 -159

execute as @a[gamemode=spectator] at @s unless entity @p[gamemode=adventure,distance=..10] run tp @s @r[gamemode=adventure]


# restore armor
item replace entity @e[tag=char] armor.legs with minecraft:chainmail_leggings[] 1
item replace entity @e[tag=char] armor.chest with minecraft:chainmail_chestplate[] 1
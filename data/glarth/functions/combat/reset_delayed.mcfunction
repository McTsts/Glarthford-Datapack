#forceload remove 534 28 241 -159

execute as @a[gamemode=spectator] at @s unless entity @p[gamemode=adventure,distance=..10] run tp @s @r[gamemode=adventure]


# restore armor
item replace entity @e[tag=char] armor.legs with chainmail_leggings{display:{LocName:"empty"}} 1
item replace entity @e[tag=char] armor.chest with chainmail_chestplate{display:{LocName:"empty"}} 1
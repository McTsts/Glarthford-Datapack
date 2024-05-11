tag @s add charTemp
execute positioned ~ ~-1.5 ~ as @e[type=armor_stand,tag=charQB,limit=1,sort=nearest] if entity @s[tag=tbcPlayerAS1] as @a[scores={playerid=1}] run loot replace entity @e[type=armor_stand,tag=charTemp] armor.head loot glarth:custom/skull
execute positioned ~ ~-1.5 ~ as @e[type=armor_stand,tag=charQB,limit=1,sort=nearest] if entity @s[tag=tbcPlayerAS2] as @a[scores={playerid=2}] run loot replace entity @e[type=armor_stand,tag=charTemp] armor.head loot glarth:custom/skull
execute positioned ~ ~-1.5 ~ as @e[type=armor_stand,tag=charQB,limit=1,sort=nearest] if entity @s[tag=tbcPlayerAS3] as @a[scores={playerid=3}] run loot replace entity @e[type=armor_stand,tag=charTemp] armor.head loot glarth:custom/skull
data modify entity @s HandItems[0] merge from entity @s ArmorItems[3]
data remove entity @s ArmorItems[3]
tag @s remove charTemp
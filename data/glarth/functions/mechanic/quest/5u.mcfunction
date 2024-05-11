#Slime Small
execute as @e[type=slime,tag=!minion,tag=!boss,tag=!beeHiveSlime] run kill @s

execute as @a[tag=!tip48] if data entity @s Inventory[{id:"minecraft:iron_horse_armor"}] run function glarth:mechanic/tip/48
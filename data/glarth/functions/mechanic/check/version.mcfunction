give @r minecraft:netherite_ingot
execute if entity @a[nbt={Inventory:[{id:"minecraft:netherite_ingot"}]}] run scoreboard players set version Check 1
execute unless entity @p run scoreboard players set version Check 1
execute if entity @p unless entity @a[nbt={Inventory:[{id:"minecraft:netherite_ingot"}]}] run tellraw @a {"translate":"wrong_version.msg","color":"red","with":["1.16.3"]}
execute if entity @p unless entity @a[nbt={Inventory:[{id:"minecraft:netherite_ingot"}]}] run scoreboard players set version Check 0
clear @a minecraft:netherite_ingot
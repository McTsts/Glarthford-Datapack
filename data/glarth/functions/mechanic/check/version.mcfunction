give @r minecraft:frogspawn
execute if entity @a[nbt={Inventory:[{id:"minecraft:frogspawn"}]}] run scoreboard players set version Check 1
execute unless entity @p run scoreboard players set version Check 1
execute if entity @p unless entity @a[nbt={Inventory:[{id:"minecraft:frogspawn"}]}] run tellraw @a {"translate":"wrong_version.msg","color":"red","with":["1.19.2"]}
execute if entity @p unless entity @a[nbt={Inventory:[{id:"minecraft:frogspawn"}]}] run scoreboard players set version Check 0
clear @a minecraft:frogspawn
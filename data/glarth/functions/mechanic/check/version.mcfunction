give @r minecraft:armadillo_scute
execute if entity @a[nbt={Inventory:[{id:"minecraft:armadillo_scute"}]}] run scoreboard players set version Check 1
execute unless entity @p run scoreboard players set version Check 1
execute if entity @p unless entity @a[nbt={Inventory:[{id:"minecraft:armadillo_scute"}]}] run tellraw @a {"translate":"wrong_version.msg","color":"red","with":["1.20.6"]}
execute if entity @p unless entity @a[nbt={Inventory:[{id:"minecraft:armadillo_scute"}]}] run scoreboard players set version Check 0
clear @a minecraft:armadillo_scute
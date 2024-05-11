give @r minecraft:music_disc_otherside
execute if entity @a[nbt={Inventory:[{id:"minecraft:music_disc_otherside"}]}] run scoreboard players set version Check 1
execute unless entity @p run scoreboard players set version Check 1
execute if entity @p unless entity @a[nbt={Inventory:[{id:"minecraft:music_disc_otherside"}]}] run tellraw @a {"translate":"wrong_version.msg","color":"red","with":["1.18"]}
execute if entity @p unless entity @a[nbt={Inventory:[{id:"minecraft:music_disc_otherside"}]}] run scoreboard players set version Check 0
clear @a minecraft:music_disc_otherside
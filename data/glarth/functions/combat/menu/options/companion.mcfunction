# Pre
scoreboard players set compDone Temp 0
tellraw @a[distance=..0.5] ""

# Get
data modify storage glarth:main temp set value []
execute if score @s playerid matches 1 run data modify storage glarth:main temp set from storage glarth:main combat.comp[0]
execute if score @s playerid matches 2 run data modify storage glarth:main temp set from storage glarth:main combat.comp[1]
execute if score @s playerid matches 3 run data modify storage glarth:main temp set from storage glarth:main combat.comp[2]

# Horse
execute if data storage glarth:main temp[{id:"pig"}] run scoreboard players set compDone Temp 1
execute if data storage glarth:main temp[{id:"pig"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.companion.pig","italic":true,"color":"gray"}]

# Horse
execute if data storage glarth:main temp[{id:"horse"}] run scoreboard players set compDone Temp 1
execute if data storage glarth:main temp[{id:"horse"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.companion.horse","italic":true,"color":"gray"}]

# Strider
execute if data storage glarth:main temp[{id:"strider"}] run scoreboard players set compDone Temp 1
execute if data storage glarth:main temp[{id:"strider"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.companion.strider","italic":true,"color":"gray"}]

# Strider
execute if data storage glarth:main temp[{id:"polar_bear"}] run scoreboard players set compDone Temp 1
execute if data storage glarth:main temp[{id:"polar_bear"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.companion.bear","italic":true,"color":"gray"}]

# Wolf
execute if data storage glarth:main temp[{id:"wolf"}] run scoreboard players set compDone Temp 1
execute if data storage glarth:main temp[{id:"wolf"}] run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.companion.wolf","italic":true,"color":"gray"}]

# MSG
execute if score compDone Temp matches ..0 run tellraw @a[distance=..0.5] ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.companion.none","color":"gray"}]

execute as @s[tag=!tip33] run function glarth:mechanic/tip/33
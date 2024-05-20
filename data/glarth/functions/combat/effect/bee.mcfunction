tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.bee","with":[{"text":"3.±","color":"red"}]}]
scoreboard players remove @s[type=!player] tbcHealth 30
scoreboard players remove @s[type=player] tbcHealth 3
scoreboard players remove @s tbcBee 1
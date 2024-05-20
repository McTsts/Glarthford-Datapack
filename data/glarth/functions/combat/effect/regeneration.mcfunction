tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.regeneration","with":[{"text":"1.±","color":"red"}]}]
scoreboard players add @s[type=!player] tbcHealth 10
scoreboard players add @s[type=player] tbcHealth 1
scoreboard players remove @s tbcRegeneration 1
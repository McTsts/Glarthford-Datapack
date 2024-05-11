tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.regeneration","with":[{"text":"1.±","color":"red"}]}]
scoreboard players add @s[type=!player] tbcHealth 10
scoreboard players add @s[type=player] tbcHealth 1
scoreboard players remove @s tbcRegeneration 1
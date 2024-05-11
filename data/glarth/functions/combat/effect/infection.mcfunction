tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.infected","with":[{"text":"2.±","color":"red"}]}]
scoreboard players remove @s tbcStamina 2
scoreboard players remove @s tbcInfection 1
execute if score @s tbcStamina matches 20 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.saturated","with":[{"text":"4.±","color":"red"}]}]
execute if score @s tbcStamina matches 19 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.saturated","with":[{"text":"3.±","color":"red"}]}]
execute if score @s tbcStamina matches 18 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.saturated","with":[{"text":"2.±","color":"red"}]}]
execute if score @s tbcStamina matches 17 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.saturated","with":[{"text":"1.±","color":"red"}]}]
execute if score @s tbcStamina matches 20 run scoreboard players add @s tbcHealth 4
execute if score @s tbcStamina matches 19 run scoreboard players add @s tbcHealth 3
execute if score @s tbcStamina matches 18 run scoreboard players add @s tbcHealth 2
execute if score @s tbcStamina matches 17 run scoreboard players add @s tbcHealth 1
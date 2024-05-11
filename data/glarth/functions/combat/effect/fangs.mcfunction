execute if score @s tbcArmor matches ..6 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.fangs","with":[{"text":"5.±","color":"red"}]}]
execute if score @s tbcArmor matches ..6 run scoreboard players remove @s[type=player] tbcHealth 5
execute if score @s tbcArmor matches 6..15 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.fangs","with":[{"text":"4.±","color":"red"}]}]
execute if score @s tbcArmor matches 6..15 run scoreboard players remove @s[type=player] tbcHealth 4
execute if score @s tbcArmor matches 16..25 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.fangs","with":[{"text":"3.±","color":"red"}]}]
execute if score @s tbcArmor matches 16..25 run scoreboard players remove @s[type=player] tbcHealth 3
execute if score @s tbcArmor matches 26.. run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.fangs","with":[{"text":"2.±","color":"red"}]}]
execute if score @s tbcArmor matches 26.. run scoreboard players remove @s[type=player] tbcHealth 2
tag @s add tbcEFHit
execute at @s run playsound minecraft:entity.evoker_fangs.attack player @s ~ ~ ~ 1 0.5

# Sound
execute at @s run playsound minecraft:entity.player.hurt player @s ~ ~ ~ 1 1
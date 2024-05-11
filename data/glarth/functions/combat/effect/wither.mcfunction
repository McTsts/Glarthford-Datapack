tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.withered","with":[{"text":"3.±","color":"red"}]}]
scoreboard players remove @s tbcHealth 3
scoreboard players remove @s tbcWither 1

# Sound
execute at @s run playsound minecraft:entity.player.hurt player @s ~ ~ ~ 1 1
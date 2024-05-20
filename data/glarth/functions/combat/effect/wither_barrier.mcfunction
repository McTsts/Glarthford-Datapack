scoreboard players remove @s[type=player] tbcHealth 3
tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.wither_barrier","with":[{"text":"3.±","color":"red"}]}]
scoreboard players add @s tbcWither 2
execute at @s run playsound minecraft:entity.wither.ambient player @a ~ ~ ~ 1 1
tag @s add tbcWBHit

# Sound
execute at @s run playsound minecraft:entity.player.hurt player @s ~ ~ ~ 1 1
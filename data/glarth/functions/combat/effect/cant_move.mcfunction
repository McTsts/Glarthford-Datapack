execute if score @s tbcCantMove matches 2.. run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.cant_move"}]
execute if score @s tbcCantMove matches 1 at @e[tag=tbcSelPlayerAS] run data merge entity @e[tag=charQ5,limit=1,sort=nearest] {ArmorItems:[]}
scoreboard players remove @s tbcCantMove 1
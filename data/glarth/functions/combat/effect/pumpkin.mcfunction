execute if score @s tbcPumpkin matches 2.. run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.pumpkin"}]
execute if score @s tbcPumpkin matches 1 if entity @s[type=player] run item replace entity @s armor.head with air
execute if score @s tbcPumpkin matches 1 if entity @s[type=player] at @e[tag=tbcSelPlayerAS] run data merge entity @e[tag=charQ5,limit=1,sort=nearest] {ArmorItems:[]}
execute if score @s tbcPumpkin matches 1 if entity @s[type=!player] at @s run data merge entity @e[tag=charQA2,limit=1,sort=nearest] {ArmorItems:[]}
scoreboard players remove @s tbcPumpkin 1
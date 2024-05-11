execute if entity @s[type=armor_stand] run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.blinded"}]
execute as @s[type=player] run scoreboard players remove @s tbcBlindness 1
#decreased in done function
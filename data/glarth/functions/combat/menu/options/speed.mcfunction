tellraw @a[distance=..0.5] ["\n",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.speed","bold":true,"color":"gray"}]
execute at @s as @s run function glarth:combat/menu/util/print_speed
execute at @s as @a[distance=0.1..,tag=inTBC,gamemode=adventure] run function glarth:combat/menu/util/print_speed
execute at @s as @e[tag=tbcAlly] run function glarth:combat/menu/util/print_speed
execute at @s as @e[tag=tbcCompanion] run function glarth:combat/menu/util/print_speed
execute at @s as @e[tag=tbcEnemy] run function glarth:combat/menu/util/print_speed

execute as @s[tag=!tip34] run function glarth:mechanic/tip/34
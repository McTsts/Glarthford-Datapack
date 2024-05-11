# Message 
execute store result storage ntca:io in int 1 run scoreboard players get damage tbcStats
function ntcadec:call

tellraw @a ["",[{"nbt":"ArmorItems[0].tag.CustomName","entity":"@e[tag=tbcTurn]","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.aoe","with":[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"}]}]


# Damage
execute as @e[tag=tbcEnemy,tag=!tbcUnselectable,tag=!tbcBlock] unless score @s tbcArmor matches 100.. run function glarth:combat/action_companion/util/aoe_damage

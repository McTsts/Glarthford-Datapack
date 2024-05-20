# Message 
execute store result storage ntca:io in int 1 run scoreboard players get damage tbcStats
function ntcadec:call

tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s","interpret":true}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.aoe","with":[{"nbt":"out","storage":"ntca:io","interpret":true,"color":"red"}]}]


# Damage
scoreboard players set extraMulti tbcStats 5
scoreboard players set extraWeak tbcStats 0
execute as @e[tag=tbcEnemy,tag=!tbcUnselectable,tag=!tbcBlock] unless score @s tbcSel matches 1 unless score @s tbcArmor matches 100.. run function glarth:combat/action/util/deal_damage
execute as @e[tag=tbcEnemy,tag=!tbcUnselectable,tag=!tbcBlock] if score @s tbcSel matches 1 if score dodged tbcStats matches 0 unless score @s tbcArmor matches 100.. run function glarth:combat/action/util/deal_damage


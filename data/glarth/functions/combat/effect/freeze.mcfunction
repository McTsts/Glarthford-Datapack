# Escape
scoreboard players set r Random 11
function glarth:util/rand_tbc
execute unless score @s tbcFreeze matches 1.. run scoreboard players set n Random 1000
execute unless entity @s[tag=tbcAllowBF_Freeze] run scoreboard players set n Random 1000
execute unless entity @s[tag=tbcAllowBF_Freeze] run tag @s add tbcAllowBF_Freeze
execute if score n Random <= @s tbcEscape run scoreboard players operation @s tbcFreeze < 0 Const
execute if score n Random <= @s tbcEscape run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.broke_free","with":[{"translate":"tbc.attack.msg.name.freeze2"}]}]
execute if score n Random <= @s tbcEscape at @s run particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 1 20
execute if score n Random <= @s tbcEscape at @s run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1 0.7
execute if score n Random <= @s tbcEscape if entity @s[tag=tbcEnemy,scores={tbcHealth=1..}] unless score @s tbcAttack matches 1.. run function glarth:combat/turn_init_enemy

# Frozen
execute if score @s tbcFreeze matches 3.. run scoreboard players remove @s[tag=tbcEnderPriest] tbcFreeze 2
execute if score @s tbcFreeze matches 1.. run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.frozen2"}]
execute if score @s tbcFreeze matches 1.. run function glarth:combat/done
scoreboard players remove @s tbcFreeze 1


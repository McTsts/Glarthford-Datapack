# Escape
scoreboard players set r Random 10
function glarth:util/rand_tbc
execute unless entity @s[tag=tbcAllowBF_Stun] run scoreboard players set n Random 1000
execute unless entity @s[tag=tbcAllowBF_Stun] run tag @s add tbcAllowBF_Stun
execute if score n Random <= @s tbcEscape run scoreboard players operation @s tbcStun < 0 Const
execute if score n Random <= @s tbcEscape run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.broke_free","with":[{"translate":"tbc.attack.msg.name.stun2"}]}]
execute if score n Random <= @s tbcEscape at @s run particle minecraft:happy_villager ~ ~ ~ 0.5 0.5 0.5 1 20
execute if score n Random <= @s tbcEscape at @s run tag @s remove stunned
execute if score n Random <= @s tbcEscape at @s run data merge entity @s {Pose:{Head:[0f,0f,0f]}}
execute if score n Random <= @s tbcEscape at @s run function glarth:combat/set_loc
execute if score n Random <= @s tbcEscape at @s run playsound minecraft:entity.zombie.break_wooden_door hostile @a ~ ~ ~ 1 0.7
execute if score n Random <= @s tbcEscape if entity @s[tag=tbcEnemy,scores={tbcHealth=1..}] unless score @s tbcAttack matches 1.. run function glarth:combat/turn_init_enemy

# Effect
execute if score @s tbcStun matches 1.. run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s","interpret":true}],{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s[type=!player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.stunned"}]
execute if score @s tbcStun matches 1.. run function glarth:combat/done
scoreboard players remove @s tbcStun 1
scoreboard players operation @s tbcStun > 0 Const


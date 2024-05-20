execute as @e[type=!player,tag=tbcTarget,limit=1] run scoreboard players set @s tbcArmor 0
execute as @a[tag=tbcTarget,limit=1] run function glarth:combat/armor
scoreboard players operation damage tbcStats > 0 Const
execute if score lobbyTBC Stats matches 2 run scoreboard players operation damage tbcStats *= 2 Const
scoreboard players operation damageDis tbcStats = damage tbcStats
scoreboard players operation damageDis tbcStats /= 10 Const


# Blindness Miss
execute if entity @e[tag=tbcTurn,scores={tbcBlindness=1..}] run function glarth:combat/action_enemy/util/damage_miss

# Armor
execute if score @s blocked matches 0 run function glarth:combat/action_enemy/util/damage_apply_armor

# Damage to Char Array
execute if score damageDis tbcStats matches ..-1 run scoreboard players set damageDis tbcStats 0
execute store result storage ntca:io in int 10 run scoreboard players get damageDis tbcStats
function ntcadec:call

# Damage / Block
execute if score @s blocked matches 2 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@e[tag=tbcTurn,type=!player]","interpret":true},{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@e[tag=tbcTurn,type=player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.miss","with":[[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s[type=!player]","interpret":true}]]}]
execute if score @s blocked matches 1 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@e[tag=tbcTurn,type=!player]","interpret":true},{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@e[tag=tbcTurn,type=player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.blocked","with":[[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s[type=!player]","interpret":true}]]}]
execute if score @s blocked matches 0 run function glarth:combat/action_enemy/util/damage_apply_damage
scoreboard players set damageType tbcStats 0
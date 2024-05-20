scoreboard players set @s tbcAttack 228
execute if score evilAttackData Temp matches 1 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.potion.swiftness","bold":true}]}]
execute if score evilAttackData Temp matches 2 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.potion.fire_resistance","bold":true}]}]
execute if score evilAttackData Temp matches 3 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.potion.healing","bold":true}]}]
execute if score evilAttackData Temp matches 4 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.potion.milk","bold":true}]}]
function glarth:combat/attack_init

scoreboard players set @s attack_228 0
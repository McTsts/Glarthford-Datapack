scoreboard players set @s tbcAttack 226
execute if score evilAttackData Temp matches 1 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.damage_staff","bold":true}]}]
execute if score evilAttackData Temp matches 2 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.water_staff","bold":true}]}]
execute if score evilAttackData Temp matches 3 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.fire_staff","bold":true}]}]
execute if score evilAttackData Temp matches 4 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.wind_staff","bold":true}]}]
execute if score evilAttackData Temp matches 5 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.earth_staff","bold":true}]}]
execute if score evilAttackData Temp matches 6 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.poison_staff","bold":true}]}]
execute if score evilAttackData Temp matches 7 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.wither_staff","bold":true}]}]
function glarth:combat/attack_init

scoreboard players set @s attack_226 0
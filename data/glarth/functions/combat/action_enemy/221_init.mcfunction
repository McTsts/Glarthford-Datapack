scoreboard players set @s tbcAttack 221
execute as @e[tag=tbcTarget,limit=1] run function glarth:combat/action/blocking_init
execute if score evilAttackData Temp matches 1 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.melee.stone_pickaxe","bold":true}]}]
execute if score evilAttackData Temp matches 2 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.melee.wooden_sword","bold":true}]}]
execute if score evilAttackData Temp matches 3 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.melee.stone_sword","bold":true}]}]
execute if score evilAttackData Temp matches 4 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.melee.iron_sword","bold":true}]}]
execute if score evilAttackData Temp matches 5 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.melee.diamond_sword","bold":true}]}]
execute if score evilAttackData Temp matches 6 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.melee.holy_sword","bold":true}]}]
execute if score evilAttackData Temp matches 7 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.enemy.221","bold":true}]}]
execute if score evilAttackData Temp matches 8 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.melee.ice_sword","bold":true}]}]
function glarth:combat/attack_init

scoreboard players set @s attack_221 0
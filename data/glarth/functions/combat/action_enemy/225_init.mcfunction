scoreboard players set @s tbcAttack 225
execute if score evilAttackData Temp matches 1 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.throwable.egg","bold":true}]}]
execute if score evilAttackData Temp matches 2 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.throwable.snowball","bold":true}]}]
execute if score evilAttackData Temp matches 3 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.throwable.ink_sac","bold":true}]}]
execute if score evilAttackData Temp matches 4 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.throwable.pumpkin","bold":true}]}]
execute if score evilAttackData Temp matches 5 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.throwable.tophat","bold":true}]}]
execute if score evilAttackData Temp matches 6 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.throwable.witchhat","bold":true}]}]
execute if score evilAttackData Temp matches 7 run tellraw @a ["",{"nbt":"ArmorItems[0].tag.CustomName","entity":"@s","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.throwable.spider_eye","bold":true}]}]
function glarth:combat/attack_init

scoreboard players set @s attack_225 0
scoreboard players set r Random 7
function glarth:util/rand_tbc
execute if score n Random matches 1 run scoreboard players set r Random 10
execute if score n Random matches 2..3 run scoreboard players set r Random 20
execute if score n Random matches 4..6 run scoreboard players set r Random 30
execute if score n Random matches 7 run scoreboard players set r Random 1
function glarth:util/rand_tbc
scoreboard players set armorReduction tbcStats -1
execute if score @s tbcArmor >= n Random if score @s tbcArmor matches 11..16 run scoreboard players remove damageDis tbcStats 1
execute if score @s tbcArmor >= n Random if score @s tbcArmor matches 11..16 run scoreboard players set armorReduction tbcStats 1
execute if score @s tbcArmor >= n Random if score @s tbcArmor matches 17..22 run scoreboard players remove damageDis tbcStats 2
execute if score @s tbcArmor >= n Random if score @s tbcArmor matches 17..22 run scoreboard players set armorReduction tbcStats 2
execute if score @s tbcArmor >= n Random if score @s tbcArmor matches 23..28 run scoreboard players remove damageDis tbcStats 3
execute if score @s tbcArmor >= n Random if score @s tbcArmor matches 23..28 run scoreboard players set armorReduction tbcStats 3
execute if score @s tbcArmor >= n Random if score @s tbcArmor matches 29.. run scoreboard players remove damageDis tbcStats 4
execute if score @s tbcArmor >= n Random if score @s tbcArmor matches 29.. run scoreboard players set armorReduction tbcStats 4

execute if score damageDis tbcStats matches ..0 run scoreboard players remove armorReduction tbcStats 1
execute if score damageDis tbcStats matches ..0 run scoreboard players add damageDis tbcStats 1
execute if score damageDis tbcStats matches ..0 run scoreboard players remove armorReduction tbcStats 1
execute if score damageDis tbcStats matches ..0 run scoreboard players add damageDis tbcStats 1
execute if score damageDis tbcStats matches ..0 run scoreboard players remove armorReduction tbcStats 1
execute if score damageDis tbcStats matches ..0 run scoreboard players add damageDis tbcStats 1
execute if score damageDis tbcStats matches ..0 run scoreboard players remove armorReduction tbcStats 1
execute if score damageDis tbcStats matches ..0 run scoreboard players add damageDis tbcStats 1
execute if score damageDis tbcStats matches ..0 run scoreboard players remove armorReduction tbcStats 1
execute if score damageDis tbcStats matches ..0 run scoreboard players add damageDis tbcStats 1


execute if score armorReduction tbcStats matches 0 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@e[tag=tbcTurn,type=!player]","interpret":true},{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@e[tag=tbcTurn,type=player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.armor","with":[[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":"±","color":"red"}]}]
execute if score armorReduction tbcStats matches 1 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@e[tag=tbcTurn,type=!player]","interpret":true},{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@e[tag=tbcTurn,type=player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.armor","with":[[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":"1","color":"red"}]}]
execute if score armorReduction tbcStats matches 2 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@e[tag=tbcTurn,type=!player]","interpret":true},{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@e[tag=tbcTurn,type=player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.armor","with":[[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":"2","color":"red"}]}]
execute if score armorReduction tbcStats matches 3 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@e[tag=tbcTurn,type=!player]","interpret":true},{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@e[tag=tbcTurn,type=player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.armor","with":[[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":"3","color":"red"}]}]
execute if score armorReduction tbcStats matches 4 run tellraw @a ["",{"nbt":"ArmorItems[0].components.minecraft:custom_data.CustomName","entity":"@e[tag=tbcTurn,type=!player]","interpret":true},{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@e[tag=tbcTurn,type=player]","interpret":true},{"text":" >> ","color":"gray"},{"translate":"tbc.msg.armor","with":[[{"nbt":"EnderItems[{Slot:0b}].components.minecraft:custom_data.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":"4","color":"red"}]}]
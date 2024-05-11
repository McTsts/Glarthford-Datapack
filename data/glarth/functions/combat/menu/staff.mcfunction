function glarth:combat/menu/util/get
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. run scoreboard players operation attackType tbcStats = A tbcAttackParamX
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. run scoreboard players operation attackStrength tbcStats = B tbcAttackParamX
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. run scoreboard players operation attackElement tbcStats = C tbcAttackParamX
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. run scoreboard players set @s lastAttack 2
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 1..2 run scoreboard players set @s lastAttackData 1
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 3..4 run scoreboard players set @s lastAttackData 2
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 5..6 run scoreboard players set @s lastAttackData 3
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 7..8 run scoreboard players set @s lastAttackData 4
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 9..10 run scoreboard players set @s lastAttackData 5
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 11 run scoreboard players set @s lastAttackData 1
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 12 run scoreboard players set @s lastAttackData 6
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 13 run scoreboard players set @s lastAttackData 7
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 14 run scoreboard players set @s lastAttackData 6
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 15 run scoreboard players set @s lastAttackData 7
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:8}] run scoreboard players set T tbcAttackParamX 0
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches -1 run function glarth:combat/menu/util/invalid
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 1 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.damage_staff","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 2 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.chaos_staff","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 3 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.water_staff","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 4 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.ice_staff","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 5 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.fire_staff","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 6 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.inferno_staff","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 7 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.wind_staff","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 8 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.thunder_staff","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 9 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.earth_staff","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 10 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.darkness_staff","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 11 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.old_staff","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 12 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.poison_staff","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 13 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.bee_staff","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 14 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.pollution_staff","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 15 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.staff.angry_bee_staff","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. unless score tbcUnlocked Stats matches 5 run scoreboard players remove @s tbcStamina 5
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score tbcUnlocked Stats matches 5 run scoreboard players remove @s tbcStamina 7
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. run function glarth:combat/action/staff_init

execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:8}] run scoreboard players set @s tbcMenuX 0

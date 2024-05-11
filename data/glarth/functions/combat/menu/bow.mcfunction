function glarth:combat/menu/util/get
execute as @s[scores={tbcCarrot=1..}] if score @s tbcArrow matches 1.. if score T tbcAttackParamX matches 1.. run scoreboard players operation attackType tbcStats = A tbcAttackParamX
execute as @s[scores={tbcCarrot=1..}] if score @s tbcArrow matches 1.. if score T tbcAttackParamX matches 1.. run scoreboard players operation attackStrength tbcStats = B tbcAttackParamX
execute as @s[scores={tbcCarrot=1..}] if score @s tbcArrow matches 1.. if score T tbcAttackParamX matches 1.. run scoreboard players operation attackFire tbcStats = C tbcAttackParamX
execute as @s[scores={tbcCarrot=1..}] if score @s tbcArrow matches 1.. if score T tbcAttackParamX matches 1.. run scoreboard players operation attackArrows tbcStats = D tbcAttackParamX
execute as @s[scores={tbcCarrot=1..}] if score @s tbcArrow matches 1.. if score T tbcAttackParamX matches 1.. run scoreboard players set @s lastAttack 3
execute as @s[scores={tbcCarrot=1..}] if score @s tbcArrow matches 1.. if score T tbcAttackParamX matches 1.. run scoreboard players set @s lastAttackCount 0
execute as @s[scores={tbcCarrot=1..}] if score @s tbcArrow matches 1.. if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 1 run scoreboard players set @s lastAttackData 1
execute as @s[scores={tbcCarrot=1..}] if score @s tbcArrow matches 1.. if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 2 run scoreboard players set @s lastAttackData 3
execute as @s[scores={tbcCarrot=1..}] if score @s tbcArrow matches 1.. if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 3..4 run scoreboard players set @s lastAttackData 2
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:8}] if score @s tbcArrow matches 1.. run scoreboard players set T tbcAttackParamX 0
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches -1 run function glarth:combat/menu/util/invalid
execute as @s[scores={tbcCarrot=1..}] if score @s tbcArrow matches 1.. if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 1 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.bow.default","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score @s tbcArrow matches 1.. if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 2 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.bow.dockmaster","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score @s tbcArrow matches 1.. if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 3 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.bow.crossbow","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score @s tbcArrow matches 1.. if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 4 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.bow.crossbow_multi","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score @s tbcArrow matches 1.. if score T tbcAttackParamX matches 1.. run scoreboard players remove @s tbcStamina 4
execute as @s[scores={tbcCarrot=1..}] if score @s tbcArrow matches 1.. if score T tbcAttackParamX matches 1.. run function glarth:combat/action/bow_init

execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:8}] run scoreboard players set @s tbcMenuX 0

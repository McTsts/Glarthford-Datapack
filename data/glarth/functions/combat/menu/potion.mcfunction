function glarth:combat/menu/util/get
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. run scoreboard players operation attackType tbcStats = A tbcAttackParamX
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. run function glarth:combat/remove/potion
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score enemiesAll tbcStats matches 2.. run scoreboard players add @s tbcQueueX 12
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score enemiesAll tbcStats matches 2.. run scoreboard players remove @e[tag=tbcEnemy,sort=random,limit=1] 4
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score enemiesAll tbcStats matches 3.. run scoreboard players remove @e[tag=tbcEnemy,sort=random,limit=1] 4
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score enemiesAll tbcStats matches 4.. run scoreboard players remove @e[tag=tbcEnemy,sort=random,limit=1] 4
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score enemiesAll tbcStats matches 5.. run scoreboard players remove @e[tag=tbcEnemy,sort=random,limit=1] 4
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. at @s run playsound minecraft:entity.generic.drink master @a ~ ~ ~ 1 0.9
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:8}] run scoreboard players set T tbcAttackParamX 0
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches -1 run function glarth:combat/menu/util/invalid
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 1 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.potion.leaping","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 2 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.potion.swiftness","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 3 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.potion.fire_resistance","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 4 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.potion.energizing","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 5 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.potion.healing","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 6 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.potion.strong_healing","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 7 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.potion.water","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 8 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.potion.milk","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 1 run scoreboard players add @s tbcEfJump 6
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 2 run scoreboard players add @s tbcEfSpeed 6
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 3 run scoreboard players add @s tbcFireResis 6
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 4 run scoreboard players add @s tbcEfJump 3
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 4 run scoreboard players add @s tbcEfSpeed 1
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 4 run scoreboard players add @s tbcRegeneration 2
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 5 run scoreboard players add @s tbcHealth 6
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 6 run scoreboard players add @s tbcHealth 12
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 7 run scoreboard players set @s tbcFire 0
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 8 run scoreboard players set @s tbcWither 0
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 8 run scoreboard players set @s tbcPoison 0
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 8 run scoreboard players set @s tbcBlindness 0
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 8 run scoreboard players set @s tbcInfection 0
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. run function glarth:combat/done

execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:8}] run scoreboard players set @s tbcMenuX 0

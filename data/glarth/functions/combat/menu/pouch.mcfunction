function glarth:combat/menu/util/get
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. run scoreboard players operation attackType tbcStats = A tbcAttackParamX
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. run function glarth:combat/remove/food
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. at @s unless entity @s[nbt={SelectedItemSlot:8}] run playsound minecraft:entity.generic.eat master @s ~ ~ ~ 1 0.9
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score enemiesAll tbcStats matches 2.. run scoreboard players add @s tbcQueueX 12
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score enemiesAll tbcStats matches 2.. run scoreboard players add @e[tag=tbcNoFoodSpeedup] tbcQueue 12
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. run scoreboard players operation @s tbcStamina += B tbcAttackParamX
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. run scoreboard players set @s lastAttack 5
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 1..3 run scoreboard players set @s lastAttackData 1
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 4..14 run scoreboard players set @s lastAttackData 2
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 15..21 run scoreboard players set @s lastAttackData 3
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 22..24 run scoreboard players set @s lastAttackData 4
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 25..26 run scoreboard players set @s lastAttackData 5
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 27..30 run scoreboard players set @s lastAttackData 2
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 31 run scoreboard players set @s lastAttackData 3
execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:8}] run scoreboard players set T tbcAttackParamX 0
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches -1 run function glarth:combat/menu/util/invalid
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 1 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.spider_eye","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 2 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.poisonous_potato","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 3 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.rotten_flesh","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 4 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.chicken","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 5 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.beetroot","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 6 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.potato","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 7 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.cookie","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 8 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.mutton","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 9 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.cod","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 10 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.beef","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 11 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.rabbit","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 12 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.porkchop","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 13 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.carrot","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 14 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.apple","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 15 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.cooked_rabbit","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 16 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.baked_potato","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 17 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.bread","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 18 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.cooked_cod","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 19 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.golden_carrot","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 20 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.cooked_chicken","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 21 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.cooked_mutton","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 22 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.pumpkin_pie","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 23 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.cooked_beef","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 24 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.cooked_porkchop","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 25 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.golden_apple","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 26 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.enchanted_golden_apple","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 27 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.chorus_fruit","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 29 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.sweet_berries","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 30 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.salmon","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score attackType tbcStats matches 31 run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.use","with":[{"translate":"tbc.attack.pouch.cooked_salmon","bold":true}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. run tellraw @a ["",[{"nbt":"EnderItems[{Slot:0b}].tag.name","entity":"@s[type=player]","interpret":true},{"selector":"@s[type=!player]"}],{"text":" >> ","color":"gray"},{"translate":"tbc.msg.tasty","with":[{"score":{"name":"B","objective":"tbcAttackParamX"},"color":"red"}]}]
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score C tbcAttackParamX matches 1.. run scoreboard players set r Random 10
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score C tbcAttackParamX matches 1.. run function glarth:util/rand_tbc
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score C tbcAttackParamX matches 1.. if score C tbcAttackParamX >= n Random if score D tbcAttackParamX matches 1 run scoreboard players add @s tbcPoison 2
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score C tbcAttackParamX matches 1.. if score C tbcAttackParamX >= n Random if score D tbcAttackParamX matches 2 run scoreboard players add @s tbcInfection 2
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score C tbcAttackParamX matches 1.. if score C tbcAttackParamX >= n Random if score D tbcAttackParamX matches 3 run scoreboard players add @s tbcRegeneration 3
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score C tbcAttackParamX matches 1.. if score C tbcAttackParamX >= n Random if score D tbcAttackParamX matches 3 run scoreboard players add @s tbcAbsorption 4
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score C tbcAttackParamX matches 1.. if score C tbcAttackParamX >= n Random if score D tbcAttackParamX matches 4 run scoreboard players add @s tbcAbsorption 16
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score C tbcAttackParamX matches 1.. if score C tbcAttackParamX >= n Random if score D tbcAttackParamX matches 4 run scoreboard players add @s tbcRegeneration 12
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. if score C tbcAttackParamX matches 1.. if score C tbcAttackParamX >= n Random if score D tbcAttackParamX matches 4 run scoreboard players add @s tbcFireResis 10
execute as @s[scores={tbcCarrot=1..}] if score T tbcAttackParamX matches 1.. run function glarth:combat/done

execute as @s[scores={tbcCarrot=1..},nbt={SelectedItemSlot:8}] run scoreboard players set @s tbcMenuX 0
execute as @e[tag=grimsbane] at @s run summon zombie ~ ~1 ~ {CustomName:"{\"translate\":\"grimsbane\",\"color\":\"black\"}",CustomNameVisible:1,Tags:["grimsbane_boss","boss"],IsVillager:0,IsBaby:0,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:3038858}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:2444142}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:1123123},Enchantments:[{id:"protection",lvl:100}]}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"f028fdd1-68fc-4c88-b292-3bc01bb4e8f8",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjNiOWNmZjU1ZjJjNzNiYWU0YTg5Njc1OTY5NTM1N2UyMjAwMTk2YmNiYjE3OTM5MzQ2NzVhNDJjODRkMTMifX19"}]}}}}],Attributes:[{Name:generic.maxHealth,Base:20000},{Name:generic.movementSpeed,Base:0.3},{Name:generic.attackDamage,Base:5},{Name:generic.followRange,Base:100},{Name:generic.knockbackResistance,Base:1000},{Name:generic.armor,Base:100}],Health:20000.0f,Silent:1,Glowing:1b,Team:"black",PersistenceRequired:1b}
title @a title ["",{"translate":"grimsbane","color":"dark_red","bold":true}]
kill @e[tag=grimsbane]
execute as @a at @s run playsound boss4 voice @s ~ ~ ~ 0.8 1
execute as @e[tag=ender_priest] at @s run summon zombie ~ ~ ~ {IsVillager:0,IsBaby:0,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12919807}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:10821078}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8132257}}},{id:"minecraft:skull",Damage:5,Count:1b,tag:{Enchantments:[{id:"protection",lvl:1}]}}],HandItems:[{id:"minecraft:blaze_rod",Count:1b,tag:{Enchantments:[{id:"sharpness",lvl:5},{id:"knockback",lvl:2}]}},{id:"minecraft:ender_eye",Count:1b}],Attributes:[{Name:generic.maxHealth,Base:150},{Name:generic.followRange,Base:100}],Health:150.0f,PersistenceRequired:1,Silent:1,Glowing:1b,Team:"dark_purple",Tags:["boss","ender_boss"],CustomName:"{\"translate\":\"ender_priest\",\"color\":\"dark_purple\"}",CustomNameVisible:1}
title @a title ["",{"translate":"ender_priest","color":"dark_red","bold":true}]
kill @e[tag=ender_priest]
tp @a[x=218,y=29,z=-248,distance=6..,gamemode=adventure] @r[x=218,y=29,z=-248,distance=..6,gamemode=adventure]
execute as @a at @s run playsound boss3 voice @s ~ ~ ~ 0.8 1

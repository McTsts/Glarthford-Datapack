execute @e[tag=ender_boss] ~ ~ ~ summon zombie ~ ~1 ~ {IsVillager:0,IsBaby:1,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12919807}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:10821078}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8132257}}},{id:"minecraft:skull",Damage:5,Count:1b,tag:{ench:[{id:0,lvl:1}]}}],HandItems:[{id:"minecraft:blaze_rod",Count:1b,tag:{ench:[{id:16,lvl:5},{id:19,lvl:2}]}},{id:"minecraft:ender_eye",Count:1b}],Attributes:[{Name:generic.maxHealth,Base:1},{Name:generic.followRange,Base:100}],Health:1.0f,PersistenceRequired:1,Silent:1,Glowing:1b,Team:"dark_purple"}
execute @e[tag=ender_boss] ~ ~ ~ summon zombie ~ ~1 ~ {IsVillager:0,IsBaby:1,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12919807}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:10821078}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8132257}}},{id:"minecraft:skull",Damage:5,Count:1b,tag:{ench:[{id:0,lvl:1}]}}],HandItems:[{id:"minecraft:blaze_rod",Count:1b,tag:{ench:[{id:16,lvl:5},{id:19,lvl:2}]}},{id:"minecraft:ender_eye",Count:1b}],Attributes:[{Name:generic.maxHealth,Base:1},{Name:generic.followRange,Base:100}],Health:1.0f,PersistenceRequired:1,Silent:1,Glowing:1b,Team:"dark_purple"}
execute @e[tag=ender_boss] ~ ~ ~ tellraw @a[r=15] ["",{"text":"\n[","color":"dark_gray"},{"translate":"ender_priest","color":"dark_purple"},{"text":"] ","color":"dark_gray"},{"translate":"ender_priest.3","color":"gray"}]
execute @e[tag=ender_boss] ~ ~ ~ playsound ender_priest5 voice @a[r=15] ~ ~ ~ 100 1
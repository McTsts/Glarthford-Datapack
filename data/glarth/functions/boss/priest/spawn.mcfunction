execute @e[tag=ender_priest] ~ ~ ~ summon zombie ~ ~ ~ {IsVillager:0,IsBaby:0,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12919807}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:10821078}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:8132257}}},{id:"minecraft:skull",Damage:5,Count:1b,tag:{ench:[{id:0,lvl:1}]}}],HandItems:[{id:"minecraft:blaze_rod",Count:1b,tag:{ench:[{id:16,lvl:5},{id:19,lvl:2}]}},{id:"minecraft:ender_eye",Count:1b}],Attributes:[{Name:generic.maxHealth,Base:150},{Name:generic.followRange,Base:100}],Health:150.0f,PersistenceRequired:1,Silent:1,Glowing:1b,Team:"dark_purple",Tags:["boss","ender_boss"],CustomName:"Ender Priest",CustomNameVisible:1}
title @a title ["",{"translate":"ender_priest","color":"dark_red","bold":true}]
kill @e[tag=ender_priest]
tp @a[x=118,y=29,z=-248,rm=6,m=2] @r[x=118,y=29,z=-248,r=6,m=2]
execute @a ~ ~ ~ playsound boss voice @s ~ ~ ~ 0.8 1
fill 3 27 -328 3 27 -331 air
setblock 2 27 -334 minecraft:end_portal_frame facing=north
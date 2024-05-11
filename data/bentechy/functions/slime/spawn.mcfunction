execute @e[tag=slime] ~ ~ ~ summon slime ~ ~1 ~ {CustomName:"Vishnold",CustomNameVisible:1,Tags:["slime_boss","boss"],Size:5,wasOnGround:1,Attributes:[{Name:generic.armor,Base:20}]}
title @a title ["",{"translate":"slime","color":"dark_red","bold":true}]
kill @e[tag=slime]
fill 18 26 -106 13 24 -106 minecraft:iron_bars
tp @a[x=0,y=27,z=-103,rm=6,m=2] @r[x=0,y=27,z=-103,r=6,m=2]
function mctsts:mechanic/sound/slime
execute @a ~ ~ ~ playsound boss voice @s ~ ~ ~ 0.8 1
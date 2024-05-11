execute as @e[tag=slime] at @s run summon slime ~ ~1 ~ {CustomName:"{\"translate\":\"slime\",\"color\":\"green\"}",CustomNameVisible:1,Tags:["slime_boss","boss"],Size:5,wasOnGround:1,Attributes:[{Name:generic.armor,Base:20}]}
title @a title ["",{"translate":"slime","color":"dark_red","bold":true}]
kill @e[tag=slime]
fill 18 26 -106 13 24 -106 minecraft:iron_bars
tp @a[x=0,y=27,z=-103,distance=6..,gamemode=adventure] @r[x=0,y=27,z=-103,distance=..6,gamemode=adventure]
function glarth:mechanic/sound/slime
execute as @a at @s run playsound boss1 voice @s ~ ~ ~ 0.8 1
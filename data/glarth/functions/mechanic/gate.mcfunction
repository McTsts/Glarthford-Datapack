execute @e[tag=area_main] ~ ~ ~ execute @e[tag=graveyard] ~ ~ ~ execute @s[tag=a] ~ ~ ~ execute @e[tag=area_main] ~ ~ ~ testforblock -68 27 -212 lever powered=true
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ scoreboard players tag @e[tag=rose] add graveyard_open
execute @e[tag=area_main] ~ ~ ~ execute @e[tag=graveyard] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ execute @e[tag=area_main] ~ ~ ~ testforblock -68 27 -212 lever powered=true
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @e[tag=graveyard] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ tellraw @a[r=5] ["",{"text":"\n[","color":"dark_gray"},{"translate":"graveyard","color":"gray"},{"text":"] ","color":"dark_gray"},{"translate":"graveyard.2","color":"gray"}]
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @e[tag=graveyard] ~ ~ ~ execute @s[tag=!a] ~ ~ ~ playsound graveyard4 voice @a[r=5] ~ ~ ~ 100 1
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ setblock -68 27 -212 lever powered=false,facing=east

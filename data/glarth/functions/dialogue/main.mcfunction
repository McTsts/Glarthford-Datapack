scoreboard players tag @a add func {Inventory:[{id:"minecraft:chainmail_chestplate"}]}
scoreboard players tag @a add func {Inventory:[{id:"minecraft:chainmail_leggings"}]}
execute @a[tag=func] ~ ~ ~ stopsound @a[r=5] voice 
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 0 99
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/0
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 100 199
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/1
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 200 299
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/2
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 300 399
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/3
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 400 499
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/4
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 500 599
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/5
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 600 699
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/6
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 700 799
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/7
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 800 899
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/8
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 900 999
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/9
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1000 1099
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/10
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1100 1199
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/11
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1200 1299
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/12
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1300 1399
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/13
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1400 1499
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/14
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1500 1599
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/15
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1600 1699
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/16
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1700 1799
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/17
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1800 1899
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/18
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 1900 1999
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/19
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 2000 2099
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/20
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 2100 2199
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/21
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 2200 2299
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/22
execute @e[tag=area_main] ~ ~ ~ scoreboard players test time Dis 2300 2399
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[tag=func] ~ ~ ~ function mctsts:dialogue/23
scoreboard players tag @a remove func
clear @a chainmail_leggings
clear @a chainmail_chestplate


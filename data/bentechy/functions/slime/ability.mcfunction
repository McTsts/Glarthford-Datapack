scoreboard players set r Random 3
execute @e[tag=area_main] ~ ~ ~ function mctsts:util/random
execute @e[tag=area_main] ~ ~ ~ scoreboard players test n Random 1 1
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function bentechy:slime/ability1
execute @e[tag=area_main] ~ ~ ~ scoreboard players test n Random 2 2
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function bentechy:slime/ability2
execute @e[tag=area_main] ~ ~ ~ scoreboard players test n Random 3 3
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function bentechy:slime/ability3
scoreboard players reset @e[tag=slime_boss] SKBossTimer
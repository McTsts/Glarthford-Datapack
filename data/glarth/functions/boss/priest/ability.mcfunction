scoreboard players set r Random 5
function mctsts:util/random
execute @e[tag=area_main] ~ ~ ~ scoreboard players test n Random 1 1
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:boss/priest/ability1
execute @e[tag=area_main] ~ ~ ~ scoreboard players test n Random 2 2
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:boss/priest/ability2
execute @e[tag=area_main] ~ ~ ~ scoreboard players test n Random 3 3
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:boss/priest/ability3
execute @e[tag=area_main] ~ ~ ~ scoreboard players test n Random 4 4
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:boss/priest/ability4
execute @e[tag=area_main] ~ ~ ~ scoreboard players test n Random 5 5
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:boss/priest/ability5
scoreboard players reset @e[tag=ender_boss] tsTimer
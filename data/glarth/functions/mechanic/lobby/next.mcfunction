scoreboard players add quest Stats 1
execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 6 6
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ scoreboard players set quest Stats 1
function mctsts:mechanic/lobby/change
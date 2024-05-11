scoreboard players remove quest Stats 1
execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 0 0
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ scoreboard players set quest Stats 5
function mctsts:mechanic/lobby/change
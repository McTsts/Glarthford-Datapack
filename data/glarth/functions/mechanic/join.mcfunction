execute @e[tag=area_main] ~ ~ ~ scoreboard players test game Stats 0 0
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[score_edge_min=1,score_edge=1] ~ ~ ~ function mctsts:mechanic/action/lobby
execute @e[tag=area_main] ~ ~ ~ scoreboard players test game Stats 1 1
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[score_edge_min=1,score_edge=1] ~ ~ ~ function mctsts:mechanic/action/spectator

execute @e[tag=area_main] ~ ~ ~ scoreboard players test game Stats 0 0
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ execute @a[score_edgeJ_min=1,score_edgeJ=1] ~ ~ ~ function mctsts:mechanic/action/lobby

execute @a[score_edgeJ_min=1,score_edgeJ=1] ~ ~ ~ scoreboard players operation @s edgeI -= id edgeI
execute @a[score_edgeJ_min=1,score_edgeJ=1,score_edgeI_min=1] ~ ~ ~ function mctsts:mechanic/action/spectator
execute @a[score_edgeJ_min=1,score_edgeJ=1,score_edgeI=-1] ~ ~ ~ function mctsts:mechanic/action/spectator

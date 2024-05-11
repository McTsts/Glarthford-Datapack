fill 120 17 -131 125 10 -136 dirt 0 replace stonebrick
fill 120 17 -131 125 10 -136 dirt 0 replace stone
fill 120 17 -131 125 10 -136 dirt 0 replace cobblestone
fill 120 17 -131 125 10 -136 dirt 0 replace nether_wart_block
fill 120 17 -131 125 10 -136 dirt 0 replace netherrack
fill 120 17 -131 125 10 -136 dirt 0 replace end_stone
fill 120 17 -131 125 10 -136 dirt 0 replace end_bricks
fill 120 17 -131 125 10 -136 dirt 0 replace snow
fill 127 24 -138 118 18 -129 air

execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 1 1
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/lobby/1
execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 2 2
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/lobby/2
execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 3 3
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/lobby/3
execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 4 4
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/lobby/4
execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 5 5
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/lobby/5
execute @e[tag=area_main] ~ ~ ~ scoreboard players test quest Stats 6 6
execute @e[tag=area_main,score_Success_min=1] ~ ~ ~ function mctsts:mechanic/lobby/1
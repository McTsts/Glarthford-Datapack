#Scores
scoreboard players add @e[tag=!detected] Query 0
scoreboard players add @e[tag=!detected] Success 0
execute @e[tag=!detected] ~ ~ ~ stats entity @s set QueryResult @s Query
execute @e[tag=!detected] ~ ~ ~ stats entity @s set SuccessCount @s Success
scoreboard players enable @a[tag=!detected] trigger
scoreboard players enable @a[tag=!detected] sign
scoreboard players tag @e[tag=!detected] add detected
#Functions
function mctsts:mechanic/mechanic
scoreboard players add @a edge 1
execute @r[score_edgeJ_min=1,score_edgeJ=1] ~ ~ ~ function mctsts:mechanic/join
execute @r[score_edge_min=1,score_edge=1] ~ ~ ~ function mctsts:mechanic/join
execute @r ~ ~ ~ function mctsts:util/area_main

execute @e[tag=area_main] ~ ~ ~ detect 118 18 -132 air * function mctsts:mechanic/lobby/setup

scoreboard players enable MirageMaps sign
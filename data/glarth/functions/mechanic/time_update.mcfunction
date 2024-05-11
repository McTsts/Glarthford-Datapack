#Time Dis
execute @e[tag=area_main] ~ ~ ~ time query daytime
scoreboard players add @e[tag=area_main] Query 8000
scoreboard players set 10 calc 10
scoreboard players set 2400 calc 2400
scoreboard players operation @e[tag=area_main] Query /= 10 calc
scoreboard players operation @e[tag=area_main] Query %= 2400 calc
scoreboard players operation @e[tag=area_main] Query -= time Dis
execute @e[tag=area_main,score_Query_min=1,score_Query=99] ~ ~ ~ time add 23990
execute @e[tag=area_main,score_Query_min=100,score_Query=2300] ~ ~ ~ time add 23900
execute @e[tag=area_main,score_Query=-1,score_Query_min=-99] ~ ~ ~ time add 10
execute @e[tag=area_main,score_Query=-100,score_Query_min=-2300] ~ ~ ~ time add 100
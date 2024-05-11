scoreboard players set r Random 2
function mctsts:util/random
execute @s ~ ~ ~ scoreboard players test n Random 1 1
execute @s[score_Success_min=1] ~ ~ ~ playsound win1 player @s ~ ~ ~ 0.5
execute @s ~ ~ ~ scoreboard players test n Random 2 2
execute @s[score_Success_min=1] ~ ~ ~ playsound win2 player @s ~ ~ ~ 0.5


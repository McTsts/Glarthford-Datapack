scoreboard players set r Random 3
function mctsts:util/random
execute @s ~ ~ ~ scoreboard players test n Random 1 1
execute @s[score_Success_min=1] ~ ~ ~ playsound slime1 hostile @s ~ ~ ~ 0.4 
execute @s ~ ~ ~ scoreboard players test n Random 2 2
execute @s[score_Success_min=1] ~ ~ ~ playsound slime2 hostile @s ~ ~ ~ 0.4 
execute @s ~ ~ ~ scoreboard players test n Random 3 3
execute @s[score_Success_min=1] ~ ~ ~ playsound slime3 hostile @s ~ ~ ~ 0.4
scoreboard players set r Random 5
function mctsts:util/random
execute @s ~ ~ ~ scoreboard players test n Random 1 1
execute @s[score_Success_min=1] ~ ~ ~ playsound brewery1 ambient @s ~ ~ ~ 0.3
execute @s ~ ~ ~ scoreboard players test n Random 2 2
execute @s[score_Success_min=1] ~ ~ ~ playsound brewery2 ambient @s ~ ~ ~ 0.3
execute @s ~ ~ ~ scoreboard players test n Random 3 3
execute @s[score_Success_min=1] ~ ~ ~ playsound brewery3 ambient @s ~ ~ ~ 0.3
execute @s ~ ~ ~ scoreboard players test n Random 4 4
execute @s[score_Success_min=1] ~ ~ ~ playsound brewery4 ambient @s ~ ~ ~ 0.3
execute @s ~ ~ ~ scoreboard players test n Random 5 5
execute @s[score_Success_min=1] ~ ~ ~ playsound brewery5 ambient @s ~ ~ ~ 0.3




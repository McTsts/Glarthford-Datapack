scoreboard players set r Random 10
function mctsts:util/random
execute @s ~ ~ ~ scoreboard players test n Random 1 1
execute @s[score_Success_min=1] ~ ~ ~ playsound grass1 master @a ~ ~ ~ 1 1
execute @s ~ ~ ~ scoreboard players test n Random 2 2
execute @s[score_Success_min=1] ~ ~ ~ playsound grass2 master @a ~ ~ ~ 1 1
execute @s ~ ~ ~ scoreboard players test n Random 3 3
execute @s[score_Success_min=1] ~ ~ ~ playsound grass3 master @a ~ ~ ~ 1 1
execute @s ~ ~ ~ scoreboard players test n Random 4 4
execute @s[score_Success_min=1] ~ ~ ~ playsound grass4 master @a ~ ~ ~ 1 1
execute @s ~ ~ ~ scoreboard players test n Random 5 5
execute @s[score_Success_min=1] ~ ~ ~ playsound grass5 master @a ~ ~ ~ 1 1
execute @s ~ ~ ~ scoreboard players test n Random 6 6
execute @s[score_Success_min=1] ~ ~ ~ playsound grass6 master @a ~ ~ ~ 1 1
execute @s ~ ~ ~ scoreboard players test n Random 7 7
execute @s[score_Success_min=1] ~ ~ ~ playsound grass7 master @a ~ ~ ~ 1 1
execute @s ~ ~ ~ scoreboard players test n Random 8 8
execute @s[score_Success_min=1] ~ ~ ~ playsound sticks1 master @a ~ ~ ~ 1 1
execute @s ~ ~ ~ scoreboard players test n Random 9 9
execute @s[score_Success_min=1] ~ ~ ~ playsound sticks2 master @a ~ ~ ~ 1 1
execute @s ~ ~ ~ scoreboard players test n Random 10 10
execute @s[score_Success_min=1] ~ ~ ~ playsound sticks3 master @a ~ ~ ~ 1 1
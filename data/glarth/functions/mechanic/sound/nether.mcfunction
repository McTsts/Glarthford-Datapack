scoreboard players set r Random 6
function mctsts:util/random
execute @s ~ ~ ~ scoreboard players test n Random 1 1
execute @s[score_Success_min=1] ~ ~ ~ playsound nether1 ambient @s ~ ~ ~ 0.4 
execute @s ~ ~ ~ scoreboard players test n Random 2 2
execute @s[score_Success_min=1] ~ ~ ~ playsound nether2 ambient @s ~ ~ ~ 0.4 
execute @s ~ ~ ~ scoreboard players test n Random 3 3
execute @s[score_Success_min=1] ~ ~ ~ playsound nether3 ambient @s ~ ~ ~ 0.4
execute @s ~ ~ ~ scoreboard players test n Random 4 4
execute @s[score_Success_min=1] ~ ~ ~ playsound nether4 ambient @s ~ ~ ~ 0.4
execute @s ~ ~ ~ scoreboard players test n Random 5 5
execute @s[score_Success_min=1] ~ ~ ~ playsound nether5 ambient @s ~ ~ ~ 0.4 
execute @s ~ ~ ~ scoreboard players test n Random 6 6
execute @s[score_Success_min=1] ~ ~ ~ playsound nether6 ambient @s ~ ~ ~ 0.4 



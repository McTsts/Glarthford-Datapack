scoreboard players set r Random 5
function mctsts:util/random
execute @s ~ ~ ~ scoreboard players test n Random 1 1
execute @s[score_Success_min=1] ~ ~ ~ playsound waterfall1 master @a ~ ~ ~ 1 1
execute @s ~ ~ ~ scoreboard players test n Random 2 2
execute @s[score_Success_min=1] ~ ~ ~ playsound waterfall2 master @a ~ ~ ~ 1 1
execute @s ~ ~ ~ scoreboard players test n Random 3 3
execute @s[score_Success_min=1] ~ ~ ~ playsound waterfall3 master @a ~ ~ ~ 1 1
execute @s ~ ~ ~ scoreboard players test n Random 4 4
execute @s[score_Success_min=1] ~ ~ ~ playsound waterfall4 master @a ~ ~ ~ 1 1
execute @s ~ ~ ~ scoreboard players test n Random 5 5
execute @s[score_Success_min=1] ~ ~ ~ playsound waterfall5 master @a ~ ~ ~ 1 1
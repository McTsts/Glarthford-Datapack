scoreboard players set r Random 12
function mctsts:util/random
execute @s ~ ~ ~ scoreboard players test n Random 1 1
execute @s[score_Success_min=1] ~ ~ ~ playsound creepy3 ambient @a ~ ~ ~ 0.5 1
execute @s ~ ~ ~ scoreboard players test n Random 2 2
execute @s[score_Success_min=1] ~ ~ ~ playsound creepy4 ambient @a ~ ~ ~ 0.5 1
execute @s ~ ~ ~ scoreboard players test n Random 3 3
execute @s[score_Success_min=1] ~ ~ ~ playsound creepy5 ambient @a ~ ~ ~ 0.3 1
execute @s ~ ~ ~ scoreboard players test n Random 4 4
execute @s[score_Success_min=1] ~ ~ ~ playsound creepy7 ambient @a ~ ~ ~ 0.2 1
execute @s ~ ~ ~ scoreboard players test n Random 5 5
execute @s[score_Success_min=1] ~ ~ ~ playsound creepy8 ambient @a ~ ~ ~ 0.5 1
execute @s ~ ~ ~ scoreboard players test n Random 6 6
execute @s[score_Success_min=1] ~ ~ ~ playsound creepy9 ambient @a ~ ~ ~ 0.5 1
execute @s ~ ~ ~ scoreboard players test n Random 7 7
execute @s[score_Success_min=1] ~ ~ ~ playsound creepy10 ambient @a ~ ~ ~ 0.5 1
execute @s ~ ~ ~ scoreboard players test n Random 8 8
execute @s[score_Success_min=1] ~ ~ ~ playsound creepy11 ambient @a ~ ~ ~ 0.3 1
execute @s ~ ~ ~ scoreboard players test n Random 9 12
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:ambient.cave ambient @s ~ ~ ~ 0.5

scoreboard players set r Random 10
function mctsts:util/random
execute @s ~ ~ ~ scoreboard players test n Random 1 1
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.ghast.scream master @a ~ ~ ~ 0.1 0
execute @s ~ ~ ~ scoreboard players test n Random 2 2
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:block.water.ambient master @a ~ ~ ~ 1 0
execute @s ~ ~ ~ scoreboard players test n Random 3 3
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:ambient.cave master @a ~ ~ ~ 1 0
execute @s ~ ~ ~ scoreboard players test n Random 4 4
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.bat.loop master @s ~ ~ ~ 0.2
execute @s ~ ~ ~ scoreboard players test n Random 5 5
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.bat.loop ambient @s ~ ~ ~ 0.2 0
execute @s ~ ~ ~ scoreboard players test n Random 6 6
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.bat.takeoff ambient @s ~ ~ ~ 0.2 0
execute @s ~ ~ ~ scoreboard players test n Random 7 7
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:block.lava.ambient ambient @a ~ ~ ~ 0.4 0
execute @s ~ ~ ~ scoreboard players test n Random 8 8
execute @s[score_Success_min=1] ~ ~ ~ playsound creepy1 ambient @a ~ ~ ~ 0.3 1
execute @s ~ ~ ~ scoreboard players test n Random 9 9
execute @s[score_Success_min=1] ~ ~ ~ playsound creepy2 ambient @a ~ ~ ~ 0.3 1
execute @s ~ ~ ~ scoreboard players test n Random 10 10
execute @s[score_Success_min=1] ~ ~ ~ playsound creepy6 ambient @a ~ ~ ~ 0.5 1



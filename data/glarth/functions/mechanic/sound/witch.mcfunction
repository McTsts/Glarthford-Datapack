scoreboard players set r Random 7
function mctsts:util/random
execute @s ~ ~ ~ scoreboard players test n Random 1 1
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:block.brewing_stand.brew ambient @a ~ ~ ~ 0.4 0
execute @s ~ ~ ~ scoreboard players test n Random 2 2
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:block.brewing_stand.brew ambient @a ~ ~ ~ 0.4 1
execute @s ~ ~ ~ scoreboard players test n Random 3 3
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:block.brewing_stand.brew ambient @a ~ ~ ~ 0.4 2
execute @s ~ ~ ~ scoreboard players test n Random 4 4
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.witch.ambient ambient @a ~ ~ ~ 0.4 1
execute @s ~ ~ ~ scoreboard players test n Random 5 5
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.witch.drink ambient @a ~ ~ ~ 0.4 1
execute @s ~ ~ ~ scoreboard players test n Random 6 6
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:block.portal.trigger ambient @a ~ ~ ~ 0.1 0
execute @s ~ ~ ~ scoreboard players test n Random 7 7
execute @s[score_Success_min=1] ~ ~ ~ playsound minecraft:entity.wolf.howl ambient @s ~ ~ ~ 0.1 1




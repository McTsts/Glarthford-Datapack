scoreboard players test k Random 2
execute @s[score_Success_min=1] ~ ~ ~ execute @r[type=armor_stand,tag=util_random] ~ ~ ~ function mctsts:util/kill
execute @s[score_Success_min=1] ~ ~ ~ scoreboard players remove k Random 1
execute @s[score_Success_min=1] ~ ~ ~ function mctsts:util/random/kill
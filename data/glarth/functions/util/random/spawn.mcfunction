stats entity @s set SuccessCount @s Success
scoreboard players test t Random 1
execute @s[score_Success_min=1] ~ ~ ~ summon armor_stand ~ 0 ~ {Tags:["util_random","util_random_new"],Marker:1,Invisible:1,NoGravity:1}
scoreboard players operation @e[tag=util_random_new] Random = t Random
scoreboard players tag @e[tag=util_random_new] remove util_random_new
scoreboard players test t Random 2
execute @s[score_Success_min=1] ~ ~ ~ scoreboard players remove t Random 1
execute @s[score_Success_min=1] ~ ~ ~ function mctsts:util/random/spawn
summon area_effect_cloud ~ 0 ~ {Tags:["random"]}
execute store result score n Random run data get entity @e[tag=random,limit=1,type=area_effect_cloud] UUID[0]
scoreboard players operation n Random %= r Random
scoreboard players add n Random 1
kill @e[tag=random,type=area_effect_cloud]
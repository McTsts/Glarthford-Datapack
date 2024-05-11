stats entity @s set SuccessCount @s Success
scoreboard players add @s Success 0
execute @s ~ ~ ~ testfor @e[tag=area_main]
execute @s[score_Success=0] ~ ~ ~ summon minecraft:area_effect_cloud 7 30 -196 {Radius:0.5f,Duration:2147483647,Particle:"take",Tags:["area_main"],CustomName:"Main",CustomNameVisible:0}
execute @s ~ ~ ~ testfor @e[tag=area_main]
execute @s[score_Success_min=2] ~ ~ ~ kill @r[type=!Player,tag=area_main]
tag @p[gamemode=adventure] add temp
tp @p[tag=temp] -89 40 -226 180 0
playsound minecraft:creepy6 master @p[tag=temp] ~ ~ ~ 1 2 1
tag @a remove temp
scoreboard players remove tick Dis 3600
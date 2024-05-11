execute @e[tag=roberto_boss] ~ ~ ~ summon minecraft:evocation_fangs ~2 26 ~
execute @e[tag=roberto_boss] ~ ~ ~ summon minecraft:evocation_fangs ~-2 26 ~
execute @e[tag=roberto_boss] ~ ~ ~ summon minecraft:evocation_fangs ~ 26 ~-2
execute @e[tag=roberto_boss] ~ ~ ~ summon minecraft:evocation_fangs ~ 26 ~2
scoreboard players reset @e[tag=roberto_boss] SKBossTimer
execute @e[tag=roberto_boss] ~ ~ ~ tellraw @a[r=15] ["",{"text":"\n[","color":"dark_gray"},{"translate":"roberto","color":"black"},{"text":"] ","color":"dark_gray"},{"translate":"roberto.1","color":"gray"}]
playsound roberto2 voice @a[r=5] ~ ~ ~ 100 1
execute as @a at @s if block ~ 0 ~ brown_concrete if block ~ ~ ~ water unless block ~ ~1 ~ air run effect give @s minecraft:dolphins_grace 3 5 true
execute as @a at @s if block ~ 0 ~ brown_concrete if block ~ ~ ~ water unless block ~ ~1 ~ air run effect give @s minecraft:water_breathing 3 5 true
execute as @a at @s if block ~ 0 ~ brown_concrete unless block ~ ~ ~ water run effect clear @s minecraft:water_breathing
execute as @a at @s if block ~ 0 ~ brown_concrete unless block ~ ~ ~ water run effect clear @s minecraft:dolphins_grace 


execute as @e[type=minecraft:fishing_bobber] at @s facing entity @e[tag=diamond,tag=pickupItem] feet rotated ~ 0 positioned 0.0 0.0 0.0 positioned ^ ^ ^0.25 run summon marker ~ ~ ~ {Tags:["fishingBobberPos"]}
execute as @e[type=minecraft:fishing_bobber] run data modify entity @s Motion set from entity @e[type=marker,tag=fishingBobberPos,limit=1] Pos
kill @e[type=marker,tag=fishingBobberPos]